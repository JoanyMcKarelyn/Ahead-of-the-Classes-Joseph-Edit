local skillModule = include("OtherSkills.skillModule")
local presetClasses = require("Danae.Classes.presetClasses")
local customClasses = require("Danae.Classes.customClasses")
local config = require("Danae.Classes.config").config

local function modifyCustomSkills(customSkillList)
    if not customSkillList then return end
    if not skillModule then return end
    for _, customSkill in pairs(customSkillList) do
        local skill = skillModule.getSkill(customSkill.skillId)
        if skill then skill:levelUpSkill(customSkill.value) end
    end
end

local function addSpells(spellList)
    for _, spell in ipairs(spellList) do
        tes3.addSpell({reference = tes3.player, spell = spell})
    end
end

local function addGear(gearList)
    for _, gear in ipairs(gearList) do
        if gear.item and tes3.getObject(gear.item) then
            tes3.addItem {
                reference = tes3.player,
                item = gear.item,
                count = gear.count,
                updateGUI = false,
                playSound = false
            }
        else
            mwse.log("%s does not exist", gear.item)
        end
    end
    tes3ui.forcePlayerInventoryUpdate()

    -- Equip everything in inventory
    timer.delayOneFrame(function()
        for _, stack in pairs(tes3.player.object.inventory) do
            local itemObject = stack.object
            if (itemObject.objectType == tes3.objectType.armor or
                itemObject.objectType == tes3.objectType.weapon or
                itemObject.objectType == tes3.objectType.clothing) then
                tes3.mobilePlayer:equip{item = itemObject, playSound = false}
            end
        end
        tes3.messageBox("Class based equipment and spells added.")
    end)
end

local function startClass()
    local class = tes3.player.object.class.id
    local starters
    --[[Joseph Edit: the preset loadouts are for Better Character Classes only]]
    if tes3.isModActive("Better Character Classes.esp") and
        presetClasses.pickStarters[class] then
        starters = presetClasses.pickStarters[class]()
    else
        starters = customClasses.pickStarters()
    end
    addSpells(starters.spellList)
    addGear(starters.gearList)
    modifyCustomSkills(starters.customSkillList)
end

local charGen
local newGame
local checkingChargen
local function checkCharGen()
    if charGen.value == 10 then
        newGame = true
    elseif newGame and charGen.value == -1 then
        checkingChargen = false
        event.unregister("simulate", checkCharGen)
        timer.start {
            type = timer.simulate,
            duration = 0.7, -- If clashes with char backgrounds, mess with this
            callback = startClass
        }
    end
end

local function loaded()
    newGame = nil -- reset so we can check chargen state again
    charGen = tes3.findGlobal("CharGenState")
    -- Only reregister if necessary. If new game was started during
    --  chargen of previous game, this will already be running
    if not checkingChargen then
        event.register("simulate", checkCharGen)
        checkingChargen = true
    end
end
event.register("loaded", function() if config.modEnabled then loaded() end end)

local function modConfig()
    local template = mwse.mcm.createTemplate("Ahead of the Classes")
    template.onClose = function() config.save() end
    template:register()
    local page = template:createSideBarPage({
        label = "Ahead of the Classes",
        description = ("This mod is a lite version of Danae and Merlord's Ahead of the Classes, " ..
            "with compatibility for Better Character Classes, " ..
            "and without all the new playable classes and TR OAAB dependency." ..
            "\n" .. "\n" ..
            "The loadouts have been changed to better suit BTBGI. " ..
            "The average budget is 185 gold, with lowest being 50 and the highest being 500. " ..
            "Every vanilla playable class has 2 loadouts to randomly pick from. " ..
            "All modded gear has been removed or replaced by vanilla items/spells.")
    });
    page:createOnOffButton({
        label = "Ahead of the Classes",
        description = ("Whether you want it or not, you don't need to uninstall this mod. "),
        variable = mwse.mcm.createTableVariable {
            id = "modEnabled",
            table = config
        }
    });
end
event.register("modConfigReady", modConfig)
