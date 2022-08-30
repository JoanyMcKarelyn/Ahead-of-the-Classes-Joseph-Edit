return {
    [tes3.skill.block] = function() return {gearList = {}, spellList = {}} end,
    [tes3.skill.armorer] = function() return {gearList = {}, spellList = {}} end,
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
        else
            table.insert(gearList, {item = "iron_bracer_left"})
            table.insert(gearList, {item = "iron_bracer_right"})
            table.insert(gearList, {item = "iron_greaves"})
        end
        return {gearList = gearList, spellList = {}}
    end,
    [tes3.skill.bluntWeapon] = function()
        if tes3.mobilePlayer.strength.base > tes3.mobilePlayer.intelligence.base then
            return {gearList = {{item = "spiked club"}}, spellList = {}}
        else
            return {gearList = {{item = "wooden staff"}}, spellList = {}}
        end
    end,
    [tes3.skill.longBlade] = function()
        local longBlade = table.choice({"iron broadsword", "iron longsword"})
        return {gearList = {{item = longBlade}}, spellList = {}}
    end,
    [tes3.skill.axe] = function()
        local axe = table.choice({"iron war axe", "chitin war axe"})
        return {gearList = {{item = axe}}, spellList = {}}
    end,
    [tes3.skill.spear] = function()
        return {gearList = {{item = "chitin spear"}}, spellList = {}}
    end,
    [tes3.skill.enchant] = function() return {gearList = {}, spellList = {}} end,
    [tes3.skill.destruction] = function()
        local destructionSpell = table.choice({
            "frostbite", "dread curse: health", "Frostball_large"
        })
        return {gearList = {}, spellList = {item = destructionSpell}}
    end,
    [tes3.skill.alteration] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.illusion] = function() return {gearList = {}, spellList = {}} end,
    [tes3.skill.conjuration] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.mysticism] = function()
        local choice = math.random()
        if choice > 0.75 then
            return {gearList = {}, spellList = {{item = "sotha's mirror"}}}
        elseif choice > 0.5 then
            return {gearList = {}, spellList = {{item = "mark", "recall"}}}
        elseif choice > 0.25 then
            return {
                gearList = {},
                spellList = {{item = "sotha's mirror", "mark"}}
            }
        else
            return {gearList = {}, spellList = {{item = "slave belt", "mark"}}}
        end
    end,
    [tes3.skill.restoration] = function()
        if math.random() > 0.5 then
            return {gearList = {}, spellList = {"seryn's gift", "cure poison"}}
        else
            return {
                gearList = {
                    {item = "p_restore_health_c", count = 5},
                    {item = "p_restore_fatigue_b"}
                },
                spellList = {}
            }
        end
    end,
    [tes3.skill.alchemy] = function() return {gearList = {}, spellList = {}} end,
    [tes3.skill.security] = function()
        local gearList = {{item = "pick_apprentice_01"}}
        if math.random() > 0.5 then
            table.insert(gearList, {item = "probe_apprentice_01"})
        end
        return {gearList = gearList, spellList = {}}
    end,
    [tes3.skill.sneak] = function() return {gearList = {}, spellList = {}} end,
    [tes3.skill.lightArmor] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.8 then
            table.insert(gearList, {item = "netch_leather_cuirass"})
            table.insert(gearList, {item = "netch_leather_greaves"})
            table.insert(gearList, {item = "fur_boots"})
        elseif choice > 0.6 then
            table.insert(gearList, {item = "netch_leather_gauntlet_left"})
            table.insert(gearList, {item = "netch_leather_greaves"})
        elseif choice > 0.4 then
            table.insert(gearList, {item = "netch_leather_cuirass"})
            table.insert(gearList, {item = "netch_leather_boots"})
        elseif choice > 0.2 then
            table.insert(gearList, {item = "netch_leather_boots"})
        else
            table.insert(gearList, {item = "chitin greaves"})
            table.insert(gearList, {item = "chitin boots"})
            table.insert(gearList, {item = "chitin guantlet - left"})
            table.insert(gearList, {item = "chitin guantlet - right"})
        end
        return {gearList = gearList, spellList = {}}
    end,
    [tes3.skill.shortBlade] = function()
        local shortBlade = table.choice({
            "iron tanto", "iron dagger", "chitin dagger", "silver dagger",
            "steel tanto", "fireblade"
        })
        return {gearList = {{item = shortBlade}}, spellList = {}}
    end,
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
    end,
    [tes3.skill.mercantile] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.handToHand] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.unarmored] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.acrobatics] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.athletics] = function()
        return {gearList = {}, spellList = {}}
    end,
    [tes3.skill.mediumArmor] = function()
        local gearList = {}
        local choice = math.random()
        if choice > 0.66 then
            table.insert(gearList, {item = "imperial_chain_coif_helm"})
        elseif choice > 0.33 then
            table.insert(gearList, {item = "imperial_chain_cuirass"})
            table.insert(gearList, {item = "imperial_chain_greaves"})
            table.insert(gearList, {item = "BM bear boots"})
        else
            table.insert(gearList, {item = "BM bear boots"})
        end
        return {gearList = gearList, spellList = {}}
    end,
    [tes3.skill.speechcraft] = function()
        local instrument = table.choice({"misc_de_drum_01", "misc_de_lute_01"})
        return {gearList = {{item = instrument}}, spellList = {}}
    end
}
