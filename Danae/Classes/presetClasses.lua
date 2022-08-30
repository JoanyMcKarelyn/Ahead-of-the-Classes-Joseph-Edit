local this = {}
--[[
    Functions for each class return
    gear list of item objects
]]
this.pickStarters = {
    ["Acrobat"] = function()
        --[[Acrobat

Attributes: Agility / Speed
Specialization: Stealth

Majors:Acrobatics, Athletics, Marksman, Sneak, Unarmored
Minors: Speechcraft, Alteration, Security, Hand-to-Hand, Illusion]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "common_shirt_02_t"}, -- 4g
                    {item = "short bow"}, -- 100g, lvl 10
                    {item = "iron arrow", count = 40} -- 40g, lvl 10
                }, -- 150g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "BardicInspiration:Performance", value = 5},
                    {skillId = "climbing", value = 15}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "common_shirt_02"}, -- 4g
                    {item = "long bow"}, -- 250g, lvl 10
                    {item = "iron arrow", count = 50}, -- 50g, lvl 10
                    {item = "random gold", count = 42} -- 42g
                }, -- 350g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "BardicInspiration:Performance", value = 5},
                    {skillId = "climbing", value = 15}
                }
            }
        end
    end,

    ["Agent"] = function()
        --[[Agent

Attributes: Personality / Agility
Specialization: Stealth

Majors: Speechcraft, Sneak, Alchemy, Light Armor, Short Blade
Minors: Mercantile, Destruction, Block, Security, Illusion]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "netch_leather_cuirass"}, -- 100g, lvl 5
                    {item = "netch_leather_greaves"}, -- 50g, lvl 5
                    {item = "fur_boots"}, -- 10g, lvl 5
                    {item = "common_pants_03_b"}, -- 4g
                    {item = "iron tanto"}, -- 75g, lvl 10
                    {item = "random gold", count = 11} -- 11g
                }, -- 250g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "BardicInspiration:Performance", value = 5},
                    {skillId = "climbing", value = 15}
                }
            }
        else
            return {
                gearList = {
                    {item = "netch_leather_gauntlet_left"}, -- 25g, lvl 5
                    {item = "netch_leather_greaves"}, -- 50g, lvl 5
                    {item = "common_shirt_03_c"}, -- 4g
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "common_amulet_01"}, -- 2g
                    {item = "iron dagger"}, -- 10g, lvl 5
                    {item = "random gold", count = 5} -- 5g
                }, -- 100g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "BardicInspiration:Performance", value = 5},
                    {skillId = "climbing", value = 15}
                }
            }
        end
    end,

    ["Archer"] = function()
        --[[Archer

Attributes: Agility / Strength
Specialization: Combat

Majors: Marksman, Short Blade, Sneak, Athletics, Medium Armor
Minors: Armorer, Security, Restoration, Block, Mercantile]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_shirt_04"}, -- 4g
                    {item = "chitin arrow", count = 40}, -- 40g, lvl 5
                    {item = "common_shoes_04"}, -- 2g
                    {item = "common_pants_04"}, -- 4g
                    {item = "chitin short bow"}, -- 20g, lvl 5
                    {item = "random gold", count = 30} -- 30g
                }, -- 100g
                spellList = {},
                customSkillList = {
                    {skillId = "fletching", value = 15},
                    {skillId = "mc_Fletching", value = 15}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_shirt_03_c"}, -- 4g
                    {item = "chitin arrow", count = 40}, -- 40g, lvl 5
                    {item = "BM bear boots"}, -- 50g, lvl 5
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "chitin short bow"}, -- 20g, lvl 5
                    {item = "chitin dagger"}, -- 6g, lvl 5
                    {item = "random gold", count = 26} -- 26g
                }, -- 150g
                spellList = {},
                customSkillList = {
                    {skillId = "fletching", value = 15},
                    {skillId = "mc_Fletching", value = 15}
                }
            }
        end
    end,

    ["Assassin"] = function()
        --[[Assassin

Attributes: Strength / Intelligence
Specialization: Stealth

Majors: Sneak, Marksman, Unarmored, Short Blade, Illusion
Minors: Security, Alchemy, Enchant, Destruction, Athletics
]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "chitin throwing star", count = 20}, -- 60g, lvl 5
                    {item = "chitin dagger"}, -- 6g, lvl 5
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "probe_apprentice_01"}, -- 10g
                    {item = "pick_apprentice_01"}, -- 10g
                    {item = "random gold", count = 4} -- 4g
                }, -- 100g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 5}}
            }
        else
            return {
                gearList = {
                    {item = "silver dagger"}, -- 40g, lvl 30
                    {item = "random gold", count = 60} -- 10g
                }, -- 50g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 5}}
            }
        end
    end,

    ["Barbarian"] = function()
        --[[
Barbarian

Attributes: Strength / Speed
Specialization: Combat

Majors: Axe, Light Armor, Blunt Weapon, Athletics, Block
Minors: Armorer, Acrobatics, Sneak, Marksman, Mysticism
]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "iron war axe"}, -- 75g, lvl 5
                    {item = "netch_leather_cuirass"}, -- 100g, lvl 5
                    {item = "netch_leather_boots"}, -- 50g, lvl 5
                    {item = "common_pants_02"}, -- 4g
                    {item = "random gold", count = 21} -- 21g
                }, -- 250g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "Bushcrafting", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "spiked club"}, -- 18g, lvl 5
                    {item = "chitin greaves"}, -- 100g, lvl 20
                    {item = "chitin boots"}, -- 100g, lvl 20
                    {item = "chitin guantlet - left"}, -- 50g, lvl 20
                    {item = "chitin guantlet - right"}, -- 50g, lvl 20
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "random gold", count = 28} -- 28g
                }, -- 350g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "Bushcrafting", value = 5}
                }
            }
        end
    end,

    ["Bard"] = function()
        --[[Bard

Attributes: Personality / Intelligence
Specialization: Stealth

Majors: Speechcraft, Unarmored, Alchemy, Long Blade, Block
Minors: Mercantile, Illusion, Sneak, Enchant, Security]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shoes_05"}, -- 2g
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_belt_02"}, -- 2g
                    {item = "misc_de_drum_01"}, -- 1g
                    {item = "random gold", count = 37} -- 37g
                }, -- 50g
                spellList = {},
                customSkillList = {
                    {skillId = "common.inscriptionSkillId", value = 5},
                    {skillId = "mc_Crafting", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_skirt_01"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "common_shirt_05"}, -- 4g
                    {item = "misc_de_lute_01"}, -- 10g
                    {item = "iron longsword"}, -- 120g, lvl 10
                    {item = "random gold", count = 10} -- 10g
                }, -- 150g
                spellList = {},
                customSkillList = {
                    {skillId = "common.inscriptionSkillId", value = 5},
                    {skillId = "mc_Crafting", value = 5}
                }
            }
        end
    end,

    ["Battlemage"] = function()
        --[[Battlemage

Attributes: Intelligence / Endurance
Specialization: Magic

Majors: Alteration, Destruction, Conjuration, Block, Heavy Armor
Minors: Mysticism, Spear, Axe, Enchant, Restoration]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "chitin spear"}, -- 13g, lvl 5
                    {item = "common_robe_01"}, -- 2g
                    {item = "imperial boots"}, -- 50g, lvl 20
                    {item = "random gold", count = 18} -- 18g
                },
                spellList = {
                    "frostbite" -- 117g
                }, -- 200g
                customSkillList = {
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "iron war axe"}, -- 75g, lvl 5
                    {item = "common_pants_04_b"}, -- 4g
                    {item = "iron boots"}, -- 10g, lvl 5
                    {item = "iron cuirass"}, -- 25g, lvl 5
                    {item = "random gold", count = 48} -- 48g
                },
                spellList = {
                    "dread curse: health" -- 69g
                }, -- 250g
                customSkillList = {
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        end
    end,

    ["Crusader"] = function()
        --[[Crusader

Attributes: Willpower / Strength
Specialization: Combat

Majors: Blunt Weapon, Long Blade, Restoration, Heavy Armor, Block
Minors: Speechcraft, Armorer, Alteration, Mercantile, Alchemy]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "iron broadsword"}, -- 30g, lvl 5
                    {item = "extravagant_pants_02"}, -- 60g
                    {item = "expensive_shoes_03"}, -- 10g
                    {item = "expensive_shirt_03"}, -- 15g
                    {item = "random gold", count = 135} -- 135g
                }, -- 250g
                spellList = {},
                customSkillList = {{skillId = "daedricSkillId", value = 10}}
            }
        else
            return {
                gearList = {
                    {item = "iron longsword"}, -- 120g, lvl 10
                    {item = "imperial boots"}, -- 50g, lvl 20
                    {item = "imperial left gauntlet"}, -- 33g, lvl 20
                    {item = "random gold", count = 48} -- 48g
                }, -- 250g
                spellList = {},
                customSkillList = {{skillId = "daedricSkillId", value = 10}}
            }
        end
    end,

    ["Healer"] = function()
        --[[Healer

Attributes: Willpower / Personality
Specialization: Magic

Majors: Restoration, Mysticism, Alteration, Hand-to-Hand, Blunt Weapon
Minors: Illusion, Alchemy, Unarmored, Speechcraft, Enchant]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_skirt_03"}, -- 4g
                    {item = "common_shirt_04"}, -- 4g
                    {item = "random gold", count = 12} -- 12g
                },
                spellList = {
                    "seryn's gift", -- 115g
                    "cure poison" -- 115g
                }, -- 250g
                customSkillList = {{skillId = "daedricSkillId", value = 10}}
            }
        else
            return {
                gearList = {
                    {item = "p_restore_health_c", count = 5}, -- 100g
                    {item = "p_restore_fatigue_b"}, -- 10g
                    {item = "common_skirt_01"}, -- 4g
                    {item = "common_shirt_02_r"}, -- 4g
                    {item = "sc_summonskeletalservant"}, -- 50g
                    {item = "common_shoes_05"}, -- 2g
                    {item = "wooden staff"}, -- 8g, lvl 5
                    {item = "random gold", count = 7} -- 7g
                },
                spellList = {
                    "sotha's mirror" -- 115g
                }, -- 300g
                customSkillList = {{skillId = "daedricSkillId", value = 10}}
            }
        end
    end,

    ["Knight"] = function()
        --[[Knight

Attributes: Strength / Endurance
Specialization: Combat

Majors: Long Blade, Axe, Armorer, Heavy Armor, Block
Minors: Restoration, Mercantile, Athletics, Acrobatics, Speechcraft]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "iron_gauntlet_left"}, -- 10g, lvl 5
                    {item = "iron_gauntlet_right"}, -- 10g, lvl 5
                    {item = "common_pants_04"}, -- 4g
                    {item = "common_shoes_04"}, -- 2g
                    {item = "common_shirt_05"}, -- 4g
                    {item = "iron war axe"}, -- 75g, lvl 5
                    {item = "random gold", count = 45} -- 45g
                }, -- 150g
                spellList = {}
            }
        else
            return {
                gearList = {
                    {item = "iron_bracer_left"}, -- 5g, lvl 5
                    {item = "iron_bracer_right"}, -- 5g, lvl 5
                    {item = "iron_greaves"}, -- 10g, lvl 5
                    {item = "common_belt_03"}, -- 2g
                    {item = "chitin war axe"}, -- 19g, lvl 5
                    {item = "random gold", count = 59} -- 59g
                }, -- 100g
                spellList = {}
            }
        end
    end,

    ["Mage"] = function()
        --[[Mage

Attributes: Intelligence / Willpower
Specialization: Magic

Majors: Mysticism, Destruction, Alteration, Illusion, Restoration
Minors: Enchant, Alchemy, Unarmored, Conjuration, Blunt Weapon]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_robe_05_b"}, -- 4g
                    {item = "random gold", count = 27} -- 27g
                },
                spellList = {
                    "Frostball_large" -- 269g
                }, -- 300g
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_robe_02_t"}, -- 4g
                    {item = "random gold", count = 27} -- 27g
                },
                spellList = {
                    "Frostball_large" -- 269g
                }, -- 300g
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        end
    end,

    ["Monk"] = function()
        --[[Monk

Attributes: Agility / Willpower
Specialization: Stealth

Majors: Hand-to-Hand, Unarmored, Alteration, Mysticism, Blunt Weapon
Minors: Illusion, Marksman, Athletics, Restoration, Sneak]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_robe_01"}, -- 4g
                    {item = "random gold", count = 7} -- 7g
                },
                spellList = {
                    "slave belt", -- 22g
                    "mark" -- 67g 
                }, -- 100g
                customSkillList = {
                    {skillId = "MSS:Staff", value = 10},
                    {skillId = "climbing", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "common_shirt_03_c"}, -- 4g
                    {item = "common_shoes_03"}, -- 2g
                    {item = "random gold"} -- 1g
                },
                spellList = {
                    "slave belt", -- 22g
                    "mark" -- 67g 
                }, -- 100g
                customSkillList = {
                    {skillId = "MSS:Staff", value = 10},
                    {skillId = "climbing", value = 5}
                }
            }
        end
    end,

    ["Nightblade"] = function()
        --[[Nightblade

Attributes: Willpower / Speed
Specialization: Magic

Majors: Mysticism, Illusion, Destruction, Sneak, Short Blade
Minors: Light Armor, Block, Alteration, Security, Armorer]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "iron dagger"}, -- 10g, lvl 5
                    {item = "common_shirt_03_c"}, -- 4g
                    {item = "common_shoes_04"}, -- 2g
                    {item = "random gold", count = 15} -- 15g
                },
                spellList = {
                    "Frostball_large" -- 269g
                } -- 300g
            }
        else
            return {
                gearList = {
                    {item = "steel tanto"}, -- 200g, lvl 20
                    {item = "common_shirt_02_h"}, -- 4g
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "random gold", count = 40} -- 40g
                }, -- 250g
                spellList = {}
            }
        end
    end,

    ["Pilgrim"] = function()
        --[[Pilgrim

Attributes: Personality / Luck
Specialization: Stealth

Majors: Speechcraft, Mercantile, Mysticism, Restoration, Medium Armor
Minors: Illusion, Armorer, Short Blade, Marksman, Alchemy]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "random gold"} -- 1g
                },
                spellList = {
                    "slave belt", -- 22g
                    "mark" -- 67g 
                }, -- 100g
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "daedricSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_belt_01"}, -- 2g
                    {item = "common_shoes_05"}, -- 2g
                    {item = "random gold", count = 5} -- 5g
                },
                spellList = {
                    "slave belt", -- 22g
                    "mark" -- 67g 
                }, -- 100g
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "daedricSkillId", value = 5}
                }
            }
        end
    end,

    ["Rogue"] = function()
        --[[Rogue

Attributes: Speed / Personality
Specialization: Combat

Majors: Long Blade, Mercantile, Axe, Light Armor, Speechcraft
Minors: Block, Sneak, Security, Alchemy, Armorer]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_shoes_04"}, -- 2g
                    {item = "pick_apprentice_01"}, -- 10g
                    {item = "iron broadsword"} -- 30g, lvl 5
                }, -- 50g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "daedricSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "netch_leather_cuirass"}, -- 100g, lvl 5
                    {item = "netch_leather_boots"}, -- 50g, lvl 5
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shirt_02_hh"}, -- 4g
                    {item = "iron longsword"}, -- 120g, lvl 20
                    {item = "random gold", count = 22} -- 22g
                }, -- 300g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 5},
                    {skillId = "daedricSkillId", value = 5}
                }
            }
        end
    end,

    ["Scout"] = function()
        --[[Scout

Attributes: Speed / Endurance
Specialization: Combat

Majors: Sneak, Long Blade, Light Armor, Athletics, Block
Minors: Marksman, Alchemy, Mercantile, Armorer, Speechcraft]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "p_restore_health_b", count = 2}, -- 20g
                    {item = "p_fire_shield_s"}, -- 50g
                    {item = "iron longsword"}, -- 120g, lvl 10
                    {item = "long bow"}, -- 250g, lvl 10
                    {item = "iron arrow", count = 60} -- 60g, lvl 10
                }, -- 500g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 10},
                    {skillId = "climbing", value = 5},
                    {skillId = "Bushcrafting", value = 10}
                }
            }
        else
            return {
                gearList = {
                    {item = "netch_leather_boots"}, -- 50g, lvl 5
                    {item = "common_pants_04"}, -- 2g
                    {item = "iron broadsowrd"}, -- 30g, lvl 5
                    {item = "random gold", count = 18} -- 18g
                }, -- 200g
                spellList = {},
                customSkillList = {
                    {skillId = "Ashfall:Survival", value = 10},
                    {skillId = "climbing", value = 5},
                    {skillId = "Bushcrafting", value = 10}
                }
            }
        end
    end,

    ["Sorcerer"] = function()
        --[[Sorcerer

Attributes: Intelligence / Endurance
Specialization: Magic

Majors: Medium Armor, Conjuration, Mysticism, Destruction, Enchant
Minors: Illusion, Alteration, Block, Armorer, Short Blade]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "random gold", count = 14} -- 14g
                },
                spellList = {
                    "mark", -- 67g 
                    "recall", -- 67g 
                    "weary" -- 202g
                }, -- 100g
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "imperial_chain_coif_helm"}, -- 35g, lvl 10
                    {item = "extravagant_shirt_02"}, -- 60g
                    {item = "random gold", count = 23} -- 23g
                },
                spellList = {
                    "mark", -- 67g 
                    "sotha's mirror" -- 115g
                }, -- 300g
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        end
    end,

    ["Spellsword"] = function()
        --[[Spellsword

Attributes: Willpower / Endurance
Specialization: Magic

Majors: Destruction, Alteration, Long Blade, Light Armor, Block
Minors: Blunt Weapon, Enchant, Alchemy, Mysticism, Restoration
]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "common_pants_02"}, -- 4g
                    {item = "common_shirt_02_t"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "common_belt_02"}, -- 2g
                    {item = "iron longsword"}, -- 120g, lvl 10
                    {item = "random gold", count = 18} -- 18g
                }, -- 150g
                spellList = {},
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        else
            return {
                gearList = {
                    {item = "common_robe_02_tt"}, -- 2g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "random gold", count = 46} -- 46g
                }, -- 50g
                spellList = {},
                customSkillList = {
                    {skillId = "daedricSkillId", value = 10},
                    {skillId = "common.inscriptionSkillId", value = 5}
                }
            }
        end
    end,

    ["Thief"] = function()
        --[[Thief

Attributes: Speed / Luck
Specialization: Stealth

Majors: Security, Sneak, Acrobatics, Light Armor, Short Blade
Minors: Marksman, Speechcraft, Illusion, Mercantile, Athletics]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "chitin dagger"}, -- 6g, lvl 5
                    {item = "common_shirt_05"}, -- 4g
                    {item = "common_pants_03_c"}, -- 4g
                    {item = "netch_leather_boots"}, -- 50g, lvl 5
                    {item = "random_gold", count = 46} -- 46g
                }, -- 100g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        else
            return {
                gearList = {
                    {item = "fireblade"}, -- 375g, lvl 30
                    {item = "common_shirt_02_h"}, -- 4g
                    {item = "common_shoes_02"}, -- 2g
                    {item = "random_gold", count = 20} -- 19g
                }, -- 400g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        end
    end,

    ["Warrior"] = function()
        --[[Warrior

Attributes: Strength / Endurance
Specialization: Combat

Majors: Axe, Spear, Heavy Armor, Long Blade, Block
Minors: Armorer, Athletics, Acrobatics, Mercantile, Alchemy]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "chitin spear"}, -- 13g, lvl 5
                    {item = "common_shirt_04"}, -- 4g
                    {item = "common_pants_02"}, -- 4g
                    {item = "random_gold", count = 29} -- 29g
                }, -- 50g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        else
            return {
                gearList = {
                    {item = "chitin spear"}, -- 13g, lvl 5
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_pants_05"}, -- 4g
                    {item = "iron_gauntlet_left"}, -- 10g, lvl 5
                    {item = "iron_gauntlet_right"}, -- 10g, lvl 5
                    {item = "common_shoes_04"}, -- 2g
                    {item = "random_gold", count = 7} -- 7g
                }, -- 50g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        end
    end,

    ["Witchhunter"] = function()
        --[[Witchhunter

Attributes: Intelligence / Luck
Specialization: Magic

Majors: Conjuration, Enchant, Alchemy, Blunt Weapon, Marksman
Minors: Medium Armor, Block, Armorer, Speechcraft, Mysticism]]
        if math.random() < 0.5 then
            return {
                gearList = {
                    {item = "long bow"}, -- 250g, lvl 10
                    {item = "common_shoes_03"}, -- 2g
                    {item = "common_shirt_02"}, -- 4g
                    {item = "common_pants_02"}, -- 4g
                    {item = "chitin arrow", count = 40} -- 40g, lvl 5
                }, -- 300g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        else
            return {
                gearList = {
                    {item = "chitin short bow"}, -- 10g, lvl 5
                    {item = "iron arrow", count = 50}, -- 50g, lvl 10
                    {item = "imperial_chain_cuirass"}, -- 90g, lvl 10
                    {item = "imperial_chain_greaves"}, -- 50g, lvl 10
                    {item = "BM bear boots"}, -- 50g, lvl 20
                    {item = "common_skirt_02"}, -- 4g
                    {item = "wooden staff"}, -- 8g, lvl 5
                    {item = "common_shirt_02"}, -- 4g
                    {item = "random_gold", count = 34} -- 34g
                }, -- 50g
                spellList = {},
                customSkillList = {{skillId = "climbing", value = 15}}
            }
        end
    end
}

return this
