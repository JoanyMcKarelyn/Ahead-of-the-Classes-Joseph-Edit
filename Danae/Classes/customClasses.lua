local this = {}

local skillMapping = require("Danae.Classes.skillMapping")

local weaponSkills = {
    [tes3.skill.shortBlade] = true,
    [tes3.skill.longBlade] = true,
    [tes3.skill.marksman] = true,
    [tes3.skill.bluntWeapon] = true,
    [tes3.skill.axe] = true,
    [tes3.skill.spear] = true
}
--[[ Joseph Edit: Normally, skills start at level 5. 
    Here, 0 is used as a flag for true. ]]
local armorSkills = {
    [tes3.skill.unarmored] = 0,
    [tes3.skill.lightArmor] = 0,
    [tes3.skill.mediumArmor] = 0,
    [tes3.skill.heavyArmor] = 0
}

function this.pickStarters()
    -- Get list of major/minor skills

    -- find at least one weapon skill
    -- find at least one armor skill

    --[[ add items for mostly major skills, except security]]
    local gearList = {}
    local spellList = {}
    local majorSkills = tes3.player.object.class.majorSkills
    local minorSkills = tes3.player.object.class.minorSkills
    local topSkills = {}
    for _, skill in ipairs(majorSkills) do table.insert(topSkills, skill) end
    for _, skill in ipairs(minorSkills) do table.insert(topSkills, skill) end

    local gearCount = 0

    ---@param skill number
    local function getGear(skill)
        gearCount = gearCount + 1
        local skillList = skillMapping[skill]()
        if skillList then
            for _, gear in ipairs(skillList.gearList) do
                table.insert(gearList, gear)
            end
            --[[ Joseph Edit: Only schools of majorSkills can addSpell because spells are expensive. ]]
            for _, spell in ipairs(skillList.spellList) do
                table.insert(spellList, spell)
            end
        end
    end

    local hasMajorWeaponSkill = false
    local hasMinorWeaponSkill = false
    local hasMajorArmorSkill = false
    local hasMinorArmorSkill = false

    ---@type number[]
    local minorWeaponSkills = {}

    -- Get major skill gears
    for _, skill in ipairs(majorSkills) do
        if skillMapping[skill] then getGear(skill) end
        if (not hasMajorWeaponSkill) and weaponSkills[skill] then
            hasMajorWeaponSkill = true
        end
        --[[ armorSkills[skill] == 0 means this skill is an armor skill ]]
        if (not hasMajorArmorSkill) and armorSkills[skill] == 0 then
            hasMajorArmorSkill = true
        end
    end

    -- Get minor skill gears
    for _, skill in ipairs(minorSkills) do
        --[[ Joseph Edit: 50 percent chance of getting a lockpick and/or a probe if security is a minor skill ]]
        if skill == tes3.skill.security then
            local choice = math.random()
            if choice > 0.5 then getGear(skill) end
            --[[ Joseph Edit: Only if majorSkills don't have any of the weaponSkills,
        will minorSkills addGear to make sure player get at least one weapon, 
        if minorSkills have any of the weaponSkills. ]]
        elseif (not hasMajorWeaponSkill) and weaponSkills[skill] then
            table.insert(minorWeaponSkills, skill)
            hasMinorWeaponSkill = true
        elseif (not hasMajorArmorSkill) and armorSkills[skill] == 0 then
            --[[ set armorSkills[skill] to the value of the armor skill if they are minor skills ]]
            armorSkills[skill] = tes3.mobilePlayer:getSkillValue(skill)
            hasMinorArmorSkill = true
        end
    end
    if not hasMajorWeaponSkill and hasMinorWeaponSkill then
        local choice = math.random(#minorWeaponSkills)
        local minorWeaponSkill = minorWeaponSkills[choice]
        getGear(minorWeaponSkill)
    end
    if not hasMajorArmorSkill and hasMinorArmorSkill then
        -- hasMinorArmorSkill is true means at least one armor skill value is not 0
        local bestMinorArmorSkill = tes3.skill.unarmored
        for skill, value in pairs(armorSkills) do
            if value > tes3.mobilePlayer:getSkillValue(bestMinorArmorSkill) then
                bestMinorArmorSkill = skill
            end
        end
        getGear(bestMinorArmorSkill)
    end

    --[[ Joseph Edit: random clothing ]]
    local clothingChoice = math.random(1, 5)
    if clothingChoice == 1 then
        if math.random() > 0.5 then
            table.insert(gearList, {item = "common_pants_03_b"})
        end
    elseif clothingChoice == 2 then
        if math.random() > 0.5 then
            table.insert(gearList, {item = "common_shirt_02_t"})
            table.insert(gearList, {item = "common_pants_02"})
            table.insert(gearList, {item = "common_shoes_02"})
        else
            table.insert(gearList, {item = "common_shirt_02"})
            table.insert(gearList, {item = "common_pants_03_c"})
        end
    elseif clothingChoice == 3 then
        if math.random() > 0.5 then
            table.insert(gearList, {item = "common_shirt_03_c"})
            table.insert(gearList, {item = "common_pants_03_c"})
            table.insert(gearList, {item = "common_amulet_01"})
        else
            table.insert(gearList, {item = "expensive_shirt_03"})
            table.insert(gearList, {item = "extravagant_pants_02"})
            table.insert(gearList, {item = "expensive_shoes_03"})
        end
    elseif clothingChoice == 4 then
        table.insert(gearList, {item = "common_shirt_04"})
        if math.random() > 0.5 then
            table.insert(gearList, {item = "common_pants_04"})
            table.insert(gearList, {item = "common_shoes_04"})
        else
            table.insert(gearList, {item = "common_skirt_03"})
        end
    elseif clothingChoice == 5 then
        table.insert(gearList, {item = "common_shirt_05"})
        if math.random() > 0.5 then
            table.insert(gearList, {item = "common_skirt_01"})
            table.insert(gearList, {item = "common_shoes_02"})
        else
            table.insert(gearList, {item = "common_pants_04"})
            table.insert(gearList, {item = "common_shoes_04"})
        end
    end

    --[[ Joseph Edit: random gold ]]
    table.insert(gearList, {item = "gold_001", count = math.random(42)})

    --[[ Joseph Edit: add a robe if player specializes in magic ]]
    if tes3.player.object.class.specialization == tes3.specialization.magic then
        local robes = {
            "common_robe_01", "common_robe_02_t", "common_robe_02_tt",
            "common_robe_05_b"
        }
        local robe = robes[math.random(#robes)]
        mwse.log("Adding robe %s.", robe)
        table.insert(gearList, {item = robe})
    end

    return {gearList = gearList, spellList = spellList}
end

return this
