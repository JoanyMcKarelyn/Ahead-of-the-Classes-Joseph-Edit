return {
    [tes3.skill.block] = function() return {gearList = {}, spellList = {}} end, -- 0
    [tes3.skill.armorer] = function() return {gearList = {}, spellList = {}} end, -- 1
    [tes3.skill.mediumArmor] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.75 then
            table.insert(gearList, {item = "imperial_chain_coif_helm"})
        elseif choice > 0.5 then
            table.insert(gearList, {item = "bonemold_bracer_left"})
            table.insert(gearList, {item = "imperial_chain_greaves"})
            table.insert(gearList, {item = "BM bear boots"})
        elseif choice > 0.25 then
            table.insert(gearList, {item = "BM bear boots"})
        end
        return {gearList = gearList, spellList = {}}
    end, -- 2
    [tes3.skill.heavyArmor] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.83 then
            table.insert(gearList, {item = "iron_cuirass"})
        elseif choice > 0.66 then
            table.insert(gearList, {item = "iron_gauntlet_left"})
            table.insert(gearList, {item = "iron_gauntlet_right"})
        elseif choice > 0.5 then
            table.insert(gearList, {item = "imperial boots"})
        elseif choice > 0.33 then
            table.insert(gearList, {item = "iron boots"})
            table.insert(gearList, {item = "iron cuirass"})
        elseif choice > 0.16 then
            table.insert(gearList, {item = "imperial boots"})
            table.insert(gearList, {item = "imperial left gauntlet"})
        end
        return {gearList = gearList, spellList = {}}
    end, -- 3
    [tes3.skill.bluntWeapon] = function()
        if math.random() < 0.66 then
            if tes3.mobilePlayer.strength.base >
                tes3.mobilePlayer.intelligence.base then
                return {gearList = {{item = "spiked club"}}, spellList = {}}
            else
                return {gearList = {{item = "wooden staff"}}, spellList = {}}
            end
        end
    end, -- 4
    [tes3.skill.longBlade] = function()
        local longBlade = {"iron broadsword", "iron longsword", ""}
        return {
            gearList = {{item = longBlade[math.random(#longBlade)]}},
            spellList = {}
        }
    end, -- 5
    [tes3.skill.axe] = function()
        local axe = {"iron war axe", "chitin war axe", ""}
        return {gearList = {{item = axe[math.random(#axe)]}}, spellList = {}}
    end, -- 6
    [tes3.skill.spear] = function()
        return {gearList = {{item = "chitin spear"}}, spellList = {}}
    end, -- 7
    [tes3.skill.athletics] = function()
        return {gearList = {}, spellList = {}}
    end, -- 8
    [tes3.skill.enchant] = function() return {gearList = {}, spellList = {}} end, -- 9
    [tes3.skill.destruction] = function()
        local destructionSpell = {
            "frostbite", "dread curse: health", "Frostball_large", "weary", ""
        }
        return {
            gearList = {},
            spellList = {destructionSpell[math.random(#destructionSpell)]}
        }
    end, -- 10
    [tes3.skill.alteration] = function()
        return {gearList = {}, spellList = {}}
    end, -- 11
    [tes3.skill.illusion] = function() return {gearList = {}, spellList = {}} end, -- 12
    [tes3.skill.conjuration] = function()
        return {gearList = {}, spellList = {}}
    end, -- 13
    [tes3.skill.mysticism] = function()
        local choice = math.random()
        if choice > 0.8 then
            return {gearList = {}, spellList = {"sotha's mirror"}}
        elseif choice > 0.6 then
            return {gearList = {}, spellList = {"mark", "recall"}}
        elseif choice > 0.4 then
            return {gearList = {}, spellList = {"sotha's mirror", "mark"}}
        elseif choice > 0.2 then
            return {gearList = {}, spellList = {"slave belt", "mark"}}
        end
    end, -- 14
    [tes3.skill.restoration] = function()
        if math.random() > 0.66 then
            return {gearList = {}, spellList = {"seryn's gift", "cure poison"}}
        elseif math.random() > 0.33 then
            return {
                gearList = {
                    {item = "p_restore_health_c", count = 5},
                    {item = "p_restore_fatigue_b"}
                },
                spellList = {}
            }
        end
    end, -- 15
    [tes3.skill.alchemy] = function() return {gearList = {}, spellList = {}} end, -- 16
    [tes3.skill.unarmored] = function()
        return {gearList = {}, spellList = {}}
    end, -- 17
    [tes3.skill.security] = function()
        local gearList = {{item = "pick_apprentice_01"}}
        if math.random() > 0.5 then
            table.insert(gearList, {item = "probe_apprentice_01"})
        end
        return {gearList = gearList, spellList = {}}
    end, -- 18
    [tes3.skill.sneak] = function() return {gearList = {}, spellList = {}} end, -- 19
    [tes3.skill.acrobatics] = function()
        return {gearList = {}, spellList = {}}
    end, -- 20
    [tes3.skill.lightArmor] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.83 then
            table.insert(gearList, {item = "netch_leather_cuirass"})
            table.insert(gearList, {item = "netch_leather_greaves"})
            table.insert(gearList, {item = "fur_boots"})
        elseif choice > 0.66 then
            table.insert(gearList, {item = "netch_leather_gauntlet_left"})
            table.insert(gearList, {item = "netch_leather_greaves"})
        elseif choice > 0.5 then
            table.insert(gearList, {item = "netch_leather_cuirass"})
            table.insert(gearList, {item = "netch_leather_boots"})
        elseif choice > 0.33 then
            table.insert(gearList, {item = "netch_leather_boots"})
        elseif choice > 0.16 then
            table.insert(gearList, {item = "chitin greaves"})
            table.insert(gearList, {item = "chitin boots"})
            table.insert(gearList, {item = "chitin guantlet - left"})
            table.insert(gearList, {item = "chitin guantlet - right"})
        end
        return {gearList = gearList, spellList = {}}
    end, -- 21
    [tes3.skill.shortBlade] = function()
        local shortBlade = {
            "iron tanto", "iron dagger", "chitin dagger", "silver dagger",
            "steel tanto", "fireblade", ""
        }
        return {
            gearList = {{item = shortBlade[math.random(#shortBlade)]}},
            spellList = {}
        }
    end, -- 22
    [tes3.skill.marksman] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.83 then
            table.insert(gearList, {item = "short bow"})
            table.insert(gearList, {item = "iron arrow", count = 40})
        elseif choice > 0.66 then
            table.insert(gearList, {item = "long bow"})
            table.insert(gearList, {item = "iron arrow", count = 50})
        elseif choice > 0.5 then
            table.insert(gearList, {item = "chitin short bow"})
            table.insert(gearList, {item = "chitin arrow", count = 40})
        elseif choice > 0.33 then
            table.insert(gearList, {item = "chitin throwing star", count = 20})
        elseif choice > 0.16 then
            table.insert(gearList, {item = "long bow"})
            table.insert(gearList, {item = "chitin arrow", count = 40})
        else
            table.insert(gearList, {item = "chitin short bow"})
            table.insert(gearList, {item = "iron arrow", count = 50})
        end
        return {gearList = gearList, spellList = {}}
    end, -- 23
    [tes3.skill.mercantile] = function()
        return {gearList = {}, spellList = {}}
    end, -- 24
    [tes3.skill.speechcraft] = function()
        local instrument = {"misc_de_drum_01", "misc_de_lute_01", ""}
        return {
            gearList = {{item = instrument[math.random(#instrument)]}},
            spellList = {}
        }
    end, -- 25
    [tes3.skill.handToHand] = function()
        return {gearList = {}, spellList = {}}
    end -- 26
}
