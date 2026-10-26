--- Filter Title: Zexylol's Hardfilter v2.2
--- Filter Type: (Hardconfig filter)
--- Filter Description: \nReworked with new adjustmens \nFilter to remove non perfect superior bases. \nThis filter removes alot of items, and will continue to expand on that front. \nAll Uniques Max stat is done, all stats <70% hidden (outside of towns)!.\nThis does not include ED% (damage or defense), and not bonus damage on wep and bonus armor on armors.(will need to figure this out later.)
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Zexylol%20filter.lua
local UniDropLoc = {"onground", "onplayer","equipped"}
local UniMaxBor = {165,146,099,230}
local NotAreaTown = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"}
local MaxTag = "\n {red} Maxed Stats"
local T = true
local F = false

-- =============================================================================
-- Master Value for Uniques. DO NOT TOUCH, except to add: custom_suffix = "text", To Uniques.
-- Need stat index and min / max values.
-- =============================================================================
local UniqueItemData = {
  [6] = {
    name = "The Gnasher",
    stats = {
    {id = {85,34,35}, min = 2, max = 5},  -- +2-5% to Experience Gained,Damage Reduced by 2-5,Magic Damage Reduced by 2-5
    }
    },
  [7] = {
    name = "Deathspade",
    stats = {
    {id = {85,35}, min = 2, max = 5},  -- +2-5% to Experience Gained,Magic Damage Reduced by 2-5
    }
    },
  [8] = {
    name = "Bladebone",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 4, max = 8},  -- Damage Reduced by 4-8,Magic Damage Reduced by 4-8
    }
    },
  [9] = {
    name = "Skull Splitter",
    stats = {
    {id = 51, min = 12, max = 15},  -- Adds 1-12/15 Lighting Damage
    {id = 19, min = 50, max = 100},  -- +50-100 to Attack Rating
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 3, max = 7},  -- Magic Damage Reduced by 3-7
    }
    },
  [10] = {
    name = "Rakescar",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 4, max = 8},  -- Damage Reduced by 4-8,Magic Damage Reduced by 4-8
    }
    },
  [11] = {
    name = "Axe of Fechmar",
    stats = {
    {id = {34,35}, min = 3, max = 5},  -- Damage Reduced by 3-5,Magic Damage Reduced by 3-5
    }
    },
  [12] = {
    name = "Goreshovel",
    stats = {
    {id = {34,35}, min = 2, max = 6},  -- Damage Reduced by 2-6,Magic Damage Reduced by 2-6
    }
    },
  [13] = {
    name = "The Cheiftain",
    stats = {
    {id = 39, min = 10, max = 20},  -- All Resistances +10-20%
    {id = {34,35}, min = 3, max = 7},  -- Damage Reduced by 3-7,Magic Damage Reduced by 3-7
    }
    },
  [14] = {
    name = "Brainhew",
    stats = {
    {id = 62, min = 10, max = 13},  -- +10-13% Mana stolen per hit
    {id = {34,35}, min = 6, max = 9},  -- Damage Reduced by 6-9,Magic Damage Reduced by 6-9
    }
    },
  [15] = {
    name = "Humongous",
    stats = {
    {id = 0, min = 20, max = 30},  -- +20-30 Strength
    {id = {34,35}, min = 8, max = 10},  -- Damage Reduced by 8-10,Magic Damage Reduced by 8-10
    }
    },
  [16] = {
    name = "Torch of Iro",
    stats = {
    {id = 39, min = 5, max = 10},  -- Fire Resist +5-10%
    }
    },
  [17] = {
    name = "Maelstrom",
    stats = {
    {id = 357, min = 5, max = 10},  -- +5-10% to Magic Skill Damage
    {id = 97, min = 1, max = 3, param = {77,71,74}},  -- +1-3 to Terror,+1-3 to Dim Vision,+1-3 to Corpse Explosion
    }
    },
  [18] = {
    name = "Gravenspine",
    stats = {
    {id = 284, min = 10, max = 20},  -- Summon Max HP: +10-20%
    {id = 9, min = 25, max = 50},  -- +25-50 to Mana
    {id = 97, min = 1, max = 2, param = 87},  -- +1-2 to Decrepify
    }
    },
  [19] = {
    name = "Ume's Lament",
    stats = {
    {id = 97, min = 1, max = 2, param = 87},  -- +1-2 to Decrepify
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [20] = {
    name = "Felloak",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [21] = {
    name = "Knell Striker",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [22] = {
    name = "Rusthandle",
    stats = {
    {id = 122, min = 50, max = 60},  -- +50-60% Damage to Undead
    {id = 107, min = 1, max = 3, param = 111},  -- +1-3 to Vengeance (Paladin only)
    }
    },
  [23] = {
    name = "Stormeye",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 107, min = 3, max = 5, param = 112},  -- +3-5 to Blessed Hammer (Paladin only)
    }
    },
  [24] = {
    name = "Stoutnail",
    stats = {
    {id = 78, min = 3, max = 10},  -- Attacker Takes Damage of 3-10
    }
    },
  [25] = {
    name = "Crushflange",
    stats = {
    {id = 34, min = 2, max = 4},  -- Damage Reduced by 2-4
    }
    },
  [26] = {
    name = "Bloodrise",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 34, min = 4, max = 6},  -- Damage Reduced by 4-6
    }
    },
  [27] = {
    name = "The General's Tan Do Li Ga",
    stats = {
    {id = 34, min = 4, max = 6},  -- Damage Reduced by 4-6
    }
    },
  [28] = {
    name = "Ironstone",
    stats = {
    {id = 19, min = 100, max = 150},  -- +100-150 to Attack Rating
    {id = 34, min = 7, max = 10},  -- Damage Reduced by 7-10
    }
    },
  [29] = {
    name = "Bonesnap",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 4, max = 6},  -- Damage Reduced by 4-6, Magic Damage Reduced by 4-6
    }
    },
  [30] = {
    name = "Steeldriver",
    stats = {
    {id = {34,35}, min = 7, max = 9},  -- Damage Reduced by 7-9, Magic Damage Reduced by 7-9
    }
    },
  [31] = {
    name = "Rixot's Keen",
    stats = {
    {id = 34, min = 1, max = 3},  -- Damage Reduced by 1-3
    }
    },
  [32] = {
    name = "Blood Crescent",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 34, min = 2, max = 4},  -- Damage Reduced by 2-4
    }
    },
  [33] = {
    name = "Krintiz's Skewer",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 34, min = 2, max = 6},  -- Damage Reduced by 2-6
    }
    },
  [34] = {
    name = "Gleamscythe",
    stats = {
    {id = 34, min = 3, max = 6},  -- Damage Reduced by 3-6
    }
    },
  [35] = {
    name = "Light's Beacon",
    stats = {
    {id = {329,331,330}, min = 5, max = 10},  -- +5-10% to Fire Skill Damage, +5-10% to Cold Skill Damage, +5-10% to Lightning Skill Damage
    {id = 35, min = 7, max = 12},  -- Magic Damage Reduced by 7-12
    }
    },
  [36] = {
    name = "Griswold's Edge",
    stats = {
    {id = 48, min = 10, max = 12},  -- +10-12 to Minimum Fire Damage
    {id = 49, min = 15, max = 25},  -- +15-25 to Maximum Fire Damage
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [37] = {
    name = "Hellplague",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 4, max = 6},  -- Magic Damage Reduced by 4-6
    }
    },
  [38] = {
    name = "Culwen's Point",
    stats = {
    {id = 34, min = 4, max = 7},  -- Damage Reduced by 4-7
    }
    },
  [39] = {
    name = "Shadowfang",
    stats = {
    {id = {85,35}, min = 2, max = 5},  -- +2-5% to Experience Gained, Magic Damage Reduced by 3-5
    }
    },
  [40] = {
    name = "Soulflay",
    stats = {
    {id = 62, min = 4, max = 10},  -- 4-10% Mana stolen per hit
    {id = {85,34}, min = 2, max = 5},  -- +2-5% to Experience Gained, Damage Reduced by 2-5
    }
    },
  [41] = {
    name = "Kinemil's Awl",
    stats = {
    {id = 19, min = 100, max = 150},  -- +100-150 to Attack Rating
    {id = 49, min = 20, max = 40},  -- +20-40 to Maximum Fire Damage
    {id = 34, min = 6, max = 8},  -- Damage Reduced by 6-8
    }
    },
  [42] = {
    name = "Blacktongue",
    stats = {
    {id = 35, min = 6, max = 8},  -- Magic Damage Reduced by 6-8
    }
    },
  [43] = {
    name = "Ripsaw",
    stats = {
    {id = 135, min = 15, max = 35},  -- +15-35% Chance of Open Wounds
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 6, max = 8},  -- Magic Damage Reduced by 6-8
    }
    },
  [44] = {
    name = "The Patriarch",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [45] = {
    name = "Gull",
    stats = {
    {id = 80, min = 50, max = 100},  -- +50-100% Chance of Higher Quality Items
    }
    },
  [46] = {
    name = "The Diggler",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [47] = {
    name = "The Jade Tan Do",
    stats = {
    {id = 19, min = 100, max = 150},  -- +100-150 to Attack Rating
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {400,401}, min = 1, max = 3},  -- Increase Curse Duration by 1-3 seconds, Increase Curse Radius by 1-3 units
    }
    },
  [48] = {
    name = "Spectral Shard",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {400,401}, min = 1, max = 3},  -- Increase Curse Duration by 1-3 seconds, Increase Curse Radius by 1-3 units
    }
    },
  [49] = {
    name = "Shadow Strike",
    stats = {
    {id = {150,119}, min = 5, max = 15},  -- Slows Target by 5-15%, 10-15% Bonus to Attack Rating
    {id = 19, min = 15, max = 30},  -- +15-30 to Attack Rating
    }
    },
  [50] = {
    name = "Madawc's First",
    stats = {
    {id = 93, min = 10, max = 15},  -- +10-15% Increased Attack Speed
    }
    },
  [51] = {
    name = "Carefully",
    stats = {
    {id = {116,141}, min = 15, max = 20},  -- -15-20% Target Defense, 15-20% Deadly Strike
    {id = 136, min = 5, max = 15},  -- 5-15% Chance of Crushing Blow
    {id = 119, min = 15, max = 25},  -- 15-25% Bonus to Attack Rating
    }
    },
  [52] = {
    name = "Ancient's Assault",
    stats = {
    {id = 19, min = 35, max = 45},  -- +35-45 to Attack Rating
    {id = 7, min = 15, max = 20},  -- +15-20 to Life
    {id = 39, min = 5, max = 10},  -- All Resistances +5-10%
    }
    },
  [53] = {
    name = "Harpoonist's Training",
    stats = {
    {id = 107, min = 2, max = 3, param = 10},  -- +2-3 to Jab (Amazon only)
    }
    },
  [54] = {
    name = "Glorious Point",
    stats = {
    {id = 107, min = 1, max = 2, param = 25},  -- +1-2 to Plague Javelin (Amazon only)
    {id = 119, min = 10, max = 15},  -- 10-15% Bonus to Attack Rating
    {id = 60, min = 4, max = 6},  -- 4-6% Life stolen per hit
    }
    },
  [55] = {
    name = "Not So",
    stats = {
    {id = 107, min = 1, max = 3, param = {14,24}},  -- +1-3 to Recharge (Amazon only), +1-3 to Charged Strike (Amazon only)
    {id = 41, min = 10, max = 15},  -- Lightning Resist +10-15%
    }
    },
  [56] = {
    name = "Double Trouble",
    stats = {
    {id = 107, min = 1, max = 2, param = 135},  -- +1-2 to Throwing Mastery (Barbarian only)
    {id = 136, min = 10, max = 15},  -- 10-15% Chance of Crushing Blow
    }
    },
  [57] = {
    name = "Straight Shot",
    stats = {
    {id = 107, min = 1, max = 2, param = 134},  -- +1-2 to Homing Harpoon (Barbarian only)
    {id = 107, min = 1, max = 3, param = {137,138}},  -- +1-3 to Icy Trail (Barbarian only), +1-3 to Shout (Barbarian only)
    {id = 9, min = 20, max = 25},  -- +20-25 to Mana
    {id = 119, min = 10, max = 15},  -- 10-15% Bonus to Attack Rating
    {id = 62, min = 1, max = 5},  -- 1-5% Mana stolen per hit
    }
    },
  [58] = {
    name = "The Dragon Chang",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [59] = {
    name = "Razortine",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [60] = {
    name = "Bloodthief",
    stats = {
    {id = 135, min = 20, max = 30},  -- 20-30% Chance of Open Wounds
    {id = 60, min = 8, max = 12},  -- 8-12% Life stolen per hit
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 2, max = 4},  -- Damage Reduced by 2-4, Magic Damage Reduced by 2-4
    }
    },
  [61] = {
    name = "Lance of Yaggai",
    stats = {
    {id = {34,35}, min = 4, max = 8},  -- Damage Reduced by 4-8, Magic Damage Reduced by 4-8
    }
    },
  [62] = {
    name = "The Tannr Gorerod",
    stats = {
    {id = {34,35}, min = 4, max = 8},  -- Damage Reduced by 4-8, Magic Damage Reduced by 4-8
    }
    },
  [63] = {
    name = "Dimoak's Hew",
    stats = {
    {id = {85,34,35}, min = 2, max = 5},  -- +2-5% to Experience Gained, Damage Reduced by 2-5, Magic Damage Reduced by 2-5
    }
    },
  [64] = {
    name = "Steelgoad",
    stats = {
    {id = {34,35}, min = 3, max = 5},  -- Damage Reduced by 3-5, Magic Damage Reduced by 3-5
    }
    },
  [65] = {
    name = "Soul Harvest",
    stats = {
    {id = 135, min = 10, max = 30},  -- 10-30% Chance of Open Wounds
    {id = 107, min = 1, max = 4, param = 73},  -- +1-4 to Blight Strike (Necromancer only)
    }
    },
  [66] = {
    name = "The Battlebranch",
    stats = {
    {id = 19, min = 50, max = 100},  -- +50-100 to Attack Rating
    {id = {34,35}, min = 5, max = 7},  -- Damage Reduced by 5-7, Magic Damage Reduced by 5-7
    }
    },
  [67] = {
    name = "Woestave",
    stats = {
    {id = {34,35}, min = 5, max = 7},  -- Damage Reduced by 5-7, Magic Damage Reduced by 5-7
    }
    },
  [68] = {
    name = "The Grim Reaper",
    stats = {
    {id = 141, min = 25, max = 50},  -- 25-50% Deadly Strike
    {id = 107, min = 3, max = 5, param = 73},  -- +3-5 to Blight Strike (Necromancer only)
    {id = 332, min = 10, max = 15},  -- +10-15% to Poison Skill Damage
    }
    },
  [69] = {
    name = "Bane Ash",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [70] = {
    name = "Serpent Lord",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [71] = {
    name = "Spire of Lazarus",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [72] = {
    name = "The Salamander",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [73] = {
    name = "The Iron Jang Bong",
    stats = {
    {id = 107, min = 2, max = 4, param = 46},  -- +2-4 to Fatal Flare (Sorceress only)
    }
    },
  [74] = {
    name = "Pluckeye",
    stats = {
    {id = 85, min = 7, max = 10},  -- +7-10% to Experience Gained
    }
    },
  [75] = {
    name = "Witherstring",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [76] = {
    name = "Raven Claw",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [77] = {
    name = "Rogue's Bow",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [78] = {
    name = "Stormstrike",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [79] = {
    name = "Wizendraw",
    stats = {
    {id = 19, min = 50, max = 100},  -- +50-100 to Attack Rating
    {id = 335, min = 20, max = 35},  -- -20-35% to Enemy Cold Resistance
    {id = 187, min = 10, max = 15},  -- Enemy cold immunity reduced by 10-15%
    }
    },
  [80] = {
    name = "Hellclap",
    stats = {
    {id = 49, min = 30, max = 50},  -- +30-50 to Maximum Fire Damage
    {id = 19, min = 50, max = 75},  -- +50-75 to Attack Rating
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [81] = {
    name = "Blastbark",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [82] = {
    name = "Leadcrow",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [83] = {
    name = "Ichorsting",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [84] = {
    name = "Hellcast",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [85] = {
    name = "Doomslinger",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [86] = {
    name = "Coldkill",
    stats = {
    {id = 34, min = 5, max = 10},  -- Damage Reduced by 5-10
    }
    },
  [87] = {
    name = "Butcher's Pupil",
    stats = {
    {id = 141, min = 5, max = 15},  -- 5-15% Deadly Strike
    {id = 135, min = 5, max = 20},  -- 5-20% Chance of Open Wounds
    {id = 34, min = 5, max = 10},  -- Damage Reduced by 5-10
    }
    },
  [88] = {
    name = "Islestrike",
    stats = {
    {id = 107, min = 1, max = 3, param = {233,232}},  -- +1-3 to Maul (Druid only), +1-3 to Feral Rage (Druid only)
    {id = 35, min = 5, max = 10},  -- Magic Damage Reduced by 5-10
    }
    },
  [89] = {
    name = "Pompeii's Wrath",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [90] = {
    name = "Guardian Naga",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 7, max = 12},  -- Magic Damage Reduced by 7-12
    }
    },
  [91] = {
    name = "Warlord's Trust",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 6, max = 10},  -- Damage Reduced by 6-10, Magic Damage Reduced by 6-10
    }
    },
  [92] = {
    name = "Spellsteel",
    stats = {
    {id = 35, min = 12, max = 15},  -- Magic Damage Reduced by 12-15
    }
    },
  [93] = {
    name = "Stormrider",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 9, max = 12},  -- Magic Damage Reduced by 9-12
    }
    },
  [94] = {
    name = "Boneslayer Blade",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 9, max = 12},  -- Damage Reduced by 9-12, Magic Damage Reduced by 9-12
    }
    },
  [95] = {
    name = "The Minotaur",
    stats = {
    {id = 0, min = 15, max = 20},  -- +15-20 to Strength
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = {34,35}, min = 9, max = 12},  -- Damage Reduced by 9-12, Magic Damage Reduced by 9-12
    }
    },
  [96] = {
    name = "Suicide Branch",
    stats = {
    {id = 85, min = 3, max = 5},  -- +3-5% to Experience Gained
    }
    },
  [97] = {
    name = "Carin Shard",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [98] = {
    name = "Arm of King Leoric",
    stats = {
    {id = 400, min = 3, max = 5},  -- Increase Curse Duration by 3-5
    {id = 97, min = 2, max = 3, param = 68},  -- +2-3 to Bone Armor
    {id = 284, min = 40, max = 60},  -- Summon Max HP: +40-60%
    }
    },
  [99] = {
    name = "Blackhand Key",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [100] = {
    name = "Dark Clan Crusher",
    stats = {
    {id = 119, min = 20, max = 25},  -- 20-25% Bonus to Attack Rating
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [101] = {
    name = "Zakarum's Hand",
    stats = {
    {id = 27, min = 15, max = 25},  -- Regenerate Mana 15-25%
    }
    },
  [102] = {
    name = "The Fetid Sprinkler",
    stats = {
    {id = 19, min = 150, max = 200},  -- +150-200 to Attack Rating
    }
    },
  [103] = {
    name = "Hand of Blessed Light",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [104] = {
    name = "Fleshrender",
    stats = {
    {id = {135,141}, min = 5, max = 15},  -- 5-15% Chance of Open Wounds, 5-15% Deadly Strike
    }
    },
  [105] = {
    name = "Sureshrill Frost",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 34, min = 5, max = 10},  -- Damage Reduced by 5-10
    }
    },
  [106] = {
    name = "Moonfall",
    stats = {
    {id = 35, min = 9, max = 12},  -- Magic Damage Reduced by 9-12
    }
    },
  [107] = {
    name = "Baezil's Vortex",
    stats = {
    {id = 34, min = 7, max = 10},  -- Damage Reduced by 7-10
    }
    },
  [108] = {
    name = "Earthshaker",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 35, min = 7, max = 10},  -- Magic Damage Reduced by 7-10
    }
    },
  [109] = {
    name = "Bloodtree Stump",
    stats = {
    {id = {34,35}, min = 5, max = 10},  -- Damage Reduced by 5-10, Magic Damage Reduced by 5-10
    }
    },
  [110] = {
    name = "The Gavel of Pain",
    stats = {
    {id = {34,35}, min = 5, max = 10},  -- Damage Reduced by 5-10, Magic Damage Reduced by 5-10
    }
    },
  [111] = {
    name = "Bloodletter",
    stats = {
    {id = 107, min = 2, max = 4, param = 127},  -- +2-4 to Master At Arms (Barbarian only)
    {id = 107, min = 1, max = 3, param = 151},  -- +1-3 to Whirlwind (Barbarian only)
    {id = 34, min = 5, max = 8},  -- Damage Reduced by 5-8
    }
    },
  [112] = {
    name = "Coldsteel Eye",
    stats = {
    {id = 150, min = 15, max = 30},  -- Slows Target by 15-30%
    {id = 34, min = 6, max = 9},  -- Damage Reduced by 6-9
    }
    },
  [113] = {
    name = "Hexfire",
    stats = {
    {id = 35, min = 7, max = 12},  -- Magic Damage Reduced by 7-12
    }
    },
  [114] = {
    name = "Blade of Ali Baba",
    stats = {
    {id = 2, min = 5, max = 15},  -- +5-15 to Dexterity
    {id = 34, min = 7, max = 12},  -- Damage Reduced by 7-12
    }
    },
  [115] = {
    name = "Ginther's Rift",
    stats = {
    {id = 35, min = 7, max = 12},  -- Magic Damage Reduced by 7-12
    }
    },
  [116] = {
    name = "Headstriker",
    stats = {
    {id = 34, min = 6, max = 9},  -- Damage Reduced by 6-9
    }
    },
  [117] = {
    name = "Plague Bearer",
    stats = {
    {id = 34, min = 6, max = 9},  -- Damage Reduced by 6-9
    }
    },
  [118] = {
    name = "The Atlantean",
    stats = {
    {id = 34, min = 6, max = 9},  -- Damage Reduced by 6-9
    }
    },
  [119] = {
    name = "Crainte Vomir",
    stats = {
    {id = 35, min = 7, max = 10},  -- Magic Damage Reduced by 7-10
    }
    },
  [120] = {
    name = "Bing Sz Wang",
    stats = {
    {id = 35, min = 7, max = 10},  -- Magic Damage Reduced by 7-10
    }
    },
  [121] = {
    name = "The Vile Husk",
    stats = {
    {id = 34, min = 7, max = 10},  -- Damage Reduced by 7-10
    }
    },
  [122] = {
    name = "Cloudcrack",
    stats = {
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [123] = {
    name = "Todesfaelle Flamme",
    stats = {
    {id = 35, min = 8, max = 12},  -- Magic Damage Reduced by 8-12
    }
    },
  [124] = {
    name = "Swordguard",
    stats = {
    {id = 39, min = 10, max = 20},  -- All Resistances +10-20%
    {id = 35, min = 8, max = 12},  -- Magic Damage Reduced by 8-12
    }
    },
  [125] = {
    name = "Spineripper",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [126] = {
    name = "Heart Carver",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [127] = {
    name = "Blackbog's Sharp",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [128] = {
    name = "Stormspike",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [129] = {
    name = "Deathbit",
    stats = {
    {id = 19, min = 200, max = 450},  -- +200-450 to Attack Rating
    {id = 60, min = 7, max = 9},  -- 7-9% Life stolen per hit
    {id = 62, min = 4, max = 6},  -- 4-6% Mana stolen per hit
    }
    },
  [130] = {
    name = "The Scalper",
    stats = {
    {id = 135, min = 5, max = 25},  -- 5-25% Chance of Open Wounds
    {id = 60, min = 4, max = 6},  -- 4-6% Life stolen per hit
    }
    },
  [131] = {
    name = "Constantly Waging",
    stats = {
    {id = 107, min = 2, max = 5, param = 266},  -- +2-5 to Blade Fury (Assassin only)
    }
    },
  [132] = {
    name = "Realm Crusher",
    stats = {
    {id = {107,276}, min = 1, max = 2, param = 129},  -- +1-2 to Fan Out (Barbarian only), +1-2 Spell Power
    {id = 138, min = 1, max = 5},  -- +1-5 to Mana after each Kill
    }
    },
  [133] = {
    name = "Quickening Strikes",
    stats = {
    {id = 93, min = 10, max = 40},  -- +10-40% Increased Attack Speed
    {id = 335, min = 5, max = 15},  -- -5-15% to Enemy Cold Resistance
    {id = 331, min = 10, max = 20},  -- +10-20% to Cold Skill Damage
    {id = 62, min = 3, max = 5},  -- 3-5% Mana stolen per hit
    {id = 187, min = 3, max = 8},  -- Enemy cold immunity reduced by 3-8%
    }
    },
  [134] = {
    name = "Shrapnel Impact",
    stats = {
    {id = 19, min = 80, max = 95},  -- +80-95 to Attack Rating
    {id = 276, min = 1, max = 2},  -- +1-2 Spell Power
    }
    },
  [135] = {
    name = "Tempest Flash",
    stats = {
    {id = 96, min = 10, max = 25},  -- +10-25% Faster Run/Walk
    {id = 9, min = 25, max = 35},  -- +25-35 to Mana
    }
    },
  [136] = {
    name = "Untethered",
    stats = {
    {id = 188, min = 2, max = 4, param = 34},  -- +2-4 to Destructive Range (Barbarian Only)
    {id = 19, min = 100, max = 150},  -- +100-150 to Attack Rating
    {id = 119, min = 35, max = 45},  -- 35-45% Bonus to Attack Rating
    {id = 331, min = 3, max = 7},  -- +3-7% to Cold Skill Damage
    }
    },
  [137] = {
    name = "Unrelenting Will",
    stats = {
    {id = 116, min = 15, max = 25},  -- -15-25% Target Defense
    }
    },
  [138] = {
    name = "The Impaler",
    stats = {
    {id = 135, min = 15, max = 40},  -- 15-40% Chance of Open Wounds
    {id = 216, min = 1, max = 2},  -- +1.0-2.0 to Life (Based on Character Level)
    }
    },
  [139] = {
    name = "Kelpie Snare",
    stats = {
    {id = {34,35}, min = 5, max = 10},  -- Damage Reduced by 5-10, Magic Damage Reduced by 5-10
    }
    },
  [140] = {
    name = "Soulfeast Tine",
    stats = {
    {id = 76, min = 6, max = 10},  -- Increase Maximum Life by 6-10%
    {id = 19, min = 150, max = 250},  -- +150-250 to Attack Rating
    {id = {34,35}, min = 3, max = 9},  -- Damage Reduced by 3-9, Magic Damage Reduced by 3-9
    }
    },
  [141] = {
    name = "Hone Sundan",
    stats = {
    {id = 136, min = 5, max = 15},  -- 5-15% Chance of Crushing Blow
    {id = {34,35}, min = 4, max = 8},  -- Damage Reduced by 4-8, Magic Damage Reduced by 4-8
    }
    },
  [142] = {
    name = "Spire of Honor",
    stats = {
    {id = {34,35}, min = 6, max = 10},  -- Damage Reduced by 6-10, Magic Damage Reduced by 6-10
    }
    },
  [143] = {
    name = "The Meat Scraper",
    stats = {
    {id = 135, min = 15, max = 40},  -- 15-40% Chance of Open Wounds
    {id = {34,35}, min = 5, max = 10},  -- Damage Reduced by 5-10, Magic Damage Reduced by 5-10
    }
    },
  [144] = {
    name = "Blackleach Blade",
    stats = {
    {id = {34,35}, min = 3, max = 7},  -- Damage Reduced by 3-7, Magic Damage Reduced by 3-7
    }
    },
  [145] = {
    name = "Athena's Wrath",
    stats = {
    {id = 83, min = 1, max = 3, param = 2},  -- +1-3 to Necromancer Skill Levels
    {id = 332, min = 8, max = 15},  -- +8-15% to Poison Skill Damage
    }
    },
  [146] = {
    name = "Pierre Tombale Couant",
    stats = {
    {id = 141, min = 15, max = 40},  -- 15-40% Deadly Strike
    {id = {34,35}, min = 2, max = 8},  -- Damage Reduced by 2-8, Magic Damage Reduced by 2-8
    }
    },
  [147] = {
    name = "Husoldal Evo",
    stats = {
    {id = 19, min = 200, max = 250},  -- +200-250 to Attack Rating
    {id = {34,35}, min = 5, max = 8},  -- Damage Reduced by 5-8, Magic Damage Reduced by 5-8
    }
    },
  [148] = {
    name = "Grim's Burning Dead",
    stats = {
    {id = 19, min = 200, max = 250},  -- +200-250 to Attack Rating
    }
    },
  [149] = {
    name = "Razorswitch",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    }
    },
  [150] = {
    name = "Ribcracker",
    stats = {
    {id = 136, min = 15, max = 30},  -- 15-30% Chance of Crushing Blow
    }
    },
  [151] = {
    name = "Chromatic Ire",
    stats = {
    {id = 39, min = 20, max = 40},  -- All Resistances +20-40%
    {id = 76, min = 20, max = 25},  -- Increase Maximum Life by 20-25%
    {id = 107, min = 1, max = 3, param = {61,63,65}},  -- +1-3 to Fire Mastery (Sorceress only), +1-3 to Lightning Mastery (Sorceress only), +1-3 to Cold Mastery (Sorceress only)
    }
    },
  [152] = {
    name = "Warpspear",
    stats = {
    {id = 93, min = 40, max = 60},  -- +40-60% Increased Attack Speed
    }
    },
  [153] = {
    name = "Skull Collector",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [154] = {
    name = "Skystrike",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [155] = {
    name = "Riphook",
    stats = {
    {id = 135, min = 15, max = 30},  -- 15-30% Chance of Open Wounds
    {id = 60, min = 7, max = 10},  -- 7-10% Life stolen per hit
    }
    },
  [156] = {
    name = "Kuko Shakaku",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [157] = {
    name = "Endlesshail",
    stats = {
    {id = 107, min = 1, max = 4, param = 21},  -- +1-4 to Hail of Arrows (Amazon only)
    {id = 335, min = 10, max = 20},  -- -10-20% to Enemy Cold Resistance
    {id = 187, min = 5, max = 10},  -- Enemy cold immunity reduced by 5-10%
    }
    },
  [158] = {
    name = "Witchwild String",
    stats = {
    {id = 107, min = 3, max = 7, param = 7},  -- +3-7 to Prismatic Arrow (Amazon only)
    }
    },
  [159] = {
    name = "Cliffkiller",
    stats = {
    {id = 32, min = 180, max = 280},  -- +180-280 Defense vs. Missile
    }
    },
  [160] = {
    name = "Magewrath",
    stats = {
    {id = 35, min = 9, max = 13},  -- Magic Damage Reduced by 9-13
    {id = 19, min = 200, max = 250},  -- +200-250 to Attack Rating
    }
    },
  [161] = {
    name = "Goldstrike Arch",
    stats = {
    {id = 119, min = 100, max = 150},  -- 100-150% Bonus to Attack Rating
    {id = {122,121}, min = 100, max = 200},  -- +100-200% Damage to Undead, +100-200% Damage to Demons
    }
    },
  [162] = {
    name = "Langer Briser",
    stats = {
    {id = 80, min = 30, max = 60},  -- +30-60% Chance of Higher Quality Items
    }
    },
  [163] = {
    name = "Pus Spitter",
    stats = {
    {id = 107, min = 2, max = 4, param = 278},  -- +2-4 to Venom (Assassin only)
    }
    },
  [164] = {
    name = "Buriza-Do Kyanon",
    stats = {
    {id = 31, min = 75, max = 150},  -- +75-150 Defense
    }
    },
  [165] = {
    name = "Demon Machine",
    stats = {
    {id = 121, min = 100, max = 200},  -- +100-200% Damage to Demons
    {id = 278, min = 1, max = 2},  -- +1-2 Combat Power
    }
    },
  [166] = {
    name = "Untrained Eye",
    stats = {
    {id = 96, min = 10, max = 20},  -- +10-20% Faster Run/Walk
    }
    },
  [167] = {
    name = "Redemption",
    stats = {
    {id = 62, min = 5, max = 8},  -- 5-8% Mana stolen per hit
    }
    },
  [168] = {
    name = "Ancient Hand",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [169] = {
    name = "Willbreaker",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [170] = {
    name = "Skyfall Grip",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [171] = {
    name = "Oathbinder",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [172] = {
    name = "Pride's Fan",
    stats = {
    {id = 97, min = 1, max = 3, param = 280},  -- +1-3 to Phoenix Strike
    {id = 139, min = 6, max = 10},  -- +6-10 Life after each Demon Kill
    {id = 396, min = 1, max = 2},  -- +1-2 Mana Stolen Per Hit
    {id = 150, min = 20, max = 40},  -- Slows Target by 20-40%
    }
    },
  [173] = {
    name = "Burning Sun",
    stats = {
    {id = 97, min = 2, max = 3, param = 259},  -- +2-3 to Fists of Fire
    {id = {333,135}, min = 10, max = 25},  -- -10-25% to Enemy Fire Resistance, 10-25% Chance of Open Wounds
    {id = 0, min = 6, max = 15},  -- +6-15 to all Attributes
    {id = {60,62}, min = 3, max = 5},  -- 3-5% Life stolen per hit, 3-5% Mana stolen per hit
    {id = 189, min = 5, max = 10},  -- Enemy fire immunity reduced by 5-10%
    }
    },
  [174] = {
    name = "Severance",
    stats = {
    {id = 33, min = 100, max = 175},  -- +100-175 Defense vs. Melee
    {id = 396, min = 3, max = 5},  -- +3-5 Mana Stolen Per Hit
    }
    },
  [175] = {
    name = "Hand of Madness",
    stats = {
    {id = 93, min = 40, max = 50},  -- +40-50% Increased Attack Speed
    {id = 107, min = 3, max = 6, param = 278},  -- +3-6 to Venom (Assassin only)
    }
    },
  [176] = {
    name = "Vanquisher",
    stats = {
    {id = 188, min = 1, max = 3, param = 48},  -- +1-3 to Traps (Assassin Only)
    {id = 97, min = 1, max = 2, param = 262},  -- +1-2 to Wake of Fire
    {id = 329, min = 5, max = 20},  -- +5-20% to Fire Skill Damage
    }
    },
  [177] = {
    name = "Wind-Forged Blade",
    stats = {
    {id = 97, min = 2, max = 3, param = 269},  -- +2-3 to Claws of Thunder
    {id = 97, min = 0, max = 4, param = 235},  -- +0-4 to Cyclone Armor
    }
    },
  [178] = {
    name = "Bartuc's Cut-Throat",
    stats = {
    {id = 60, min = 5, max = 9},  -- 5-9% Life stolen per hit
    }
    },
  [179] = {
    name = "Void Ripper",
    stats = {
    {id = 119, min = 15, max = 40},  -- 15-40% Bonus to Attack Rating
    {id = 0, min = 5, max = 15},  -- +5-15 to all Attributes
    }
    },
  [180] = {
    name = "Soul-Forged Grip",
    stats = {
    {id = 151, min = 6, max = 10, param = 381},  -- Level 6-10 Redemption Aura When Equipped
    {id = 19, min = 200, max = 475},  -- +200-475 to Attack Rating
    {id = 83, min = 1, max = 3, param = 6},  -- +1-3 to Assassin Skill Levels
    }
    },
  [181] = {
    name = "Jade Talon",
    stats = {
    {id = 62, min = 10, max = 15},  -- 10-15% Mana stolen per hit
    {id = 39, min = 40, max = 50},  -- All Resistances +40-50%
    {id = 188, min = 1, max = 2, param = {49,50}},  -- +1-2 to Shadow Disciplines (Assassin Only), +1-2 to Deadly Arts (Assassin Only)
    }
    },
  [182] = {
    name = "Malignant Touch",
    stats = {
    {id = 97, min = 1, max = 3, param = 280},  -- +1-3 to Phoenix Strike
    {id = 74, min = 10, max = 15},  -- Replenish Life +10-15
    }
    },
  [183] = {
    name = "Shadow Killer",
    stats = {
    {id = 138, min = 10, max = 15},  -- +10-15 to Mana after each Kill
    }
    },
  [184] = {
    name = "Firelizard's Talons",
    stats = {
    {id = 188, min = 1, max = 3, param = 50},  -- +1-3 to Deadly Arts (Assassin Only)
    {id = 39, min = 40, max = 70},  -- Fire Resist +40-70%
    {id = 107, min = 1, max = 2, param = {262,251}},  -- +1-2 to Wake of Fire (Assassin only), +1-2 to Fire Blast (Assassin only)
    }
    },
  [185] = {
    name = "Viz-Jaq'taar Order",
    stats = {
    {id = 107, min = 4, max = 6, param = 264},  -- +4-6 to Cloak of Shadows (Assassin only)
    {id = 188, min = 2, max = 4, param = 48},  -- +2-4 to Traps (Assassin Only)
    {id = {39,86,329,331,330}, min = 5, max = 25},  -- All Resistances +5-25%, +5-25 Life after each Kill, +10-25% to Fire Skill Damage, +10-25% to Cold Skill Damage, +10-25% to Lightning Skill Damage
    {id = 0, min = 20, max = 35},  -- +20-35 to Strength
    {id = 93, min = 20, max = 50},  -- +20-50% Increased Attack Speed
    }
    },
  [186] = {
    name = "Mage Crusher",
    stats = {
    {id = 39, min = 10, max = 30},  -- All Resistances +10-30%
    {id = 119, min = 90, max = 120},  -- 90-120% Bonus to Attack Rating
    {id = 127, min = 1, max = 3},  -- +1-3 to All Skills
    {id = 138, min = 10, max = 20},  -- +10-20 to Mana after each Kill
    {id = 397, min = 3, max = 6},  -- +3-6 Life Stolen Per Hit
    {id = {121,123}, min = 100, max = 200},  -- +100-200% Damage to Demons, +180-200 to Attack Rating against Demons
    }
    },
  [187] = {
    name = "Razor's Edge",
    stats = {
    {id = 135, min = 5, max = 15},  -- 5-15% Chance of Open Wounds
    }
    },
  [188] = {
    name = "Glittering Crescent",
    stats = {
    {id = {52,48}, min = 38, max = 45},  -- +38-45 magic damage, +38-45 to Minimum Fire Damage
    {id = {53,49}, min = 60, max = 67},  -- +60-67 magic damage, +60-67 to Maximum Fire Damage
    {id = 141, min = 5, max = 10},  -- 5-10% Deadly Strike
    {id = 19, min = 200, max = 250},  -- +200-250 to Attack Rating
    {id = 35, min = 8, max = 12},  -- Magic Damage Reduced by 8-12
    }
    },
  [189] = {
    name = "Rune Master",
    stats = {
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [190] = {
    name = "Cranebeak",
    stats = {
    {id = 80, min = 20, max = 50},  -- +20-50% Chance of Higher Quality Items
    {id = 410, min = 1, max = 2},  -- +1-2 to Poison Skills
    {id = 83, min = 1, max = 2, param = 2},  -- +1-2 to Necromancer Skill Levels
    {id = 151, min = 15, max = 25, param = 495},  -- Level 15-25 Poison Conviction Aura When Equipped
    }
    },
  [191] = {
    name = "Death Cleaver",
    stats = {
    {id = 86, min = 6, max = 9},  -- +6-9 Life after each Kill
    {id = {34,35}, min = 10, max = 15},  -- Damage Reduced by 10-15, Magic Damage Reduced by 10-15
    }
    },
  [192] = {
    name = "Blessed Beheader",
    stats = {
    {id = 141, min = 5, max = 20},  -- 5-20% Deadly Strike
    {id = {135,34,35}, min = 5, max = 15},  -- 5-15% Chance of Open Wounds, Damage Reduced by 10-15, Magic Damage Reduced by 10-15
    {id = {121,122}, min = 100, max = 110},  -- +100-110% Damage to Demons, +100-110% Damage to Undead
    {id = 60, min = 4, max = 7},  -- 4-7% Life stolen per hit
    {id = {123,124}, min = 180, max = 200},  -- +180-200 to Attack Rating against Demons, +180-200 to Attack Rating against Undead
    }
    },
  [193] = {
    name = "Ethereal Edge",
    stats = {
    {id = 143, min = 10, max = 12},  -- +10-12 Fire Absorb
    {id = 121, min = 150, max = 200},  -- +150-200% Damage to Demons
    {id = 139, min = 5, max = 10},  -- +5-10 Life after each Demon Kill
    {id = 19, min = 270, max = 350},  -- +270-350 to Attack Rating
    {id = {34,35}, min = 10, max = 15},  -- Damage Reduced by 10-15, Magic Damage Reduced by 10-15
    }
    },
  [194] = {
    name = "Hellslayer",
    stats = {
    {id = {34,35}, min = 12, max = 16},  -- Damage Reduced by 12-16, Magic Damage Reduced by 12-16
    }
    },
  [195] = {
    name = "Messerschmidt's Reaver",
    stats = {
    {id = {34,35}, min = 12, max = 16},  -- Damage Reduced by 12-16, Magic Damage Reduced by 12-16
    }
    },
  [196] = {
    name = "Executioner's Justice",
    stats = {
    {id = 136, min = 10, max = 20},  -- 10-20% Chance of Crushing Blow
    }
    },
  [197] = {
    name = "Bane Glow",
    stats = {
    {id = 83, min = 1, max = 2, param = 2},  -- +1-2 to Necromancer Skill Levels
    {id = 97, min = 1, max = 3, param = {0,92}},  -- +1-3 to Attack (broken skill), +1-3 to Poison Nova
    {id = {105,332}, min = 25, max = 30},  -- +25-30% Faster Cast Rate, +10-30% to Poison Skill Damage
    {id = {336,191}, min = 10, max = 15},  -- -10-15% to Enemy Poison Resistance, Enemy poison immunity reduced by 5-15%
    }
    },
  [198] = {
    name = "Malthael Touch",
    stats = {
    {id = {284,285,281}, min = 25, max = 40},  -- Summon Max HP: +25-40%, Summon Combat Rating: +25-40%, Summon Damage: +25-40%
    {id = 188, min = 1, max = 4, param = 18},  -- +1-4 to Summoning Skills (Necromancer Only)
    {id = 77, min = 25, max = 35},  -- Increase Maximum Mana by 25-35%
    }
    },
  [199] = {
    name = "Boneshade",
    stats = {
    {id = 83, min = 1, max = 2, param = 2},  -- +1-2 to Necromancer Skill Levels
    {id = 107, min = 4, max = 5, param = 67},  -- +4-5 to Teeth (Necromancer only)
    {id = 107, min = 2, max = 3, param = {68,84}},  -- +2-3 to Bone Armor (Necromancer only), +2-3 to Bone Spear (Necromancer only)
    {id = 107, min = 1, max = 2, param = 93},  -- +1-2 to Bone Spirit (Necromancer only)
    {id = 97, min = 0, max = 5, param = 161},  -- +0-5 to Feeble Frame
    }
    },
  [200] = {
    name = "Death's Web",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    {id = 336, min = 40, max = 50},  -- -40-50% to Enemy Poison Resistance
    {id = {86,138}, min = 7, max = 12},  -- +7-12 Life after each Kill, +7-12 to Mana after each Kill
    {id = 188, min = 1, max = 2, param = 17},  -- +1-2 to Poison and Bone Skills (Necromancer Only)
    {id = 191, min = 20, max = 25},  -- Enemy poison immunity reduced by 20-25%
    }
    },
  [201] = {
    name = "Nord's Tenderizer",
    stats = {
    {id = 148, min = 5, max = 15},  -- Cold Absorb 5-15%
    {id = 119, min = 150, max = 180},  -- 150-180% Bonus to Attack Rating
    {id = 151, min = 15, max = 20, param = 103},  -- Level 15-20 Thorns Aura When Equipped
    }
    },
  [202] = {
    name = "Heaven's Light",
    stats = {
    {id = 139, min = 15, max = 20},  -- +15-20 Life after each Demon Kill
    {id = 83, min = 2, max = 3, param = 3},  -- +2-3 to Paladin Skill Levels
    }
    },
  [203] = {
    name = "The Redeemer",
    stats = {
    {id = 121, min = 200, max = 250},  -- +200-250% Damage to Demons
    {id = 107, min = 2, max = 4, param = {118,101}},  -- +2-4 to Holy Shock (Paladin only), +2-4 to Holy Bolt (Paladin only)
    {id = 111, min = 60, max = 120},  -- Damage +60-120
    }
    },
  [204] = {
    name = "Astreon's Iron Ward",
    stats = {
    {id = 119, min = 150, max = 200},  -- 150-200% Bonus to Attack Rating
    {id = 34, min = 4, max = 7},  -- Damage Reduced by 4-7
    {id = 111, min = 40, max = 85},  -- Damage +40-85
    {id = 188, min = 2, max = 4, param = 24},  -- +2-4 to Combat Skills (Paladin Only)
    }
    },
  [205] = {
    name = "Demon Limb",
    stats = {
    {id = 60, min = 7, max = 13},  -- 7-13% Life stolen per hit
    {id = {39,189}, min = 15, max = 25},  -- Fire Resist +15-25%, Enemy fire immunity reduced by 15-25%
    {id = 83, min = 1, max = 2, param = 5},  -- +1-2 to Druid Skill Levels
    }
    },
  [206] = {
    name = "Stormlash",
    stats = {
    {id = 145, min = 3, max = 9},  -- +3-9 Lightning Absorb
    }
    },
  [207] = {
    name = "Baranar's Star",
    stats = {
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [208] = {
    name = "Horizon's Tornado",
    stats = {
    {id = 35, min = 8, max = 12},  -- Magic Damage Reduced by 8-12
    }
    },
  [209] = {
    name = "Schaefer's Hammer",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [210] = {
    name = "Windhammer",
    stats = {
    {id = 136, min = 10, max = 25},  -- 10-25% Chance of Crushing Blow
    {id = {34,35}, min = 8, max = 12},  -- Damage Reduced by 8-12, Magic Damage Reduced by 8-12
    }
    },
  [211] = {
    name = "The Cranium Basher",
    stats = {
    {id = {34,35}, min = 14, max = 20},  -- Damage Reduced by 14-20, Magic Damage Reduced by 14-20
    }
    },
  [212] = {
    name = "Vows of Promise",
    stats = {
    {id = 93, min = 30, max = 45},  -- +30-45% Increased Attack Speed
    {id = 138, min = 5, max = 7},  -- +5-7 to Mana after each Kill
    {id = 86, min = 5, max = 12},  -- +5-12 Life after each Kill
    {id = 34, min = 11, max = 14},  -- Damage Reduced by 11-14
    }
    },
  [213] = {
    name = "Djinn Slayer",
    stats = {
    {id = 121, min = 100, max = 150},  -- +100-150% Damage to Demons
    {id = 123, min = 200, max = 300},  -- +200-300 to Attack Rating against Demons
    {id = 145, min = 3, max = 7},  -- +3-7 Lightning Absorb
    {id = 62, min = 3, max = 6},  -- 3-6% Mana stolen per hit
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [214] = {
    name = "Bloodmoon",
    stats = {
    {id = {60,135,35}, min = 10, max = 15},  -- 10-15% Life stolen per hit, 10-15% Chance of Open Wounds, Magic Damage Reduced by 12-15
    {id = 86, min = 7, max = 13},  -- +7-13 Life after each Kill
    }
    },
  [215] = {
    name = "Starward Fencer",
    stats = {
    {id = 60, min = 3, max = 10},  -- 3-10% Life stolen per hit
    {id = 34, min = 9, max = 13},  -- Damage Reduced by 9-13
    }
    },
  [216] = {
    name = "Lightsabre",
    stats = {
    {id = 62, min = 5, max = 7},  -- 5-7% Mana stolen per hit
    {id = 35, min = 15, max = 25},  -- Magic Damage Reduced by 15-25
    }
    },
  [217] = {
    name = "Azurewrath",
    stats = {
    {id = 151, min = 10, max = 13, param = 380},  -- Level 10-13 Sanctuary Aura When Equipped
    {id = 0, min = 5, max = 10},  -- +5-10 to all Attributes
    {id = 35, min = 15, max = 18},  -- Magic Damage Reduced by 15-18
    }
    },
  [218] = {
    name = "Frostwind",
    stats = {
    {id = 148, min = 7, max = 15},  -- Cold Absorb 7-15%
    {id = 97, min = 7, max = 14, param = 156},  -- +7-14 to Arctic Blast
    }
    },
  [219] = {
    name = "Last Legend",
    stats = {
    {id = 107, min = 1, max = 3, param = 119},  -- +1-3 to Faithful Follower (Paladin only)
    {id = 97, min = 2, max = 3, param = 175},  -- +2-3 to Chance For Glory
    {id = 27, min = 80, max = 200},  -- Regenerate Mana 80-200%
    {id = 83, min = 2, max = 3, param = 3},  -- +2-3 to Paladin Skill Levels
    {id = 138, min = 3, max = 10},  -- +3-10 to Mana after each Kill
    }
    },
  [220] = {
    name = "Oashi",
    stats = {
    {id = 35, min = 12, max = 15},  -- Magic Damage Reduced by 12-15
    }
    },
  [221] = {
    name = "Gleam Rod",
    stats = {
    {id = 151, min = 15, max = 20, param = 389},  -- Level 15-20 Magic Conviction Aura When Equipped
    }
    },
  [222] = {
    name = "Flamebellow",
    stats = {
    {id = 142, min = 20, max = 30},  -- Fire Absorb 20-30%
    {id = 0, min = 10, max = 20},  -- +10-20 to Strength
    {id = 3, min = 5, max = 10},  -- +5-10 to Vitality
    {id = 97, min = 12, max = 18, param = 173},  -- +12-18 to Inferno
    {id = 34, min = 12, max = 15},  -- Damage Reduced by 12-15
    }
    },
  [223] = {
    name = "Doombringer",
    stats = {
    {id = 60, min = 5, max = 7},  -- 5-7% Life stolen per hit
    {id = 34, min = 20, max = 30},  -- Damage Reduced by 20-30
    }
    },
  [224] = {
    name = "Burning Bane",
    stats = {
    {id = 151, min = 15, max = 20, param = 387},  -- Level 15-20 Fire Conviction Aura When Equipped
    }
    },
  [225] = {
    name = "The Grandfather",
    stats = {
    {id = 151, min = 10, max = 20, param = 503},  -- Level 10-20 Physical Conviction Aura When Equipped
    {id = {34,35}, min = 20, max = 25},  -- Damage Reduced by 20-25, Magic Damage Reduced by 20-25
    }
    },
  [226] = {
    name = "Wizardspike",
    stats = {
    {id = 77, min = 15, max = 30},  -- Increase Maximum Mana by 15-30%
    {id = 39, min = 75, max = 95},  -- All Resistances +75-95%
    }
    },
  [227] = {
    name = "Rapid Strike",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [228] = {
    name = "Fleshripper",
    stats = {
    {id = 135, min = 5, max = 20},  -- 5-20% Chance of Open Wounds
    {id = 97, min = 6, max = 10, param = 180},  -- +6-10 to Patient Zero
    }
    },
  [229] = {
    name = "Ghostflame",
    stats = {
    {id = 62, min = 10, max = 15},  -- 10-15% Mana stolen per hit
    {id = 93, min = 25, max = 40},  -- +25-40% Increased Attack Speed
    }
    },
  [230] = {
    name = "Sentinel's Call",
    stats = {
    {id = 107, min = 3, max = 5, param = 266},  -- +3-5 to Blade Fury (Assassin only)
    {id = 107, min = 2, max = 4, param = {257,277}},  -- +2-4 to Blade Sentinel (Assassin only), +2-4 to Blade Shield (Assassin only)
    {id = 93, min = 30, max = 50},  -- +30-50% Increased Attack Speed
    }
    },
  [231] = {
    name = "Gimmershred",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [232] = {
    name = "Warshrike",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [233] = {
    name = "Lacerator",
    stats = {
    {id = 135, min = 20, max = 30},  -- 20-30% Chance of Open Wounds
    }
    },
  [234] = {
    name = "Contemplation",
    stats = {
    {id = 127, min = 2, max = 3},  -- +2-3 to All Skills
    {id = 0, min = 40, max = 60},  -- +40-60 to Strength
    }
    },
  [235] = {
    name = "Main Hand",
    stats = {
    {id = 135, min = 10, max = 30},  -- 10-30% Chance of Open Wounds
    }
    },
  [236] = {
    name = "Demon's Arch",
    stats = {
    {id = 60, min = 6, max = 12},  -- 6-12% Life stolen per hit
    }
    },
  [237] = {
    name = "Wraith Flight",
    stats = {
    {id = 60, min = 9, max = 13},  -- 9-13% Life stolen per hit
    {id = 111, min = 200, max = 250},  -- Damage +200-250
    {id = 83, min = 2, max = 3, param = 4},  -- +2-3 to Barbarian Skill Levels
    }
    },
  [238] = {
    name = "Gargoyle's Bite",
    stats = {
    {id = 60, min = 9, max = 15},  -- 9-15% Life stolen per hit
    }
    },
  [239] = {
    name = "Arioc's Needle",
    stats = {
    {id = 141, min = 30, max = 50},  -- 30-50% Deadly Strike
    {id = 127, min = 2, max = 4},  -- +2-4 to All Skills
    {id = {34,35}, min = 12, max = 15},  -- Damage Reduced by 12-15, Magic Damage Reduced by 12-15
    }
    },
  [240] = {
    name = "Rock Piercer",
    stats = {
    {id = 357, min = 40, max = 60},  -- +40-60% to Magic Skill Damage
    {id = 107, min = 3, max = 7, param = 30},  -- +3-7 to Fend (Amazon only)
    {id = 107, min = 5, max = 7, param = 19},  -- +5-7 to Impale (Amazon only)
    {id = 135, min = 30, max = 70},  -- 30-70% Chance of Open Wounds
    {id = 32, min = 200, max = 400},  -- +200-400 Defense vs. Missile
    {id = {34,35}, min = 10, max = 12},  -- Damage Reduced by 10-12, Magic Damage Reduced by 10-12
    }
    },
  [241] = {
    name = "Viperfork",
    stats = {
    {id = 19, min = 200, max = 250},  -- +200-250 to Attack Rating
    {id = 45, min = 30, max = 50},  -- Poison Resist +30-50%
    }
    },
  [242] = {
    name = "Flash Forward",
    stats = {
    {id = 151, min = 15, max = 20, param = 390},  -- Level 15-20 Lightning Conviction Aura When Equipped
    }
    },
  [243] = {
    name = "Steel Pillar",
    stats = {
    {id = 136, min = 10, max = 30},  -- 10-30% Chance of Crushing Blow
    {id = {34,35}, min = 13, max = 17},  -- Damage Reduced by 13-17, Magic Damage Reduced by 13-17
    }
    },
  [244] = {
    name = "Bonehew",
    stats = {
    {id = {34,35}, min = 13, max = 17},  -- Damage Reduced by 13-17, Magic Damage Reduced by 13-17
    }
    },
  [245] = {
    name = "Tundra Tamer",
    stats = {
    {id = 151, min = 15, max = 20, param = 388},  -- Level 15-20 Cold Conviction Aura When Equipped
    }
    },
  [246] = {
    name = "The Reaper's Toll",
    stats = {
    {id = 60, min = 11, max = 15},  -- 11-15% Life stolen per hit
    {id = 97, min = 1, max = 5, param = {179,178}},  -- +1-5 to Calcified Carve, +3-5 to Bone Spikes
    }
    },
  [247] = {
    name = "Tomb Reaver",
    stats = {
    {id = 122, min = 150, max = 230},  -- +150-230% Damage to Undead
    {id = 80, min = 50, max = 80},  -- +50-80% Chance of Higher Quality Items
    {id = 39, min = 30, max = 50},  -- All Resistances +30-50%
    {id = 124, min = 250, max = 350},  -- +250-350 to Attack Rating against Undead
    {id = 86, min = 10, max = 14},  -- +10-14 Life after each Kill
    {id = {34,35}, min = 15, max = 20},  -- Damage Reduced by 15-20, Magic Damage Reduced by 15-20
    }
    },
  [248] = {
    name = "Wind Shatter",
    stats = {
    {id = 107, min = 3, max = 6, param = 151},  -- +3-6 to Whirlwind (Barbarian only)
    {id = 150, min = 40, max = 60},  -- Slows Target by 40-60%
    {id = {34,35}, min = 12, max = 18},  -- Damage Reduced by 12-18, Magic Damage Reduced by 12-18
    {id = 93, min = 40, max = 60},  -- +40-60% Increased Attack Speed
    }
    },
  [249] = {
    name = "Bonespire",
    stats = {
    {id = 97, min = 3, max = 5, param = 178},  -- +3-5 to Bone Spikes
    }
    },
  [250] = {
    name = "Nature's Intention",
    stats = {
    {id = {332,357,45}, min = 25, max = 50},  -- +25-50% to Poison Skill Damage, +25-50% to Magic Skill Damage, Poison Resist +35-50%
    {id = 188, min = 2, max = 4, param = 40},  -- +2-4 to Nature's Teachings (Druid Only)
    {id = 77, min = 10, max = 20},  -- Increase Maximum Mana by 10-20%
    {id = 31, min = 100, max = 300},  -- +100-300 Defense
    {id = 97, min = 1, max = 3, param = 183},  -- +1-3 to Arachnophobia
    }
    },
  [251] = {
    name = "Thermite Quicksand",
    stats = {
    {id = 48, min = 200, max = 250},  -- +200-250 to Minimum Fire Damage
    {id = 49, min = 375, max = 505},  -- +375-505 to Maximum Fire Damage
    {id = {141,36,142}, min = 10, max = 15},  -- 10-15% Deadly Strike, Damage Reduced by 8-15%, Fire Absorb 5-15%
    }
    },
  [252] = {
    name = "Ondal's Wisdom",
    stats = {
    {id = 1, min = 40, max = 50},  -- +40-50 to Energy
    {id = 127, min = 2, max = 4},  -- +2-4 to All Skills
    {id = 31, min = 450, max = 550},  -- +450-550 Defense
    {id = 35, min = 5, max = 8},  -- Magic Damage Reduced by 5-8
    }
    },
  [253] = {
    name = "Stone Crusher",
    stats = {
    {id = {0,111}, min = 20, max = 30},  -- +20-30 to Strength, Damage +10-30
    {id = 136, min = 10, max = 25},  -- 10-25% Chance of Crushing Blow
    }
    },
  [254] = {
    name = "Mang Song's Lesson",
    stats = {
    {id = {333,334,335,336,86}, min = 7, max = 15},  -- -7-15% to Enemy Fire Resistance, -7-15% to Enemy Lightning Resistance, -7-15% to Enemy Cold Resistance, -7-15% to Enemy Poison Resistance, +10-15 Life after each Kill
    {id = {187,189,190,191,192,193}, min = 5, max = 10},  -- Enemy Cold immunity reduced by 5-10%, Enemy Fire immunity reduced by 5-10%, Enemy Light immunity reduced by 5-10%, Enemy Poison immunity reduced by 5-10%, Enemy Physical immunity reduced by 5-10%, Enemy Magic immunity reduced by 5-10%
    }
    },
  [255] = {
    name = "Cold Crow's Caw",
    stats = {
    {id = 19, min = 75, max = 200},  -- +75-200 to Attack Rating
    {id = 188, min = 2, max = 5, param = 1},  -- +2-5 to Passive and Magic Skills (Amazon Only)
    }
    },
  [256] = {
    name = "Trembling Vortex",
    stats = {
    {id = 331, min = 15, max = 25},  -- +15-25% to Cold Skill Damage
    }
    },
  [257] = {
    name = "Corrupted String",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [258] = {
    name = "Gyro Blaster",
    stats = {
    {id = 97, min = 5, max = 7, param = 182},  -- +5-7 to Electro Ball
    {id = 330, min = 20, max = 30},  -- +20-30% to Lightning Skill Damage
    {id = 51, min = 900, max = 1000},  -- +900-1000 to Maximum Lightning
    {id = 62, min = 4, max = 12},  -- 4-12% Mana stolen per hit
    }
    },
  [259] = {
    name = "Underground",
    stats = {
    {id = 39, min = 10, max = 15},  -- All Resistances +10-15
    {id = 119, min = 75, max = 150},  -- 75-150% Bonus to Attack Rating
    }
    },
  [260] = {
    name = "Eaglehorn",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [261] = {
    name = "Widowmaker",
    stats = {
    {id = 107, min = 3, max = 6, param = 6},  -- +3-6 to Magic Arrow (Amazon only)
    {id = 97, min = 3, max = 5, param = 22},  -- +3-5 to Guided Arrow
    }
    },
  [262] = {
    name = "Windforce",
    stats = {
    {id = 96, min = 20, max = 30},  -- +20-30% Faster Run/Walk
    {id = 62, min = 6, max = 8},  -- 6-8% Mana stolen per hit
    }
    },
  [263] = {
    name = "Shadow Hunter",
    stats = {
    {id = 188, min = 2, max = 4, param = 49},  -- +2-4 to Shadow Disciplines (Assassin Only)
    {id = 192, min = 30, max = 40},  -- Enemy physical immunity reduced by 30-40%
    }
    },
  [264] = {
    name = "Amnesty's Glare",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [265] = {
    name = "Hellrack",
    stats = {
    {id = 119, min = 100, max = 150},  -- 100-150% Bonus to Attack Rating
    {id = 189, min = 20, max = 30},  -- Enemy fire immunity reduced by 20-30%
    }
    },
  [266] = {
    name = "Gut Siphon",
    stats = {
    {id = 83, min = 2, max = 3, param = 6},  -- +2-3 to Assassin Skill Levels
    {id = 60, min = 12, max = 18},  -- 12-18% Life stolen per hit
    {id = 107, min = 1, max = 2, param = 278},  -- +1-2 to Venom (Assassin only)
    }
    },
  [267] = {
    name = "Enlightener",
    stats = {
    {id = 138, min = 1, max = 4},  -- +1-4 to Mana after each Kill
    {id = 9, min = 8, max = 25},  -- +8-25 to Mana
    {id = 329, min = 4, max = 6},  -- +4-6% to Fire Skill Damage
    }
    },
  [268] = {
    name = "Endothermic Stone",
    stats = {
    {id = 27, min = 10, max = 30},  -- Regenerate Mana 10-30%
    {id = {77,105}, min = 10, max = 20},  -- Increase Maximum Mana by 8-20%, +10-20% Faster Cast Rate
    {id = 331, min = 6, max = 8},  -- +6-8% to Cold Skill Damage
    {id = 97, min = 2, max = 3, param = 39},  -- +2-3 to Ice Bolt
    {id = 43, min = 8, max = 13},  -- Cold Resist +8-13%
    }
    },
  [269] = {
    name = "Sensor",
    stats = {
    {id = 31, min = 10, max = 25},  -- +10-25 Defense
    {id = 7, min = 15, max = 20},  -- +15-20 to Life
    {id = 9, min = 20, max = 30},  -- +20-30 to Mana
    }
    },
  [270] = {
    name = "Lightning Rod",
    stats = {
    {id = {334,41}, min = 7, max = 15},  -- -7-15% to Enemy Lightning Resistance, Lightning Resist +10-15%
    {id = 145, min = 1, max = 5},  -- +1-5 Lightning Absorb
    {id = 27, min = 30, max = 40},  -- Regenerate Mana 30-40%
    {id = 190, min = 5, max = 10},  -- Enemy lightning immunity reduced by 5-10%
    }
    },
  [271] = {
    name = "Energizer",
    stats = {
    {id = 9, min = 30, max = 50},  -- +30-50 to Mana
    }
    },
  [272] = {
    name = "The Artemis String",
    stats = {
    {id = 93, min = 10, max = 15},  -- +10-15% Increased Attack Speed
    {id = 122, min = 60, max = 80},  -- +60-80% Damage to Undead
    {id = 121, min = 40, max = 60},  -- +40-60% Damage to Demons
    {id = 2, min = 5, max = 10},  -- +5-10 to Dexterity
    }
    },
  [273] = {
    name = "Pinaka",
    stats = {
    {id = 331, min = 10, max = 15},  -- +10-15% to Cold Skill Damage
    {id = 9, min = 35, max = 45},  -- +35-45 to Mana
    {id = 150, min = 15, max = 25},  -- Slows Target by 15-25%
    }
    },
  [274] = {
    name = "The Pain Producer",
    stats = {
    {id = 93, min = 20, max = 30},  -- +20-30% Increased Attack Speed
    {id = {60,62}, min = 3, max = 5},  -- 3-5% Life stolen per hit, 3-5% Mana stolen per hit
    {id = {34,35}, min = 4, max = 6},  -- Damage Reduced by 4-6, Magic Damage Reduced by 4-6
    }
    },
  [275] = {
    name = "The Poking Pike",
    stats = {
    {id = 93, min = 15, max = 25},  -- +15-25% Increased Attack Speed
    {id = {34,35}, min = 4, max = 6},  -- Damage Reduced by 4-6, Magic Damage Reduced by 4-6
    }
    },
  [276] = {
    name = "Skovos Striker",
    stats = {
    {id = 188, min = 1, max = 2, param = 1},  -- +1-2 to Passive and Magic Skills (Amazon Only)
    {id = 62, min = 4, max = 6},  -- 4-6% Mana stolen per hit
    {id = 96, min = 20, max = 30},  -- +20-30% Faster Run/Walk
    }
    },
  [277] = {
    name = "Risen Phoenix",
    stats = {
    {id = 407, min = 1, max = 3},  -- +1-3 to Fire Skills
    }
    },
  [278] = {
    name = "Glacial Oasis",
    stats = {
    {id = 188, min = 1, max = 3, param = 10},  -- +1-3 to Cold Skills (Sorceress Only)
    {id = {105,1}, min = 20, max = 40},  -- +20-40% Faster Cast Rate, +10-40 to Energy
    {id = 79, min = 25, max = 60},  -- 25-60% Extra Gold from Monsters
    {id = 281, min = 75, max = 150},  -- Summon Damage: +75-150%
    }
    },
  [279] = {
    name = "Thunderous",
    stats = {
    {id = 31, min = 50, max = 175},  -- +50-175 Defense
    {id = 188, min = 2, max = 4, param = 9},  -- +2-4 to Lightning Skills (Sorceress Only)
    }
    },
  [280] = {
    name = "Magic",
    stats = {
    {id = 80, min = 20, max = 60},  -- +20-60% Chance of Higher Quality Items
    {id = {329,331,330}, min = 10, max = 20},  -- +10-20% to Fire Skill Damage, +10-20% to Cold Skill Damage, +10-20% to Lightning Skill Damage
    }
    },
  [281] = {
    name = "The Oculus",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [282] = {
    name = "Windraven",
    stats = {
    {id = 39, min = 15, max = 30},  -- All Resistances +15-30%
    {id = 31, min = 200, max = 400},  -- +200-400 Defense
    {id = 188, min = 1, max = 3, param = 0},  -- +1-3 to Bow and Crossbow Skills (Amazon Only)
    {id = 76, min = 5, max = 10},  -- Increase Maximum Life by 5-10%
    }
    },
  [283] = {
    name = "no item yet",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [284] = {
    name = "no item yet",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [285] = {
    name = "Lycander's Aim",
    stats = {
    {id = 62, min = 5, max = 8},  -- 5-8% Mana stolen per hit
    }
    },
  [286] = {
    name = "Titan's Revenge",
    stats = {
    {id = 60, min = 5, max = 9},  -- 5-9% Life stolen per hit
    }
    },
  [287] = {
    name = "Lycander's Flank",
    stats = {
    {id = 60, min = 5, max = 9},  -- 5-9% Life stolen per hit
    }
    },
  [288] = {
    name = "Above All",
    stats = {
    {id = 107, min = 4, max = 7, param = 58},  -- +4-7 to Energy Shield (Sorceress only)
    {id = 107, min = 3, max = 5, param = 37},  -- +3-5 to Warmth (Sorceress only)
    {id = 77, min = 20, max = 35},  -- Increase Maximum Mana by 20-35%
    {id = {74,286}, min = 5, max = 25},  -- Replenish Life +5-25, Reduce Cooldowns by 10-25%
    {id = 39, min = 5, max = 15},  -- All Resistances +5-15%
    }
    },
  [289] = {
    name = "Eschuta's Temper",
    stats = {
    {id = 83, min = 1, max = 3, param = 1},  -- +1-3 to Sorceress Skill Levels
    {id = {329,330}, min = 10, max = 20},  -- +10-20% to Fire Skill Damage, +10-20% to Lightning Skill Damage
    {id = 1, min = 20, max = 30},  -- +20-30 to Energy
    }
    },
  [290] = {
    name = "Belphegor's Beating",
    stats = {
    {id = 139, min = 20, max = 30},  -- +20-30 Life after each Demon Kill
    {id = 31, min = 200, max = 400},  -- +200-400 Defense
    {id = 36, min = 10, max = 20},  -- Damage Reduced by 10-20%
    }
    },
  [291] = {
    name = "Tempest Fiery",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    {id = 329, min = 10, max = 15},  -- +10-15% to Fire Skill Damage
    {id = 107, min = 3, max = 5, param = 62},  -- +3-5 to Hydra (Sorceress only)
    {id = 39, min = 25, max = 60},  -- Fire Resist +25-60%
    {id = 142, min = 5, max = 10},  -- Fire Absorb 5-10%
    }
    },
  [292] = {
    name = "Death's Fathom",
    stats = {
    {id = 331, min = 15, max = 30},  -- +15-30% to Cold Skill Damage
    {id = {39,41}, min = 25, max = 40},  -- Fire Resist +25-40%, Lightning Resist +25-40%
    }
    },
  [293] = {
    name = "Blood Raven's Charge",
    stats = {
    {id = 119, min = 200, max = 300},  -- 200-300% Bonus to Attack Rating
    {id = 107, min = 3, max = 6, param = 16},  -- +3-6 to Exploding Arrow (Amazon only)
    {id = 188, min = 2, max = 4, param = 0},  -- +2-4 to Bow and Crossbow Skills (Amazon Only)
    {id = 83, min = 1, max = 2, param = 0},  -- +1-2 to Amazon Skill Levels
    {id = 2, min = 20, max = 40},  -- +20-40 to Dexterity
    {id = 415, min = 5, max = 10},  -- Increase charm max weight by 5-10
    }
    },
  [294] = {
    name = "Shredwind Hell",
    stats = {
    {id = {119,121}, min = 100, max = 200},  -- 100-200% Bonus to Attack Rating, +125-200% Damage to Demons
    {id = 188, min = 1, max = 3, param = 0},  -- +1-3 to Bow and Crossbow Skills (Amazon Only)
    }
    },
  [295] = {
    name = "Thunderstroke",
    stats = {
    {id = 188, min = 2, max = 4, param = 2},  -- +2-4 to Javelin and Spear Skills (Amazon Only)
    {id = 107, min = 1, max = 3, param = 35},  -- +1-3 to Lightning Fury (Amazon only)
    }
    },
  [296] = {
    name = "Stoneraven",
    stats = {
    {id = 39, min = 30, max = 50},  -- All Resistances +30-50%
    {id = 31, min = 400, max = 600},  -- +400-600 Defense
    {id = 188, min = 1, max = 3, param = 2},  -- +1-3 to Javelin and Spear Skills (Amazon Only)
    }
    },
  [297] = {
    name = "Biggin's Bonnet",
    stats = {
    {id = 34, min = 1, max = 3},  -- Damage Reduced by 1-3
    }
    },
  [298] = {
    name = "Tarnhelm",
    stats = {
    {id = 79, min = 15, max = 20},  -- 15-20% Extra Gold from Monsters
    {id = 80, min = 25, max = 50},  -- +25-50% Chance of Higher Quality Items
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [299] = {
    name = "Coif of Glory",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [300] = {
    name = "Duskdeep",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [301] = {
    name = "Howltusk",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [302] = {
    name = "Undead Crown",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [303] = {
    name = "The Face of Horror",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [304] = {
    name = "Greyform",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [305] = {
    name = "Blinkbat's Form",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [306] = {
    name = "The Centurion",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [307] = {
    name = "Twitchthroe",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [308] = {
    name = "Darkglow",
    stats = {
    {id = {85,35}, min = 2, max = 5},  -- +2-5% to Experience Gained, Magic Damage Reduced by 3-5
    }
    },
  [309] = {
    name = "Hawkmail",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [310] = {
    name = "Sparking Mail",
    stats = {
    {id = 128, min = 10, max = 14},  -- Attacker Takes Lightning Damage of 10-14
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [311] = {
    name = "Venom Ward",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [312] = {
    name = "Iceblink",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [313] = {
    name = "Boneflesh",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [314] = {
    name = "Rockfleece",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [315] = {
    name = "Rattlecage",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [316] = {
    name = "Goldskin",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [317] = {
    name = "Silks of the Victor",
    stats = {
    {id = {34,35}, min = 5, max = 7},  -- Damage Reduced by 5-7, Magic Damage Reduced by 5-7
    }
    },
  [318] = {
    name = "Heavenly Garb",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [319] = {
    name = "Pelta Lunata",
    stats = {
    {id = 388, min = 2, max = 3},  -- Smite: 2-3
    }
    },
  [320] = {
    name = "Umbral Disk",
    stats = {
    {id = 388, min = 3, max = 4},  -- Smite: 3-4
    }
    },
  [321] = {
    name = "Stormguild",
    stats = {
    {id = 388, min = 3, max = 4},  -- Smite: 3-4
    }
    },
  [322] = {
    name = "Steelclash",
    stats = {
    {id = 388, min = 7, max = 8},  -- Smite: 7-8
    }
    },
  [323] = {
    name = "Bverrit Keep",
    stats = {
    {id = 388, min = 6, max = 7},  -- Smite: 6-7
    }
    },
  [324] = {
    name = "The Ward",
    stats = {
    {id = 39, min = 30, max = 50},  -- All Resistances +30-50%
    {id = 388, min = 5, max = 6},  -- Smite: 5-6
    }
    },
  [325] = {
    name = "The Hand of Broc",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [326] = {
    name = "Bloodfist",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 34, min = 1, max = 3},  -- Damage Reduced by 1-3
    }
    },
  [327] = {
    name = "Chance Guards",
    stats = {
    {id = 80, min = 25, max = 40},  -- +25-40% Chance of Higher Quality Items
    }
    },
  [328] = {
    name = "Magefist (fire)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [329] = {
    name = "Frostburn",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [330] = {
    name = "Hotspur",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [331] = {
    name = "Gorefoot",
    stats = {
    {id = {140,85}, min = 3, max = 5},  -- Open Wounds Blood Visual +3-5, +2-5% to Experience Gained
    }
    },
  [332] = {
    name = "Treads of Cthon",
    stats = {
    {id = 357, min = 5, max = 10},  -- +5-10% to Magic Skill Damage
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [333] = {
    name = "Goblin Toe",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [334] = {
    name = "Tearhaunch",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [335] = {
    name = "Lenymo",
    stats = {
    {id = 85, min = 8, max = 10},  -- +8-10% to Experience Gained
    }
    },
  [336] = {
    name = "Snakecord",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [337] = {
    name = "Nightsmoke",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [338] = {
    name = "Goldwrap",
    stats = {
    {id = 79, min = 12, max = 20},  -- 12-20% Extra Gold from Monsters
    }
    },
  [339] = {
    name = "Bladebuckle",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [340] = {
    name = "Wormskull",
    stats = {
    {id = 124, min = 50, max = 100},  -- +50-100 to Attack Rating against Undead
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    }
    },
  [341] = {
    name = "Wall of the Eyeless",
    stats = {
    {id = 85, min = 2, max = 5},  -- +2-5% to Experience Gained
    {id = 388, min = 3, max = 6},  -- Smite: 3-6
    }
    },
  [342] = {
    name = "Swordback Hold",
    stats = {
    {id = 135, min = 15, max = 25},  -- 15-25% Chance of Open Wounds
    {id = 140, min = 3, max = 5},  -- Open Wounds Blood Visual +3-5
    {id = 388, min = 11, max = 12},  -- Smite: 11-12
    }
    },
  [343] = {
    name = "Peasant Crown",
    stats = {
    {id = 74, min = 6, max = 12},  -- Replenish Life +6-12
    }
    },
  [344] = {
    name = "Rockstopper",
    stats = {
    {id = {41,43}, min = 20, max = 40},  -- Lightning Resist +20-40%, Cold Resist +20-40%
    {id = 39, min = 20, max = 50},  -- Fire Resist +20-50%
    }
    },
  [345] = {
    name = "Stealskull",
    stats = {
    {id = 80, min = 30, max = 50},  -- +30-50% Chance of Higher Quality Items
    }
    },
  [346] = {
    name = "Darksight Helm",
    stats = {
    {id = 39, min = 20, max = 40},  -- Fire Resist +20-40%
    }
    },
  [347] = {
    name = "Valkyrie Wing",
    stats = {
    {id = 83, min = 1, max = 2, param = 0},  -- +1-2 to Amazon Skill Levels
    {id = 138, min = 2, max = 4},  -- +2-4 to Mana after each Kill
    }
    },
  [348] = {
    name = "Crown of Thieves",
    stats = {
    {id = 60, min = 9, max = 12},  -- 9-12% Life stolen per hit
    {id = 79, min = 20, max = 25},  -- 20-25% Extra Gold from Monsters
    }
    },
  [349] = {
    name = "Blackhorn's Face",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [350] = {
    name = "The Spirit Shroud",
    stats = {
    {id = 35, min = 7, max = 11},  -- Magic Damage Reduced by 7-11
    }
    },
  [351] = {
    name = "Skin of the Vipermagi",
    stats = {
    {id = 39, min = 20, max = 35},  -- All Resistances +20-35%
    {id = 35, min = 9, max = 13},  -- Magic Damage Reduced by 9-13
    }
    },
  [352] = {
    name = "Skin of the Flayed One",
    stats = {
    {id = 74, min = 15, max = 25},  -- Replenish Life +15-25
    {id = 60, min = 5, max = 7},  -- 5-7% Life stolen per hit
    }
    },
  [353] = {
    name = "Iron Pelt",
    stats = {
    {id = 35, min = 10, max = 16},  -- Magic Damage Reduced by 10-16
    {id = 34, min = 15, max = 20},  -- Damage Reduced by 15-20
    }
    },
  [354] = {
    name = "Spirit Forge",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [355] = {
    name = "Crow Caw",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [356] = {
    name = "Shaftstop",
    stats = {
    {id = 34, min = 9, max = 13},  -- Damage Reduced by 9-13
    }
    },
  [357] = {
    name = "Duriel's Shell",
    stats = {
    {id = {34,35}, min = 8, max = 12},  -- Damage Reduced by 8-12, Magic Damage Reduced by 8-12
    }
    },
  [358] = {
    name = "Skullder's Ire",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [359] = {
    name = "Guardian Angel",
    stats = {
    {id = {34,35}, min = 7, max = 15},  -- Damage Reduced by 7-15, Magic Damage Reduced by 7-15
    }
    },
  [360] = {
    name = "Toothrow",
    stats = {
    {id = 78, min = 20, max = 40},  -- Attacker Takes Damage of 20-40
    {id = 135, min = 10, max = 15},  -- 10-15% Chance of Open Wounds
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [361] = {
    name = "Atma's Wail",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [362] = {
    name = "Black Hades",
    stats = {
    {id = 123, min = 200, max = 250},  -- +200-250 to Attack Rating against Demons
    {id = 121, min = 30, max = 60},  -- +30-60% Damage to Demons
    {id = 34, min = 10, max = 15},  -- Damage Reduced by 10-15
    }
    },
  [363] = {
    name = "Corpsemourn",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [364] = {
    name = "Que-Hegan's Wisdom",
    stats = {
    {id = 35, min = 6, max = 10},  -- Magic Damage Reduced by 6-10
    }
    },
  [365] = {
    name = "Visceratuant",
    stats = {
    {id = 388, min = 12, max = 13},  -- Smite: 12-13
    }
    },
  [366] = {
    name = "Moser's Blessed Circle",
    stats = {
    {id = 388, min = 14, max = 15},  -- Smite: 14-15
    {id = {34,35}, min = 5, max = 10},  -- Damage Reduced by 5-10, Magic Damage Reduced by 5-10
    }
    },
  [367] = {
    name = "Stormchaser",
    stats = {
    {id = 388, min = 11, max = 15},  -- Smite: 11-15
    }
    },
  [368] = {
    name = "Tiamat's Rebuke",
    stats = {
    {id = 39, min = 25, max = 35},  -- All Resistances +25-35%
    {id = 388, min = 26, max = 27},  -- Smite: 26-27
    }
    },
  [369] = {
    name = "Gerke's Sanctuary",
    stats = {
    {id = {34,388}, min = 15, max = 20},  -- Damage Reduced by 15-20
    {id = 388, min = 19, max = 20},  -- Smite: 19-20
    {id = 35, min = 18, max = 23},  -- Magic Damage Reduced by 18-23
    {id = 39, min = 25, max = 35},  -- All Resistances +25-35%
    }
    },
  [370] = {
    name = "Radament's Sphere",
    stats = {
    {id = 388, min = 16, max = 17},  -- Smite: 16-17
    }
    },
  [371] = {
    name = "Venom Grip",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [372] = {
    name = "Gravepalm",
    stats = {
    {id = {122,124}, min = 100, max = 200},  -- +100-200% Damage to Undead, +100-200 to Attack Rating against Undead
    }
    },
  [373] = {
    name = "Ghoulhide",
    stats = {
    {id = 62, min = 4, max = 5},  -- 4-5% Mana stolen per hit
    }
    },
  [374] = {
    name = "Lava Gout",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [375] = {
    name = "Hellmouth",
    stats = {
    {id = 35, min = 4, max = 6},  -- Magic Damage Reduced by 4-6
    }
    },
  [376] = {
    name = "Infernostride",
    stats = {
    {id = 79, min = 10, max = 20},  -- 10-20% Extra Gold from Monsters
    }
    },
  [377] = {
    name = "Waterwalk",
    stats = {
    {id = 7, min = 45, max = 65},  -- +45-65 to Life
    {id = 74, min = 5, max = 10},  -- Replenish Life +5-10
    }
    },
  [378] = {
    name = "Silkweave",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [379] = {
    name = "War Traveler",
    stats = {
    {id = 80, min = 30, max = 50},  -- +30-50% Chance of Higher Quality Items
    {id = 78, min = 5, max = 10},  -- Attacker Takes Damage of 5-10
    }
    },
  [380] = {
    name = "Gore Rider",
    stats = {
    {id = 135, min = 5, max = 10},  -- 5-10% Chance of Open Wounds
    {id = {34,35}, min = 0, max = 5},  -- Damage Reduced by 0-5, Magic Damage Reduced by 0-5
    }
    },
  [381] = {
    name = "String of Ears",
    stats = {
    {id = {35,36}, min = 10, max = 15},  -- Magic Damage Reduced by 10-15, Damage Reduced by 10-15%
    {id = 60, min = 6, max = 8},  -- 6-8% Life stolen per hit
    }
    },
  [382] = {
    name = "Razortail",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [383] = {
    name = "Gloom's Trap",
    stats = {
    {id = {77,3}, min = 15, max = 20},  -- Increase Maximum Mana by 15-20%, +15-20 to Vitality
    {id = 62, min = 5, max = 8},  -- 5-8% Mana stolen per hit
    }
    },
  [384] = {
    name = "Snowclash",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [385] = {
    name = "Thundergod's Vigor",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [386] = {
    name = "Vampire Gaze",
    stats = {
    {id = {60,62}, min = 6, max = 8},  -- 6-8% Life stolen per hit, 6-8% Mana stolen per hit
    {id = 36, min = 15, max = 20},  -- Damage Reduced by 15-20%
    {id = 35, min = 10, max = 15},  -- Magic Damage Reduced by 10-15
    }
    },
  [387] = {
    name = "Lidless Wall",
    stats = {
    {id = 138, min = 3, max = 5},  -- +3-5 to Mana after each Kill
    {id = 388, min = 14, max = 20},  -- Smite: 14-20
    }
    },
  [388] = {
    name = "Lance Guard",
    stats = {
    {id = 388, min = 35, max = 36},  -- Smite: 35-36
    }
    },
  [389] = {
    name = "Primal Power",
    stats = {
    {id = 3, min = 5, max = 15},  -- +5-15 to Vitality
    }
    },
  [390] = {
    name = "Murder of Crows",
    stats = {
    {id = 283, min = 1, max = 2},  -- +1-2 Summoning Power
    {id = 403, min = 45, max = 55},  -- Increase Raven Damage by 45-55%
    }
    },
  [391] = {
    name = "Cheetah Stance",
    stats = {
    {id = {96,93,105,0}, min = 5, max = 10},  -- +5-10% Faster Run/Walk, +5-10% Increased Attack Speed, +5-10% Faster Cast Rate, + -5-10 to Strength
    {id = 99, min = 10, max = 20},  -- +10-20% Faster Hit Recovery
    }
    },
  [392] = {
    name = "Uproar",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [393] = {
    name = "Flame Spirit",
    stats = {
    {id = 93, min = 10, max = 20},  -- +10-20% Increased Attack Speed
    }
    },
  [394] = {
    name = "Toothless Maw",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [395] = {
    name = "Darkfear",
    stats = {
    {id = 156, min = 5, max = 10},  -- +5-10% Chance of Piercing Attack
    }
    },
  [396] = {
    name = "Thermal Shock",
    stats = {
    {id = {335,333}, min = 5, max = 10},  -- -5-10% to Enemy Cold Resistance, -5-10% to Enemy Fire Resistance
    }
    },
  [397] = {
    name = "Nature's Protector",
    stats = {
    {id = 39, min = 10, max = 15},  -- All Resistances +10-15%
    }
    },
  [398] = {
    name = "Reckless Fury",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [399] = {
    name = "Siggard's Stealth",
    stats = {
    {id = 388, min = 6, max = 7},  -- Smite: 6-7
    {id = 96, min = 5, max = 10},  -- +5-10% Faster Run/Walk
    }
    },
  [400] = {
    name = "Caster's Courage",
    stats = {
    {id = 388, min = 8, max = 9},  -- Smite: 8-9
    {id = 1, min = 10, max = 15},  -- +10-15 to Energy
    }
    },
  [401] = {
    name = "Briar Patch",
    stats = {
    {id = 388, min = 10, max = 11},  -- Smite: 10-11
    {id = 3, min = 10, max = 15},  -- +10-15 to Vitality
    }
    },
  [402] = {
    name = "Ricochet",
    stats = {
    {id = 388, min = 12, max = 13},  -- Smite: 12-13
    {id = 93, min = 10, max = 20},  -- +10-20% Increased Attack Speed
    }
    },
  [403] = {
    name = "Favored Path",
    stats = {
    {id = 388, min = 16, max = 17},  -- Smite: 16-17
    {id = 39, min = 10, max = 20},  -- All Resistances +10-20%
    {id = {329,330,331}, min = 0, max = 10},  -- +0-10% to Fire Skill Damage, +0-10% to Lightning Skill Damage, +0-10% to Cold Skill Damage
    }
    },
  [404] = {
    name = "Old Friend",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [405] = {
    name = "Decomposed",
    stats = {
    {id = 45, min = 20, max = 30},  -- Poison Resist +20-30%
    {id = 102, min = 16, max = 27},  -- +16-27% Faster Block Rate
    {id = 43, min = 10, max = 15},  -- Cold Resist +10-15%
    }
    },
  [406] = {
    name = "Tangled Fellow",
    stats = {
    {id = 9, min = 15, max = 25},  -- +15-25 to Mana
    {id = 20, min = 11, max = 12},  -- +3-4% Chance to Block (value 11-12)
    }
    },
  [407] = {
    name = "Stubborn Stone",
    stats = {
    {id = 284, min = 6, max = 8},  -- Summon Max HP: +6-8%
    {id = 7, min = 15, max = 25},  -- +15-25 to Life
    }
    },
  [408] = {
    name = "Spiked Dreamcatcher",
    stats = {
    {id = {332,357}, min = 4, max = 6},  -- +4-6% to Poison Skill Damage, +4-6% to Magic Skill Damage
    {id = 78, min = 6, max = 7},  -- Attacker Takes Damage of 6-7
    {id = 2, min = 8, max = 14},  -- +8-14 to Dexterity
    }
    },
  [409] = {
    name = "Journeyman's Band",
    stats = {
    {id = 415, min = 3, max = 5},  -- Increase charm max weight by 3-5
    {id = {142,148,144}, min = 1, max = 3},  -- Fire Absorb 1-3%, Cold Absorb 1-3%, Lightning Absorb 1-3%
    {id = 0, min = 10, max = 15},  -- +10-15 to Strength
    }
    },
  [410] = {
    name = "Hygieia's Purity",
    stats = {
    {id = 415, min = 3, max = 5},  -- Increase charm max weight by 3-5
    {id = 151, min = 5, max = 8, param = 109},  -- Level 5-8 Clear Ailment Aura When Equipped
    {id = 286, min = 30, max = 40},  -- Reduce Cooldowns by 30-40%
    {id = 276, min = 1, max = 3},  -- +1-3 Spell Power
    }
    },
  [411] = {
    name = "Kira's Guardian",
    stats = {
    {id = 39, min = 50, max = 70},  -- All Resistances +50-70%
    {id = 415, min = 3, max = 5},  -- Increase charm max weight by 3-5
    }
    },
  [412] = {
    name = "Griffon's Eye",
    stats = {
    {id = 330, min = 10, max = 15},  -- +10-15% to Lightning Skill Damage
    {id = 334, min = 15, max = 20},  -- -15-20% to Enemy Lightning
    {id = 415, min = 3, max = 5},  -- Increase charm max weight by 3-5
    }
    },
  [413] = {
    name = "Harlequin Crest",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [414] = {
    name = "Tarnhelm's Revenge",
    stats = {
    {id = 0, min = 20, max = 35},  -- +20-35 to Strength
    {id = {187,189,190,191,192,193}, min = 5, max = 15},  -- Enemy cold immunity reduced by 5-15%, Enemy Fire Immunity Reduced by 5-15%, Enemy Lighting Immunity Reduced by 5-15%, Enemy Poison Immunity Reduced by 5-15%, Enemy Physical Immunity Reduced by 5-15%, Enemy Magic Immunity Reduced by 5-15%
    {id = {396,397}, min = 4, max = 8},  -- +4-8 Mana Stolen per Hit, +4-8 Life Stolen Per Hit
    }
    },
  [415] = {
    name = "Steel Shade",
    stats = {
    {id = 143, min = 5, max = 11},  -- +5-11 Fire Absorb
    {id = 62, min = 4, max = 8},  -- 4-8% Mana stolen per hit
    {id = 74, min = 10, max = 18},  -- Replenish Life +10-18
    }
    },
  [416] = {
    name = "Veil of Steel",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [417] = {
    name = "Nightwing's Veil",
    stats = {
    {id = 2, min = 10, max = 20},  -- +10-20 to Dexterity
    {id = 149, min = 5, max = 9},  -- +5-9 Cold Absorb
    {id = 331, min = 8, max = 15},  -- +8-15% to Cold Skill Damage
    }
    },
  [418] = {
    name = "Crown of Ages",
    stats = {
    {id = 39, min = 20, max = 30},  -- All Resistances +20-30%
    {id = 36, min = 10, max = 15},  -- Damage Reduced by 10-15%
    }
    },
  [419] = {
    name = "Andariel's Visage",
    stats = {
    {id = 0, min = 25, max = 30},  -- +25-30 to Strength
    {id = 60, min = 8, max = 10},  -- 8-10% Life stolen per hit
    }
    },
  [420] = {
    name = "Ormus' Robes",
    stats = {
    {id = {329,330,331,27}, min = 10, max = 15},  -- +10-15% to Fire Skill Damage, +10-15% to Lightning Skill Damage, +10-15% to Cold Skill Damage, Regenerate Mana 10-15%
    }
    },
  [421] = {
    name = "Arcane Protector",
    stats = {
    {id = 39, min = 15, max = 20},  -- All Resistances +15-20%
    {id = 107, min = 3, max = 5, param = 58},  -- +3-5 to Energy Shield (Sorceress only)
    {id = 35, min = 5, max = 10},  -- Magic Damage Reduced by 5-10
    }
    },
  [422] = {
    name = "Spell Splitter",
    stats = {
    {id = 276, min = 1, max = 3},  -- +1-3 Spell Power
    {id = 286, min = 25, max = 40},  -- Reduce Cooldowns by 25-40%
    {id = {333,334,335,336}, min = 15, max = 25},  -- -15-25% to Enemy Fire Resistance, -15-25% to Enemy Lightning Resistance, -15-25% to Enemy Cold Resistance, -15-25% to Enemy Poison Resistance
    {id = 80, min = 25, max = 35},  -- +25-35% Chance of Higher Quality Items
    {id = 415, min = 3, max = 6},  -- Increase charm max weight by 3-6
    }
    },
  [423] = {
    name = "The Gladiator's Bane",
    stats = {
    {id = {34,35}, min = 15, max = 20},  -- Damage Reduced by 15-20, Magic Damage Reduced by 15-20
    }
    },
  [424] = {
    name = "Balled Lightning",
    stats = {
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25
    {id = 79, min = 10, max = 20},  -- 10-20% Extra Gold from Monsters
    {id = 96, min = 20, max = 30},  -- +20-30% Faster Run/Walk
    {id = 27, min = 25, max = 50},  -- Regenerate Mana 25-50%
    }
    },
  [425] = {
    name = "Giant Crusher",
    stats = {
    {id = 83, min = 1, max = 2, param = 4},  -- +1-2 to Barbarian Skill Levels
    {id = {262,36}, min = 5, max = 10},  -- Increase Strength by +5-10%, Damage Reduced by 5-10%
    }
    },
  [426] = {
    name = "Chained Lightning",
    stats = {
    {id = 217, min = 1, max = 2},  -- +1-2 Mana per level
    {id = 107, min = 3, max = 6, param = 53},  -- +3-6 to Chain Lightning (Sorceress only)
    }
    },
  [427] = {
    name = "Savitr's Garb",
    stats = {
    {id = 99, min = 12, max = 24},  -- +12-24% Faster Hit Recovery
    {id = 286, min = 10, max = 20},  -- Reduce Cooldowns by 10-20%
    {id = 278, min = 3, max = 5},  -- +3-5 Combat Power
    {id = 119, min = 5, max = 10},  -- 5-10% Bonus to Attack Rating
    }
    },
  [428] = {
    name = "Arkaine's Valor",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    {id = {34,35}, min = 20, max = 25},  -- Damage Reduced by 20-25, Magic Damage Reduced by 20-25
    {id = 96, min = 20, max = 30},  -- +20-30% Faster Run/Walk
    }
    },
  [429] = {
    name = "Strength Unleashed",
    stats = {
    {id = {262,34,35}, min = 5, max = 15},  -- Increase Strength by +5-15%, Damage Reduced by 5-15, Magic Damage Reduced by 5-15
    {id = 278, min = 1, max = 3},  -- +1-3 Combat Power
    {id = 76, min = 3, max = 5},  -- Increase Maximum Life by 3-5%
    {id = 415, min = 2, max = 4},  -- Increase charm max weight by 2-4
    }
    },
  [430] = {
    name = "Leviathan",
    stats = {
    {id = 36, min = 15, max = 25},  -- Damage Reduced by 15-25%
    {id = 0, min = 40, max = 50},  -- +40-50 to Strength
    }
    },
  [431] = {
    name = "Duality",
    stats = {
    {id = {136,187,189,190,191,192,193}, min = 10, max = 20},  -- 10-20% Chance of Crushing Blow, Enemy Cold Immunity Reduced by 10-20%, Enemy Fire Immunity Reduced by 10-20%, Enemy Lighting Immunity Reduced by 10-20%, Enemy Poison Immunity Reduced by 10-20%, Enemy Physical Immunity Reduced by 10-20%, Enemy Magic Immunity Reduced by 10-20%
    {id = 286, min = 15, max = 25},  -- Reduce Cooldowns by 15-25%
    }
    },
  [432] = {
    name = "Steel Carapace",
    stats = {
    {id = 34, min = 9, max = 14},  -- Damage Reduced by 9-14
    {id = 43, min = 40, max = 60},  -- Cold Resist +40-60%
    {id = 27, min = 10, max = 15},  -- Regenerate Mana 10-15%
    }
    },
  [433] = {
    name = "Tyrael's Might",
    stats = {
    {id = 121, min = 50, max = 100},  -- +50-100% Damage to Demons
    {id = 39, min = 20, max = 30},  -- All Resistances +20-30%
    {id = 415, min = 5, max = 10},  -- Increase charm max weight by 5-10
    {id = 97, min = 3, max = 7, param = 100},  -- +3-7 to Consecrated Ground
    {id = 142, min = 2, max = 5},  -- +2-5% Magic, Fire, Light, Cold Absorb
    }
    },
  [434] = {
    name = "Spiritual Protector",
    stats = {
    {id = 7, min = 50, max = 100},  -- +50-100 to Life
    {id = 76, min = 5, max = 10},  -- Increase Maximum Life by 5-10%
    {id = 187, min = 30, max = 50},  -- Enemy cold immunity reduced by 30-50%
    {id = 40, min = 3, max = 5},  -- +3-5% to Maximum Fire Resist
    }
    },
  [435] = {
    name = "Cleansing Ward",
    stats = {
    {id = {262,263,264,265}, min = 3, max = 5},  -- Increase Strength by +3-5%, Increase Dexterity by +3-5%, Increase Vitality by +3-5%, Increase Energy by +3-5%
    {id = 388, min = 36, max = 37},  -- Smite: 36-37
    }
    },
  [436] = {
    name = "Blackoak Shield",
    stats = {
    {id = 388, min = 39, max = 40},  -- Smite: 39-40
    }
    },
  [437] = {
    name = "Astrogha's Web",
    stats = {
    {id = 86, min = 3, max = 7},  -- +3-7 Life after each Kill
    {id = {138,40}, min = 3, max = 5},  -- +3-5 to Mana after each Kill, +1-5% to Maximum Fire Resist
    {id = 283, min = 1, max = 3},  -- +1-3 Summoning Power
    {id = 105, min = 15, max = 25},  -- +15-25% Faster Cast Rate
    {id = 388, min = 41, max = 44},  -- Smite: 41-44
    }
    },
  [438] = {
    name = "Stormshield",
    stats = {
    {id = 388, min = 60, max = 61},  -- Smite: 60-61
    {id = 34, min = 7, max = 13},  -- Damage Reduced by 7-13
    }
    },
  [439] = {
    name = "Medusa's Gaze",
    stats = {
    {id = 60, min = 5, max = 9},  -- 5-9% Life stolen per hit
    {id = 43, min = 40, max = 80},  -- Cold Resist +40-80%
    {id = 388, min = 48, max = 49},  -- Smite: 48-49
    }
    },
  [440] = {
    name = "Spirit Ward",
    stats = {
    {id = 149, min = 6, max = 11},  -- +6-11 Cold Absorb
    {id = 39, min = 30, max = 40},  -- All Resistances +30-40%
    {id = 20, min = 44, max = 54},  -- 20-30% Chance to Block (value 44-54)
    {id = 388, min = 42, max = 43},  -- Smite: 42-43
    {id = 35, min = 8, max = 10},  -- Magic Damage Reduced by 8-10
    }
    },
  [441] = {
    name = "Indra's Mark",
    stats = {
    {id = 330, min = 5, max = 15},  -- +5-15% to Lightning Skill Damage
    {id = 286, min = 10, max = 20},  -- Reduce Cooldowns by 10-20%
    {id = 144, min = 5, max = 10},  -- Lightning Absorb 5-10%
    }
    },
  [442] = {
    name = "Dracul's Grasp",
    stats = {
    {id = {60,86}, min = 7, max = 10},  -- 7-10% Life stolen per hit, +5-10 Life after each Kill
    {id = 0, min = 10, max = 15},  -- +10-15 to Strength
    }
    },
  [443] = {
    name = "Soul Drainer",
    stats = {
    {id = {60,62}, min = 4, max = 7},  -- 4-7% Life stolen per hit, 4-7% Mana stolen per hit
    {id = 97, min = 3, max = 10, param = 386},  -- +3-10 to Unholy Barrage
    }
    },
  [444] = {
    name = "Carthas's Presence",
    stats = {
    {id = {85,74,286}, min = 5, max = 10},  -- +5-10% to Experience Gained, Replenish Life +5-10, Reduce Cooldowns by 5-10%
    {id = {333,334,335}, min = 10, max = 15},  -- -10-15% to Enemy Fire Resistance, -10-15% to Enemy Lightning Resistance, -10-15% to Enemy Cold Resistance
    }
    },
  [445] = {
    name = "Steelrend",
    stats = {
    {id = 0, min = 15, max = 20},  -- +15-20 to Strength
    {id = 151, min = 5, max = 7, param = 98},  -- Level 5-7 Might Aura When Equipped
    {id = 34, min = 5, max = 10},  -- Damage Reduced by 5-10
    }
    },
  [446] = {
    name = "Mana Wyrm",
    stats = {
    {id = 96, min = 10, max = 20},  -- +10-20% Faster Run/Walk
    {id = {39,41}, min = 10, max = 15},  -- Fire Resist +10-15%, Lightning Resist +10-15%
    }
    },
  [447] = {
    name = "Sandstorm Trek",
    stats = {
    {id = 9, min = 25, max = 50},  -- +25-50 to Mana
    {id = 45, min = 40, max = 70},  -- Poison Resist +40-70%
    {id = {0,3}, min = 10, max = 15},  -- +10-15 to Strength, +10-15 to Vitality
    {id = 34, min = 3, max = 7},  -- Damage Reduced by 3-7
    }
    },
  [448] = {
    name = "Marrowwalk",
    stats = {
    {id = 74, min = 3, max = 10},  -- Replenish Life +3-10
    {id = 0, min = 10, max = 20},  -- +10-20 to Strength
    {id = 107, min = 1, max = 2, param = 69},  -- +1-2 to Summon Mastery (Necromancer only)
    }
    },
  [449] = {
    name = "Crimson Shift",
    stats = {
    {id = {39,41,43}, min = 15, max = 25},  -- Fire Resist +15-25%, Lightning Resist +15-25%, Cold Resist +15-25%
    {id = 19, min = 150, max = 250},  -- +150-250 to Attack Rating
    {id = 34, min = 8, max = 12},  -- Damage Reduced by 8-12
    }
    },
  [450] = {
    name = "Lelantus's Frenzy",
    stats = {
    {id = {86,138}, min = 2, max = 5},  -- +2-5 Life after each Kill, +2-5 to Mana after each Kill
    {id = 278, min = 1, max = 2},  -- +1-2 Combat Power
    {id = {34,35}, min = 6, max = 10},  -- Damage Reduced by 6-10, Magic Damage Reduced by 6-10
    }
    },
  [451] = {
    name = "Arachnid Mesh",
    stats = {
    {id = 97, min = 1, max = 3, param = 183},  -- +1-3 to Arachnophobia
    }
    },
  [452] = {
    name = "Nosferatu's Coil",
    stats = {
    {id = 60, min = 5, max = 7},  -- 5-7% Life stolen per hit
    }
    },
  [453] = {
    name = "Verdungo's Hearty Cord",
    stats = {
    {id = 3, min = 30, max = 40},  -- +30-40 to Vitality
    {id = 36, min = 10, max = 15},  -- Damage Reduced by 10-15%
    {id = 74, min = 10, max = 13},  -- Replenish Life +10-13
    }
    },
  [454] = {
    name = "Magni's Warband",
    stats = {
    {id = 0, min = 25, max = 45},  -- +25-45 to Strength
    {id = 278, min = 4, max = 7},  -- +4-7 Combat Power
    {id = 99, min = 12, max = 24},  -- +12-24% Faster Hit Recovery
    }
    },
  [455] = {
    name = "Arcanist's Safeguard",
    stats = {
    {id = 99, min = 12, max = 24},  -- +12-24% Faster Hit Recovery
    {id = 7, min = 75, max = 125},  -- +75-125 to Life
    }
    },
  [456] = {
    name = "Giant Skull",
    stats = {
    {id = 0, min = 25, max = 35},  -- +25-35 to Strength
    }
    },
  [457] = {
    name = "Head Hunter's Glory",
    stats = {
    {id = 32, min = 300, max = 350},  -- +300-350 Defense vs. Missile
    {id = 45, min = 30, max = 40},  -- Poison Resist +30-40%
    {id = 39, min = 20, max = 30},  -- Fire Resist +20-30%
    {id = 86, min = 5, max = 7},  -- +5-7 Life after each Kill
    {id = 388, min = 24, max = 38},  -- Smite: 24-38
    }
    },
  [458] = {
    name = "Spike Thorn",
    stats = {
    {id = 36, min = 15, max = 20},  -- Damage Reduced by 15-20%
    {id = 388, min = 75, max = 76},  -- Smite: 75-76
    {id = 151, min = 15, max = 20, param = 103},  -- Level 15-20 Thorns Aura When Equipped
    }
    },
  [459] = {
    name = "Flame of Combat",
    stats = {
    {id = {278,283}, min = 1, max = 3},  -- +1-3 Combat Power, +1-3 Summoning Power
    {id = 329, min = 10, max = 25},  -- +10-25% to Fire Skill Damage
    }
    },
  [460] = {
    name = "Mystic Command",
    stats = {
    {id = {276,283}, min = 1, max = 3},  -- +1-3 Spell Power, +1-3 Summoning Power
    }
    },
  [461] = {
    name = "Rama's Protector",
    stats = {
    {id = 83, min = 1, max = 2, param = 5},  -- +1-2 to Druid Skill Levels
    {id = 39, min = 10, max = 20},  -- All Resistances +10-20%
    {id = 76, min = 5, max = 10},  -- Increase Maximum Life by 5-10%
    {id = {34,35}, min = 3, max = 5},  -- Damage Reduced by 3-5, Magic Damage Reduced by 3-5
    }
    },
  [462] = {
    name = "Snow Spirit",
    stats = {
    {id = 43, min = 30, max = 50},  -- Cold Resist +30-50%
    {id = 44, min = 10, max = 15},  -- +10-15% to Maximum Cold Resist
    {id = 276, min = 1, max = 3},  -- +1-3 Spell Power
    }
    },
  [463] = {
    name = "Efreeti's Fury",
    stats = {
    {id = 107, min = 3, max = 7, param = 248},  -- +3-7 to Fiery Fury (Druid only)
    {id = 189, min = 10, max = 20},  -- Enemy fire immunity reduced by 10-20%
    }
    },
  [464] = {
    name = "Combat Visor",
    stats = {
    {id = 278, min = 1, max = 3},  -- +1-3 Combat Power
    {id = 7, min = 50, max = 75},  -- +50-75 to Life
    }
    },
  [465] = {
    name = "Strength of Pride",
    stats = {
    {id = 83, min = 1, max = 2, param = 4},  -- +1-2 to Barbarian Skill Levels
    {id = 0, min = 15, max = 20},  -- +15-20 to Strength
    }
    },
  [466] = {
    name = "Fighter's Stance",
    stats = {
    {id = 83, min = 1, max = 2, param = 4},  -- +1-2 to Barbarian Skill Levels
    {id = 192, min = 10, max = 15},  -- Enemy physical immunity reduced by 10-15%
    {id = 93, min = 15, max = 25},  -- +15-25% Increased Attack Speed
    {id = 278, min = 2, max = 4},  -- +2-4 Combat Power
    }
    },
  [467] = {
    name = "Piercing Cold",
    stats = {
    {id = 39, min = 25, max = 35},  -- All Resistances +25-35%
    {id = 99, min = 12, max = 24},  -- +12-24% Faster Hit Recovery
    {id = {187,331,335}, min = 15, max = 20},  -- Enemy cold immunity reduced by 15-20%, +15-20% to Cold Skill Damage, -15-20% to Enemy Cold Resistance
    }
    },
  [468] = {
    name = "Arreat's Face",
    stats = {
    {id = 60, min = 3, max = 6},  -- 3-6% Life stolen per hit
    }
    },
  [469] = {
    name = "Fara's Defender",
    stats = {
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25%
    {id = 388, min = 20, max = 21},  -- Smite: 20-21
    {id = 35, min = 6, max = 9},  -- Magic Damage Reduced by 6-9
    }
    },
  [470] = {
    name = "Rakkis's Guard",
    stats = {
    {id = {193,1}, min = 5, max = 15},  -- Enemy magic immunity reduced by 5-15%
    {id = 1, min = 10, max = 15},  --  +10-15 to Energy
    {id = 276, min = 1, max = 2},  -- +1-2 Spell Power
    {id = 388, min = 24, max = 25},  -- Smite: 24-25
    }
    },
  [471] = {
    name = "Assaulter's Armament",
    stats = {
    {id = 107, min = 2, max = 4, param = 106},  -- +2-4 to Zeal (Paladin only)
    {id = 278, min = 1, max = 2},  -- +1-2 Combat Power
    {id = 415, min = 2, max = 4},  -- Increase charm max weight by 2-4
    {id = 60, min = 3, max = 5},  -- 3-5% Life stolen per hit
    {id = 388, min = 30, max = 31},  -- Smite: 30-31
    {id = 34, min = 6, max = 9},  -- Damage Reduced by 6-9
    }
    },
  [472] = {
    name = "Herald of Zakarum",
    stats = {
    {id = 388, min = 32, max = 33},  -- Smite: 32-33
    }
    },
  [473] = {
    name = "Blackheart's Barrage",
    stats = {
    {id = 107, min = 3, max = 7, param = 107},  -- +3-7 to Shield Toss (Paladin only)
    {id = {60,62,76,77}, min = 5, max = 10},  -- 5-10% Life stolen per hit, 5-10% Mana stolen per hit, Increase Maximum Life by 5-10%, Increase Maximum Mana by 5-10%
    {id = 388, min = 38, max = 39},  -- Smite: 38-39
    }
    },
  [474] = {
    name = "Mehtan's Carrion",
    stats = {
    {id = 288, min = 15, max = 20},  -- Increase Bone Skill Damage: 15-20%
    {id = {39,41}, min = 20, max = 30},  -- Fire Resist +20-30%, Lightning Resist +20-30%
    {id = 357, min = 5, max = 10},  -- +5-10% to Magic Skill Damage
    }
    },
  [475] = {
    name = "Venom Storm",
    stats = {
    {id = 410, min = 1, max = 3},  -- +1-3 to Poison Skills
    {id = 191, min = 5, max = 10},  -- Enemy poison immunity reduced by 5-10%
    {id = 332, min = 10, max = 20},  -- +10-20% to Poison Skill Damage
    }
    },
  [476] = {
    name = "Bone Zone",
    stats = {
    {id = 188, min = 1, max = 3, param = 18},  -- +1-3 to Summoning Skills
    {id = 107, min = 1, max = 3, param = 68},  -- +1-3 to Bone Armor (Necromancer only)
    {id = 283, min = 1, max = 2},  -- +1-2 Summoning Power
    }
    },
  [477] = {
    name = "Contagion",
    stats = {
    {id = 151, min = 3, max = 6, param = 180},  -- Level 3-6 Patient Zero Aura When Equipped
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25%
    {id = 415, min = 1, max = 3},  -- Increase charm max weight by 1-3
    }
    },
  [478] = {
    name = "Homunculus",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [479] = {
    name = "Cerebus' Bite",
    stats = {
    {id = 188, min = 2, max = 4, param = 41},  -- +2-4 to Blaze Wolf (Druid only)
    {id = 60, min = 7, max = 10},  -- 7-10% Life stolen per hit
    {id = 119, min = 60, max = 120},  -- 60-120% Bonus to Attack Rating
    {id = 135, min = 15, max = 33},  -- 15-33% Chance of Open Wounds
    {id = 107, min = 1, max = 2, param = 232},  -- +1-2 to Feral Rage (Druid only)
    }
    },
  [480] = {
    name = "Pack Mentality",
    stats = {
    {id = 188, min = 2, max = 4, param = 40},  -- +2-4 to Nature's Teachings (Druid only)
    {id = 107, min = 3, max = 5, param = {247,237}},  -- +3-5 to Grizzly (Druid only), +3-5 to Fenris (Druid only)
    {id = {262,263,264,265}, min = 3, max = 5},  -- Increase Strength by +3-5%, Increase Dexterity by +3-5%, Increase Vitality by +3-5%, Increase Energy by +3-5%
    }
    },
  [481] = {
    name = "Spirit Keeper",
    stats = {
    {id = 145, min = 9, max = 14},  -- +9-14 Lightning Absorb
    {id = 39, min = 30, max = 40},  -- Fire Resist +30-40%
    {id = 148, min = 15, max = 25},  -- Cold Absorb 15-25%
    {id = 83, min = 1, max = 2, param = 5},  -- +1-2 to Druid Skill Levels
    }
    },
  [482] = {
    name = "Ravenlore",
    stats = {
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25%
    {id = 1, min = 20, max = 30},  -- +20-30 to Energy
    {id = 335, min = 10, max = 20},  -- -10-20% to Enemy Cold Resistance
    {id = 187, min = 5, max = 10},  -- Enemy cold immunity reduced by 5-10%
    }
    },
  [483] = {
    name = "Jalal's Mane",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [484] = {
    name = "Berserker's Stance",
    stats = {
    {id = 83, min = 1, max = 2, param = 4},  -- +1-2 to Barbarian Skill Levels
    {id = 192, min = 15, max = 25},  -- Enemy physical immunity reduced by 15-25%
    {id = 278, min = 2, max = 4},  -- +2-4 Combat Power
    }
    },
  [485] = {
    name = "Wolfhowl",
    stats = {
    {id = 188, min = 2, max = 3, param = 34},  -- +2-3 to Destructive Range (Barb only)
    {id = {0,2,3}, min = 8, max = 15},  -- +8-15 to Strength, +8-15 to Dexterity, +8-15 to Vitality
    {id = 97, min = 3, max = 6, param = {223,227,232}},  -- +3-6 to Werewolf, +3-6 to Howl, +3-6 to Feral Rage
    {id = {34,35}, min = 8, max = 10},  -- Damage Reduced by 8-10, Magic Damage Reduced by 8-10
    }
    },
  [486] = {
    name = "Demonhorn's Edge",
    stats = {
    {id = 60, min = 3, max = 6},  -- 3-6% Life stolen per hit
    {id = 188, min = 1, max = 3, param = {32,33,34}},  -- +1-3 to Close Quarters (Barb only), +1-3 to War Masteries (Barb only), +1-3 to Destructive Range (Barb only)
    {id = 151, min = 15, max = 20, param = 103},  -- Level 15-20 Thorns Aura When Equipped
    }
    },
  [487] = {
    name = "Halaberd's Reign",
    stats = {
    {id = 74, min = 15, max = 23},  -- Replenish Life +15-23
    {id = 107, min = 2, max = 3, param = {149,138}},  -- +2-3 to War Stance (Barbarian only), +2-3 to Shout (Barbarian only)
    }
    },
  [488] = {
    name = "Warrior's Resolve",
    stats = {
    {id = 93, min = 15, max = 25},  -- +15-25% Increased Attack Speed
    {id = 7, min = 50, max = 100},  -- +50-100 to Life
    {id = {60,62}, min = 5, max = 8},  -- 5-8% Life stolen per hit, 5-8% Mana stolen per hit
    }
    },
  [489] = {
    name = "Primordial Punisher",
    stats = {
    {id = 83, min = 1, max = 2, param = 3},  -- +1-2 to Paladin Skill Levels
    {id = 286, min = 20, max = 30},  -- Reduce Cooldowns by 20-30%
    {id = {187,189,190}, min = 5, max = 15},  -- Enemy cold immunity reduced by 5-15%, Enemy fire immunity reduced by 5-15%, Enemy lightning immunity reduced by 5-15%
    }
    },
  [490] = {
    name = "Alma Negra",
    stats = {
    {id = 83, min = 1, max = 2, param = 3},  -- +1-2 to Paladin Skill Levels
    {id = 35, min = 5, max = 9},  -- Magic Damage Reduced by 5-9
    {id = 119, min = 40, max = 75},  -- 40-75% Bonus to Attack Rating
    {id = 388, min = 60, max = 61},  -- Smite: 60-61
    }
    },
  [491] = {
    name = "Faithful Guardian",
    stats = {
    {id = 107, min = 3, max = 5, param = {96,119}},  -- +3-5 to Sacrifice (Paladin only), +3-5 to Faithful Follower (Paladin only)
    {id = 388, min = 75, max = 76},  -- Smite: 75-76
    {id = 83, min = 1, max = 2, param = 3},  -- +1-2 to Paladin Skill Levels
    {id = 111, min = 50, max = 75},  -- Damage +50-75
    }
    },
  [492] = {
    name = "Dragonscale",
    stats = {
    {id = 142, min = 10, max = 20},  -- Fire Absorb 10-20%
    {id = 0, min = 15, max = 25},  -- +15-25 to Strength
    {id = 388, min = 80, max = 81},  -- Smite: 80-81
    }
    },
  [493] = {
    name = "Shield of Forsaken Light",
    stats = {
    {id = 0, min = 20, max = 30},  -- +20-30 all Attributes
    {id = 83, min = 2, max = 3, param = 3},  -- +2-3 to Paladin Skill Levels
    {id = {262,263,264,265}, min = 5, max = 10},  -- Increase Strength by +5-10%, Increase Dexterity by +5-10%, Increase Vitality by +5-10%, Increase Energy by +5-10%
    {id = 388, min = 110, max = 111},  -- Smite: 110-111
    }
    },
  [494] = {
    name = "Onikuma",
    stats = {
    {id = 39, min = 30, max = 55},  -- All Resistances +30-55%
    {id = 107, min = 2, max = 4, param = 87},  -- +2-4 to Decrepify (Necromancer only)
    {id = 264, min = 3, max = 5},  -- Increase Vitality by +3-5%
    {id = 83, min = 1, max = 2, param = 2},  -- +1-2 to Necromancer Skill Levels
    }
    },
  [495] = {
    name = "Bone Parade",
    stats = {
    {id = 188, min = 1, max = 2, param = {18,17}},  -- +1-2 to Summoning Skills, +1-2 to Poison and Bone Skills
    {id = 288, min = 25, max = 35},  -- Increase Bone Skill Damage: 25-35%
    {id = 283, min = 1, max = 3},  -- +1-3 Summoning Power
    {id = 107, min = 3, max = 6, param = {70,84}},  -- +3-6 to Raise Skeleton (Necromancer only), +3-6 to Bone Spear (Necromancer only)
    }
    },
  [496] = {
    name = "Elanuzuru",
    stats = {
    {id = 188, min = 1, max = 2, param = 18},  -- +1-2 to Summoning Skills
    {id = 283, min = 3, max = 5},  -- +3-5 Summoning Power
    {id = 107, min = 3, max = 5, param = 79},  -- +3-5 to Raise Skeletal Archers (Necromancer only)
    }
    },
  [497] = {
    name = "Boneflame",
    stats = {
    {id = 83, min = 2, max = 3, param = 2},  -- +2-3 to Necromancer Skill Levels
    {id = 39, min = 20, max = 30},  -- All Resistances +20-30%
    }
    },
  [498] = {
    name = "Darkforce Spawn",
    stats = {
    {id = 188, min = 1, max = 3, param = {16,17,18}},  -- +1-3 to Curses, +1-3 to Poison and Bone Skills, +1-3 to Summoning Skills
    {id = 97, min = 1, max = 6, param = 181},  -- +1-6 to Skull Mob
    }
    },
  [499] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [500] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [501] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [502] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [503] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [504] = {
    name = "Earth Shifter",
    stats = {
    {id = 188, min = 1, max = 5, param = 41},  -- +1-5 to Blaze Wolf (Druid Only)
    }
    },
  [505] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [506] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [507] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [508] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [509] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [510] = {
    name = "Shadow Dancer",
    stats = {
    {id = 2, min = 15, max = 25},  -- +15-25 to Dexterity
    {id = 188, min = 1, max = 2, param = 49},  -- +1-2 to Shadow Disciplines (Assassin only)
    }
    },
  [511] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [512] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [513] = {
    name = "Templar's Might",
    stats = {
    {id = 32, min = 250, max = 300},  -- +250-300 Defense vs. Missile
    {id = {0,3}, min = 15, max = 25},  -- +15-25 to Strength, +15-25 to Vitality
    {id = 83, min = 1, max = 2, param = 3},  -- +1-2 to Paladin Skill Levels
    }
    },
  [514] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [515] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [516] = {
    name = "Nature's Nurture",
    stats = {
    {id = 83, min = 1, max = 2, param = 5},  -- +1-2 to Druid Skill Levels
    {id = 283, min = 1, max = 2},  -- +1-2 Summoning Power
    {id = 284, min = 50, max = 75},  -- Summon Max HP: +50-75%
    {id = 3, min = 20, max = 30},  -- +20-30 to Vitality
    {id = 403, min = 30, max = 40},  -- Increase Raven Damage by 30-40%
    {id = {332,357}, min = 15, max = 25},  -- +15-25% to Poison Skill Damage, +15-25% to Magic Skill Damage
    }
    },
  [517] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [518] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [519] = {
    name = "Firebelr",
    stats = {
    {id = 276, min = 1, max = 2},  -- +1-2 Spell Power
    {id = 418, min = 3, max = 5},  -- Increase explosion radius of fireball by 3-5
    {id = 107, min = 3, max = 7, param = 41},  -- +3-7 to Fire Ball (Sorceress only)
    {id = 189, min = 10, max = 20},  -- Enemy fire immunity reduced by 10-20%
    }
    },
  [520] = {
    name = "Flightless",
    stats = {
    {id = 2, min = 5, max = 15},  -- +5-15 to Dexterity
    }
    },
  [521] = {
    name = "Pinpoint",
    stats = {
    {id = 39, min = 7, max = 10},  -- All Resistances +7-10%
    {id = 19, min = 60, max = 180},  -- +60-180 to Attack Rating
    }
    },
  [522] = {
    name = "Nokozan Relic",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [523] = {
    name = "The Eye of Etlich",
    stats = {
    {id = 32, min = 10, max = 40},  -- +10-40 Defense vs. Missile
    {id = 89, min = 1, max = 5},  -- +1-5 to Light Radius
    {id = 60, min = 3, max = 7},  -- 3-7% Life stolen per hit
    }
    },
  [524] = {
    name = "The Mahim-Oak Curio",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [525] = {
    name = "Nagelring",
    stats = {
    {id = 19, min = 50, max = 75},  -- +50-75 to Attack Rating
    {id = 80, min = 15, max = 30},  -- +15-30% Chance of Higher Quality Items
    {id = 99, min = 6, max = 10},  -- +6-10% Faster Hit Recovery
    }
    },
  [526] = {
    name = "Manald Heal",
    stats = {
    {id = 62, min = 4, max = 7},  -- 4-7% Mana stolen per hit
    {id = 74, min = 5, max = 8},  -- Replenish Life +5-8
    {id = 86, min = 3, max = 5},  -- +3-5 Life after each Kill
    }
    },
  [527] = {
    name = "The Stone of Jordan",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [528] = {
    name = "Bul-Kathos' Wedding Band",
    stats = {
    {id = 60, min = 3, max = 5},  -- 3-5% Life stolen per hit
    {id = 138, min = 2, max = 8},  -- +2-8 to Mana after each Kill
    }
    },
  [529] = {
    name = "The Cat's Eye",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [530] = {
    name = "The Rising Sun",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [531] = {
    name = "Crescent Moon",
    stats = {
    {id = 62, min = 11, max = 15},  -- 11-15% Mana stolen per hit
    {id = 60, min = 3, max = 6},  -- 3-6% Life stolen per hit
    {id = 93, min = 10, max = 20},  -- +10-20% Increased Attack Speed
    }
    },
  [532] = {
    name = "Mara's Kaleidoscope",
    stats = {
    {id = 39, min = 20, max = 30},  -- All Resistances +20-30%
    }
    },
  [533] = {
    name = "Atma's Scarab",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [534] = {
    name = "Dwarf Star",
    stats = {
    {id = 80, min = 10, max = 20},  -- +10-20% Chance of Higher Quality Items
    {id = 96, min = 10, max = 15},  -- +10-15% Faster Run/Walk
    {id = 35, min = 12, max = 15},  -- Magic Damage Reduced by 12-15
    }
    },
  [535] = {
    name = "Raven Frost",
    stats = {
    {id = 2, min = 15, max = 20},  -- +15-20 to Dexterity
    {id = 19, min = 150, max = 250},  -- +150-250 to Attack Rating
    }
    },
  [536] = {
    name = "Highlord's Wrath",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [537] = {
    name = "Saracen's Chance",
    stats = {
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25%
    }
    },
  [538] = {
    name = "Nature's Peace",
    stats = {
    {id = 34, min = 7, max = 11},  -- Damage Reduced by 7-11
    {id = 45, min = 20, max = 30},  -- Poison Resist +20-30%
    }
    },
  [539] = {
    name = "Seraph's Hymn",
    stats = {
    {id = 188, min = 1, max = 2, param = 26},  -- +1-2 to Ascending Leadership (Paladin only)
    {id = {121,122}, min = 25, max = 50},  -- +25-50% Damage to Demons, +25-50% Damage to Undead
    {id = {123,124}, min = 150, max = 250},  -- +150-250 to Attack Rating against Demons, +150-250 to Attack Rating against Undead
    }
    },
  [540] = {
    name = "Wisp Projector",
    stats = {
    {id = {144,80}, min = 10, max = 20},  -- Lightning Absorb 10-20%, +10-20% Chance of Higher Quality Items
    }
    },
  [541] = {
    name = "Constricting Ring",
    stats = {
    {id = 39, min = 30, max = 40},  -- All Resistances +30-40%
    {id = 80, min = 45, max = 70},  -- +45-70% Chance of Higher Quality Items
    {id = {76,77}, min = -10, max = 10},  -- Increase Maximum Life by -10–10%, Increase Maximum Mana by -10–10%
    {id = 189, min = 20, max = 25},  -- Enemy fire immunity reduced by 20-25%
    }
    },
  [542] = {
    name = "Gheed's Fortune",
    stats = {
    {id = {80,79}, min = 20, max = 40},  -- +20-40% Chance of Higher Quality Items, 20-40% Extra Gold from Monsters
    {id = 0, min = 5, max = 15},  -- +5-15 to Strength (all attribute)
    }
    },
  [543] = {
    name = "Annihilus",
    stats = {
    {id = {0,39}, min = 10, max = 20},  -- +10-20 to Strength (all attribute), All Resistances +10-20%
    {id = 85, min = 1, max = 10},  -- +5-10% to Experience Gained
    }
    },
  [544] = {
    name = "Carrion Wind",
    stats = {
    {id = 32, min = 100, max = 160},  -- +100-160 Defense vs. Missile
    {id = 60, min = 6, max = 9},  -- 6-9% Life stolen per hit
    }
    },
  [545] = {
    name = "Metalgrid",
    stats = {
    {id = 31, min = 300, max = 350},  -- +300-350 Defense
    {id = 39, min = 25, max = 35},  -- All Resistances +25-35%
    {id = 19, min = 400, max = 450},  -- +400-450 to Attack Rating
    {id = 283, min = 1, max = 2},  -- +1-2 Summoning Power
    {id = 105, min = 10, max = 15},  -- +10-15% Faster Cast Rate
    }
    },
  [546] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [547] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [548] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [549] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [550] = {
    name = "Lightning Facet",
    stats = {
    {id = {334,330}, min = 3, max = 5},  -- -3-5% Enemy Lightning Resistance, +3-5% Lightning Skill Damage
    }
    },
  [551] = {
    name = "Cold Facet",
    stats = {
    {id = {335,331}, min = 3, max = 5},  -- -3-5% Enemy Cold Resistance, +3-5% Cold Skill Damage
    }
    },
  [552] = {
    name = "Fire Facet",
    stats = {
    {id = {333,329}, min = 3, max = 5},  -- -3-5% Enemy Fire Resistance, +3-5% Fire Skill Damage
    }
    },
  [553] = {
    name = "Poison Facet",
    stats = {
    {id = {332,336}, min = 3, max = 5},  -- +3-5% Poison Skill Damage, -3-5% Enemy Poison Resistance
    }
    },
  [554] = {
    name = "Physical Facet",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [555] = {
    name = "Magic Facet",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [556] = {
    name = "Hellfire Torch",
    stats = {
    {id = {0,39}, min = 10, max = 20},  -- +10-20 to Strength (all attribute), All Resistances +10-20%
    }
    },
  [557] = {
    name = "Beacon of Hope (blank)",
    stats = {
    },
    custom_suffix = "\n {red} Beacon",
    },
  [558] = {
    name = "The Statue of Mythos (blank)",
    stats = {
    },
    custom_suffix = "",
    },
  [559] = {
    name = "Quality of Life Bag (blank)",
    stats = {
    },
    custom_suffix = "",
    },
  [560] = {
    name = "Magefist (Lightning)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [561] = {
    name = "Magefist (Cold)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [562] = {
    name = "Magefist (Poison)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [563] = {
    name = "Magefist (Magic)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [564] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [565] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [566] = {
    name = "Hydra Master",
    stats = {
    {id = 97, min = 10, max = 15, param = 648},  -- +10-15 to Tri-Hydra
    {id = 265, min = 10, max = 20},  -- Increase Energy by +10-20%
    {id = {187,189,190}, min = 35, max = 50},  -- Enemy cold immunity reduced by 35-50%, Enemy fire immunity reduced by 35-50%, Enemy lightning immunity reduced by 35-50%
    {id = 77, min = 20, max = 25},  -- Increase Maximum Mana by 20-25%
    }
    },
  [567] = {
    name = "Spiritual Savior",
    stats = {
    {id = 19, min = 50, max = 80},  -- +50-80 to Attack Rating
    {id = 119, min = 15, max = 20},  -- 15-20% Bonus to Attack Rating
    {id = 189, min = 30, max = 50},  -- Enemy fire immunity reduced by 30-50%
    {id = {333,334,335,336}, min = 10, max = 15},  -- -10-15% to Enemy Fire Resistance, -10-15% to Enemy Lightning Resistance, -10-15% to Enemy Cold Resistance, -10-15% to Enemy Poison Resistance
    }
    },
  [568] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [569] = {
    name = "Fletcher's Fury",
    stats = {
    {id = 188, min = 1, max = 2, param = 0},  -- +1-2 to Bow and Crossbow Skills (Amazon)
    {id = 119, min = 20, max = 30},  -- 20-30% Bonus to Attack Rating
    {id = 93, min = 10, max = 25},  -- +10-25% Increased Attack Speed
    {id = 138, min = 3, max = 5},  -- +3-5 to Mana after each Kill
    }
    },
  [570] = {
    name = "Indra's Guidance",
    stats = {
    {id = 119, min = 20, max = 30},  -- 20-30% Bonus to Attack Rating
    {id = 93, min = 10, max = 20},  -- +10-20% Increased Attack Speed
    {id = 138, min = 2, max = 4},  -- +2-4 to Mana after each Kill
    {id = 330, min = 5, max = 15},  -- +5-15% to Lightning Skill Damage
    }
    },
  [571] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [572] = {
    name = "Robbin's Temple",
    stats = {
    {id = 415, min = 3, max = 5},  -- Increase charm max weight by 3-5
    {id = {105,39}, min = 10, max = 20},  -- +10-20% Faster Cast Rate, All Resistances +10-20%
    }
    },
  [573] = {
    name = "Gula's Testament of Gluttony",
    stats = {
    },
    custom_suffix = "",
    },
  [574] = {
    name = "Luxuria's Testament of Lust",
    stats = {
    },
    custom_suffix = "",
    },
  [575] = {
    name = "Avaritia's Testament of Greed",
    stats = {
    },
    custom_suffix = "",
    },
  [576] = {
    name = "Ira's Testament of Wrath",
    stats = {
    },
    custom_suffix = "",
    },
  [577] = {
    name = "Acedia's Testament of Sloth",
    stats = {
    },
    custom_suffix = "",
    },
  [578] = {
    name = "Vanagloria's Testament of Vanity",
    stats = {
    },
    custom_suffix = "",
    },
  [579] = {
    name = "Superbia's Testament of Hubris",
    stats = {
    },
    custom_suffix = "",
    },
  [580] = {
    name = "Seven Deadly Sins",
    stats = {
    },
    custom_suffix = "",
    },
  [581] = {
    name = "Spirit Striker",
    stats = {
    {id = 93, min = 10, max = 20},  -- +10-20% Increased Attack Speed
    {id = 62, min = 5, max = 8},  -- 5-8% Mana stolen per hit
    }
    },
  [582] = {
    name = "Aim of Indra",
    stats = {
    {id = 93, min = 15, max = 25},  -- +15-25% Increased Attack Speed
    {id = 334, min = 10, max = 15},  -- -10-15% to Enemy Lightning Resistance
    {id = 278, min = 1, max = 2},  -- +1-2 Combat Power
    }
    },
  [583] = {
    name = "Enchanted Flame",
    stats = {
    {id = 93, min = 20, max = 30},  -- +20-30% Increased Attack Speed
    {id = 189, min = 10, max = 20},  -- Enemy fire immunity reduced by 10-20%
    {id = 276, min = 1, max = 3},  -- +1-3 Spell Power
    }
    },
  [584] = {
    name = "Mageflight",
    stats = {
    {id = {93,357,193}, min = 20, max = 30},  -- +20-30% Increased Attack Speed, +20-30% to Magic Skill Damage, Enemy magic immunity reduced by 20-30%
    }
    },
  [585] = {
    name = "Energy Manipulator",
    stats = {
    {id = {427,286}, min = 25, max = 35},  -- Increase Buff Durations by 25-35%, Reduce Cooldowns by 25-35%
    {id = 107, min = 3, max = 5, param = 58},  -- +3-5 to Energy Shield (Sorceress only)
    }
    },
  [586] = {
    name = "Trinity",
    stats = {
    {id = {329,331,330,187,189,190}, min = 15, max = 25},  -- +15-25% to Fire Skill Damage, +15-25% to Cold Skill Damage, +15-25% to Lightning Skill Damage, Enemy cold immunity reduced by 15-25%, Enemy fire immunity reduced by 15-25%, Enemy lightning immunity reduced by 15-25%
    }
    },
  [587] = {
    name = "Quintessence",
    stats = {
    {id = {262,263,264,265}, min = 5, max = 15},  -- Increase Strength by +5-15%, Increase Dexterity by +5-15%, Increase Vitality by +5-15%, Increase Energy by +5-15%
    }
    },
  [588] = {
    name = "Life Everlasting",
    stats = {
    {id = 151, min = 10, max = 15, param = 99},  -- Level 10-15 Prayer Aura When Equipped
    {id = {7,9}, min = 25, max = 50},  -- +25-50 to Life, +25-50 to Mana
    {id = {86,138}, min = 3, max = 5},  -- +3-5 Life after each Kill, +3-5 to Mana after each Kill
    }
    },
  [589] = {
    name = "Hunter's Mark",
    stats = {
    {id = 151, min = 5, max = 10, param = 108},  -- Level 5-10 Blessed Aim Aura When Equipped
    {id = 62, min = 6, max = 10},  -- 6-10% Mana stolen per hit
    }
    },
  [590] = {
    name = "Unholy Commander",
    stats = {
    {id = 0, min = 10, max = 15},  -- +10-15 to Strength (all attribute)
    }
    },
  [591] = {
    name = "Tommy's Enlightener",
    stats = {
    {id = 111, min = 60, max = 120},  -- Damage +60-120
    {id = 107, min = 3, max = 7, param = 112},  -- +3-7 to Blessed Hammer (Paladin only)
    {id = 357, min = 15, max = 20},  -- +15-20% to Magic Skill Damage
    {id = 193, min = 10, max = 15},  -- Enemy magic immunity reduced by 10-15%
    }
    },
  [592] = {
    name = "Curtis's Fortifier",
    stats = {
    {id = {0,39}, min = 10, max = 20},  -- +10-20 to Strength (all attribute), All Resistances +10-20%
    {id = {60,62}, min = 5, max = 8},  -- 5-8% Life stolen per hit, 5-8% Mana stolen per hit
    }
    },
  [593] = {
    name = "Kurec's Pride",
    stats = {
    {id = 36, min = 10, max = 15},  -- Damage Reduced by 10-15%
    {id = 39, min = 30, max = 40},  -- Fire Resist +30-40%
    {id = 83, min = 1, max = 2, param = 5},  -- +1-2 to Druid Skill Levels
    }
    },
  [594] = {
    name = "Spiritual Guardian",
    stats = {
    {id = 9, min = 50, max = 100},  -- +50-100 to Mana
    {id = 77, min = 5, max = 10},  -- Increase Maximum Mana by 5-10%
    {id = 190, min = 30, max = 50},  -- Enemy lightning immunity reduced by 30-50%
    {id = {333,334,335,336}, min = 10, max = 15},  -- -10-15% to Enemy Fire Resistance, -10-15% to Enemy Lightning Resistance, -10-15% to Enemy Cold Resistance, -10-15% to Enemy Poison Resistance
    }
    },
  [595] = {
    name = "Blackmaw's Brutality",
    stats = {
    {id = 151, min = 10, max = 15, param = 503},  -- Level 10-15 Physical Conviction Aura When Equipped
    {id = 93, min = 10, max = 15},  -- +10-15% Increased Attack Speed
    {id = 39, min = 20, max = 30},  -- All Resistances +20-30%
    }
    },
  [596] = {
    name = "Spencer's Dispenser",
    stats = {
    {id = 107, min = 2, max = 4, param = 48},  -- +2-4 to Rolling Thunder (Sorceress only)
    {id = {190,330}, min = 15, max = 25},  -- Enemy lightning immunity reduced by 15-25%, +15-25% to Lightning Skill Damage
    }
    },
  [597] = {
    name = "Fletching of Frostbite",
    stats = {
    {id = {93,331,187}, min = 20, max = 30},  -- +20-30% Increased Attack Speed, +20-30% to Cold Skill Damage, Enemy cold immunity reduced by 20-30%
    }
    },
  [598] = {
    name = "A Healthy Breakfast",
    stats = {
    },
    custom_suffix = "\n {red} Healthy",
    },
  [599] = {
    name = "The Statue of Mythos (Amazon)",
    stats = {
    },
    custom_suffix = "",
    },
  [600] = {
    name = "The Statue of Mythos (Assassin)",
    stats = {
    },
    custom_suffix = "",
    },
  [601] = {
    name = "The Statue of Mythos (Barbarian)",
    stats = {
    },
    custom_suffix = "",
    },
  [602] = {
    name = "The Statue of Mythos (Druid)",
    stats = {
    },
    custom_suffix = "",
    },
  [603] = {
    name = "The Statue of Mythos (Necromancer)",
    stats = {
    },
    custom_suffix = "",
    },
  [604] = {
    name = "The Statue of Mythos (Paladin)",
    stats = {
    },
    custom_suffix = "",
    },
  [605] = {
    name = "The Statue of Mythos (Sorceress)",
    stats = {
    },
    custom_suffix = "",
    },
  [606] = {
    name = "Cola Cube",
    stats = {
    },
    custom_suffix = "\n {red} Cola",
    },
  [607] = {
    name = "Soul Stompers",
    stats = {
    {id = 96, min = 15, max = 25},  -- +15-25% Faster Run/Walk
    {id = 145, min = 8, max = 10},  -- +8-10 Lightning Absorb
    {id = 0, min = 30, max = 40},  -- +30-40 to Strength
    }
    },
  [608] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [609] = {
    name = "Kingdom's Heart",
    stats = {
    {id = {34,35}, min = 15, max = 25},  -- Damage Reduced by 15-25, Magic Damage Reduced by 15-25
    }
    },
  [610] = {
    name = "Prismatic Facet",
    stats = {
    },
    custom_suffix = "",
    },
  [611] = {
    name = "Blank Talent",
    stats = {
    },
    custom_suffix = "\n {red} Talent",
    },
  [612] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [613] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [614] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [615] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [616] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [617] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [618] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [619] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [620] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [621] = {
    name = "Crainte Vomir",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [622] = {
    name = "Crainte Vomir (duplicate entry)",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [623] = {
    name = "Spiritual Sentinel",
    stats = {
    {id = 193, min = 30, max = 50},  -- Enemy magic immunity reduced by 30-50%
    {id = 40, min = 3, max = 5},  -- +3-5% to Maximum Fire Resist
    {id = 76, min = 5, max = 10},  -- Increase Maximum Life by 5-10%
    {id = 7, min = 50, max = 100},  -- +50-100 to Life
    }
    },
  [624] = {
    name = "Spiritual Warden",
    stats = {
    {id = 191, min = 30, max = 50},  -- Enemy poison immunity reduced by 30-50%
    {id = 77, min = 5, max = 10},  -- Increase Maximum Mana by 5-10%
    {id = 9, min = 50, max = 100},  -- +50-100 to Mana
    {id = {333,334,335,336}, min = 10, max = 15},  -- -10-15% to Enemy Fire Resistance, -10-15% to Enemy Lightning Resistance, -10-15% to Enemy Cold Resistance, -10-15% to Enemy Poison Resistance
    }
    },
  [625] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [626] = {
    name = "Harlequin Crest (1.08)",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    }
    },
  [627] = {
    name = "The Cat's Eye (1.08)",
    stats = {
    {id = 278, min = 1, max = 3},  -- +1-3 Combat Power
    }
    },
  [628] = {
    name = "Arkaine's Valor (Bugged)",
    stats = {
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    {id = 99, min = 20, max = 30},  -- +20-30% Faster Hit Recovery
    }
    },
  [629] = {
    name = "String of Ears (Bugged)",
    stats = {
    {id = 93, min = 15, max = 20},  -- +15-20% Increased Attack Speed
    {id = 39, min = 15, max = 25},  -- All Resistances +15-25%
    {id = 36, min = 10, max = 15},  -- Damage Reduced by 10-15%
    }
    },
  [630] = {
    name = "Wizardspike (Fused)",
    stats = {
    {id = 105, min = 35, max = 50},  -- +35-50% Faster Cast Rate
    {id = 39, min = 50, max = 75},  -- All Resistances +50-75%
    }
    },
  [631] = {
    name = "Exsanguinate",
    stats = {
    {id = {60,0}, min = 10, max = 15},  -- 10-15% Life stolen per hit, +10-15 to Strength
    {id = 86, min = 5, max = 10},  -- +5-10 Life after each Kill
    }
    },
  [632] = {
    name = "Monar's Gale",
    stats = {
    {id = 107, min = 3, max = 5, param = 250},  -- +3-5 to Hurricane (Druid only)
    {id = 331, min = 15, max = 20},  -- +15-20% to Cold Skill Damage
    {id = 79, min = 25, max = 50},  -- 25-50% Extra Gold from Monsters
    }
    },
  [633] = {
    name = "The Statue of Mythos (Amazon LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [634] = {
    name = "The Statue of Mythos (Assassin LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [635] = {
    name = "The Statue of Mythos (Barbarian LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [636] = {
    name = "The Statue of Mythos (Druid LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [637] = {
    name = "The Statue of Mythos (Necromancer LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [638] = {
    name = "The Statue of Mythos (Paladin LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [639] = {
    name = "The Statue of Mythos (Sorceress LB1)",
    stats = {
    },
    custom_suffix = "",
    },
  [640] = {
    name = "The Statue of Mythos (Amazon LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [641] = {
    name = "The Statue of Mythos (Assassin LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [642] = {
    name = "The Statue of Mythos (Barbarian LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [643] = {
    name = "The Statue of Mythos (Druid LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [644] = {
    name = "The Statue of Mythos (Necromancer LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [645] = {
    name = "The Statue of Mythos (Paladin LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [646] = {
    name = "The Statue of Mythos (Sorceress LB2)",
    stats = {
    },
    custom_suffix = "",
    },
  [647] = {
    name = "The Statue of Mythos (Amazon LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [648] = {
    name = "The Statue of Mythos (Assassin LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [649] = {
    name = "The Statue of Mythos (Barbarian LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [650] = {
    name = "The Statue of Mythos (Druid LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [651] = {
    name = "The Statue of Mythos (Necromancer LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [652] = {
    name = "The Statue of Mythos (Paladin LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [653] = {
    name = "The Statue of Mythos (Sorceress LB3)",
    stats = {
    },
    custom_suffix = "",
    },
  [654] = {
    name = "Kuroneko no Himitsu",
    stats = {
    {id = 96, min = 15, max = 20},  -- +15-20% Faster Run/Walk
    {id = 1, min = 35, max = 50},  -- +35-50 to Energy
    {id = 3, min = 20, max = 30},  -- +20-30 to Vitality
    }
    },
  [655] = {
    name = "Dustdevil",
    stats = {
    {id = 151, min = 6, max = 10, param = 381},  -- Level 6-10 Redemption Aura When Equipped
    {id = 97, min = 1, max = 3, param = 151},  -- +1-3 to Whirlwind
    {id = 2, min = 20, max = 25},  -- +20-25 to Dexterity
    {id = 93, min = 40, max = 60},  -- +40-60% Increased Attack Speed
    }
    },
  [656] = {
    name = "Improvise",
    stats = {
    {id = 99, min = 20, max = 30},  -- +20-30% Faster Hit Recovery
    {id = 136, min = 15, max = 30},  -- 15-30% Chance of Crushing Blow
    {id = 278, min = 1, max = 3},  -- +1-3 Combat Power
    }
    },
  [657] = {
    name = "Ken'Juk's Blighted Visage",
    stats = {
    {id = 410, min = 1, max = 2},  -- +1-2 Poision Skill, +0-2 Spell Power
    {id = 276, min = 0, max = 2},  -- +0-2 Spell Power
    {id = 336, min = 15, max = 25},  -- -15-25% to Enemy Poison Resistance
    {id = 332, min = 15, max = 20},  -- +15-20% to Poison Skill Damage
    }
    },
  [658] = {
    name = "Philios Prophecy",
    stats = {
    {id = 188, min = 2, max = 5, param = 1},  -- +2-5 to Passive and Magic Skills (Amazon Only)
    {id = 107, min = 3, max = 7, param = 7},  -- +3-7 to Prismatic Arrow (Amazon only)
    {id = 93, min = 30, max = 70},  -- +30-70% Increased Attack Speed
    {id = 281, min = 100, max = 200},  -- Summon Damage: +100-200%
    }
    },
  [659] = {
    name = "Whisper",
    stats = {
    {id = 2, min = 5, max = 15},  -- +5-15 to Dexterity
    {id = 156, min = 10, max = 20},  -- +10-20% Chance of Piercing Attack
    }
    },
  [660] = {
    name = "Dragon's Cinder",
    stats = {
    {id = {93,189,329}, min = 20, max = 30},  -- +20-30% Increased Attack Speed, Enemy fire immunity reduced by 20-30%, +20-30% to Fire Skill Damage
    {id = 7, min = 50, max = 100},  -- +50-100 to Life
    }
    },
  [661] = {
    name = "Serpent's Fangs",
    stats = {
    {id = {93,191,336}, min = 20, max = 30},  -- +20-30% Increased Attack Speed, Enemy poison immunity reduced by 20-30%, -20-30% to Enemy Poison Resistance
    {id = {60,62}, min = 5, max = 15},  -- 5-15% Life stolen per hit, 5-15% Mana stolen per hit
    }
    },
  [662] = {
    name = "Valkyrie Wing 1.08",
    stats = {
    {id = {276,278}, min = 1, max = 2},  -- +1-2 Spell Power, +1-2 Combat Power
    }
    },
  [663] = {
    name = "War Traveler (Bugged)",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [664] = {
    name = "Undead Crown Fused",
    stats = {
    {id = 283, min = 1, max = 2},  -- +1-2 Summoning Power
    {id = 124, min = 50, max = 100},  -- +50-100 to Attack Rating against Undead
    }
    },
  [665] = {
    name = "Colossal Charm",
    stats = {
    {id = {276,278,283}, min = 0, max = 3},  -- +0-3 Spell Power, +0-3 Combat Power, +0-3 Summoning Power
    {id = {76,80,96}, min = -50, max = 50},  -- Increase Maximum Life by -50-50%, -50-50% Chance of Higher Quality Items, -50-50% Faster Run/Walk
    {id = 142, min = 3, max = 5},  -- Fire Absorb 3-5% (all absorb)
    }
    },
  [666] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [667] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [668] = {
    name = "Black Suede",
    stats = {
    {id = {96,45}, min = 5, max = 20},  -- +5-20% Faster Run/Walk, Poison Resist +5-20%
    {id = 7, min = 20, max = 40},  -- +20-40 to Life
    }
    },
  [669] = {
    name = "Allebasi",
    stats = {
    {id = 105, min = 10, max = 15},  -- +10-15% Faster Cast Rate
    {id = 9, min = 10, max = 20},  -- +10-20 to Mana
    {id = 35, min = 4, max = 8},  -- Magic Damage Reduced by 4-8
    {id = 80, min = 5, max = 30},  -- +5-30% Chance of Higher Quality Items
    }
    },
  [670] = {
    name = "Evil Barrier",
    stats = {
    },
    custom_suffix = "\n {red} Make Your Own Charm!",
    },
  [671] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [672] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [673] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [674] = {
    name = "Bigfoot",
    stats = {
    {id = 151, min = 1, max = 5, param = 113},  -- Level 1-5 Concentration Aura When Equipped
    {id = 93, min = 15, max = 30},  -- +15-30% Increased Attack Speed
    {id = 99, min = 12, max = 24},  -- +12-24% Faster Hit Recovery
    {id = 7, min = 50, max = 100},  -- +50-100 to Life
    }
    },
  [675] = {
    name = "Static Calling",
    stats = {
    {id = 83, min = 1, max = 2, param = 2},  -- +1-2 to Necromancer Skill Levels
    {id = 281, min = 100, max = 150},  -- Summon Damage: +100-150%
    {id = 284, min = 20, max = 40},  -- Summon Max HP: +20-40%
    }
    },
  [676] = {
    name = "Prismatic Magefist",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [677] = {
    name = "The Rising Wisp",
    stats = {
    },
    custom_suffix = "\n {red} [A]Maxed Stats",
    },
  [678] = {
    name = "Akara's Blessing",
    stats = {
    {id = 143, min = 3, max = 6},  -- +3-6 Fire Absorb
    }
    },
  [679] = {
    name = "Vestment of The Piercing Ray",
    stats = {
    {id = 188, min = 1, max = 2, param = 24},  -- +1-2 to Combat Skills (Paladin Only)
    {id = 107, min = 1, max = 3, param = 101},  -- +1-3 to Holy Bolt (Paladin only)
    {id = 357, min = 25, max = 40},  -- +25%-40% to Magic Skill Damage
    }
    },
  [680] = {
    name = "Spartan's Ire",
    stats = {
    {id = 151, min = 5, max = 10, param = 104},  -- Level 5-10 Defiance Aura When Equipped
    {id = 127, min = 1, max = 2},  -- +1-2 to All Skills
    {id = 286, min = 25, max = 35},  -- Reduce Cooldowns by 25-35%
    }
    },
  [681] = {
    name = "The Grandfather (1.08)",
    stats = {
    {id = 151, min = 10, max = 20, param = 503},  -- Level 10-20 Physical Conviction Aura When Equipped
    }
    },
  [682] = {
    name = "Baranar's Star (1.08)",
    stats = {
    },
    custom_suffix = "\n {red} Need stat range",
    },
  [689] = {
    name = "Amalthea",
    stats = {
    {id = {79,80}, min = 20, max = 60},  -- Gold Find, Magic Find
    {id = 151, min = 2, max = 6, param = 383},  -- Meditation Aura
    }
    },
  [690] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [691] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [692] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [693] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [694] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [695] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [696] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [697] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [698] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [699] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [700] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
  [701] = { -- 
    name = "",
    stats = {
    },
    custom_suffix = "\n {red} Placeholder",
    },
}
-- =============================================================================
-- Master Value for Superior items. DO NOT TOUCH.
-- =============================================================================
local SuperiorStatData = {
    [1] = {
        name = "Attribute",
        suffix = "\n {red} Attribute!",
        stats = {
            {id = 0, min = 1, max = 15}
        }
    },
    [2] = {
        name = "All Res",
        suffix = "\n {red} All Res!",
        stats = {
            {id = 39, min = 1, max = 10}
        }
    },
    [3] = {
        name = "Max Res",
        suffix = "\n {red} Max res!",
        stats = {
            {id = 40, min = 1, max = 5}
        }
    },
    [4] = {
        name = "CB/AR",
        suffix = "\n {red} CB/AR!",
        stats = {
            {id = 136, min = 1, max = 10}
        }
    },
    [5] = {
        name = "Run Speed",
        suffix = "\n {red} Run Speed!",
        stats = {
            {id = 96, min = 1, max = 15}
        }
    },
    [6] = {
        name = "-Res/Immune",
        suffix = "\n {red} -Res/Immune!",
        stats = {
            {id = 187, min = 1, max = 10},
            {id = 333, min = 1, max = 10},
        }
    },
    [7] = {
        name = "Atkspd/FCR",
        suffix = "\n {red} Atkspd/FCR!",
        stats = {
            {id = 93, min = 1, max = 15},
            {id = 105, min = 1, max = 15},
        }
    },
    [8] = {
        name = "Exp/Life/Mana",
        suffix = "\n {red} Exp/Life/Mana!",
        stats = {
            {id = 85, min = 1, max = 10},
            {id = 60, min = 1, max = 5},
            {id = 62, min = 1, max = 5},
        }
    },
    [9] = {
        name = "CD/Buff",
        suffix = "\n {red} CD/Buff!",
        stats = {
            {id = 286, min = 1, max = 15},
            {id = 427, min = 1, max = 20},
        }
    },
    [10] = {
        name = "Indestructible",
        suffix = "\n {red} Indestructible",
        stats = {
            {id = 152, min = 1, max = 2},
        }
    },
}


-- =============================================================================
-- Lootfilter Rules! 
-- =============================================================================
local filterConfig = {
    reload = "{pink} Zexylol's Hardconfig Filter {pink}Reloaded",
  --debug = T,
  filter_level = 1,
  filter_titles = {"Endgame", "Gearing", "Leveling",},
  allowOverrides = T,
  rules = {
        { --Display item levels for weapons, armors, charms, jewels, rings, amulets and arrows/bolts, to the right of item name, (x)
            codes = "allitems",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 5, 6, 10, 12, 45, 50, 58, 82, 83, 84 },
        suffix = " ({ilvl})",
    },
  --Rules Debugg.
    {
      codes = "allitems",
      location = UniDropLoc,
      --difficulty = "Nightmare, Hell",
      --prefix = "S388={stat=(151,383)}|S20={stat=(97,718)}|",
      --prefix = "[{index}]",
      --prefix = "[{code}]",
      --prefix = "[{itype}]",
      --prefix = "C=[{code}] R=[{rarity}] In=[{index}] IT=[{itype}] IL=[{ilvl}]",
      --suffix = "[{quality}]",
      --suffix = "[{rarity}]",
      --suffix = "[{index}]",
      --suffix = "[{ilvl}]",
      --prefix = "Sockets[{maxsock}]",
      --filter_levels = "1,2,3"
    },
        {
      code = "CW2",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      notify = "{red} OTHER LEG?!",
      filter_levels = "1,2,3",
    },
  --[[Rules Event Items
    {--Snowballs
      codes = {"Ev00", "Ev01", "Ev02"},
      notify = "ÿc;Throwing time!!",
      filter_levels = "1,2,3"
    },
    {--Cube items
      codes = {"Ev03", "Ev04"},
      notify = "ÿc;Cubing!",
      filter_levels = "1,2,3"
    },
    {--Potions
      codes = {"Ev05", "Ev06", "Ev07", "Ev08", "Ev09", "Ev10"},
      notify = "ÿc;Drink me!",
      filter_levels = "1,2,3"
    },
    {--Thanksgiving Items
      codes = {"Ev1", "Ev2", "Ev3", "Ev4", "Ev5", "Ev6", "Ev7", "Ev8", "elx"},
      notify = "ÿc;YUMMY PIE!",
      filter_levels = "1,2,3"
    },]]--

    --Display Rules

    --Sockets
    {--Display socket count in green if maxed [x]
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      maxsock = T,
      itype = {10, 12, 45, 50 },
      prefix_desc = "{green} [Sockets: {sockets}/{maxsock}] \n",
      filter_levels = "1,2,3",
    },
    {--Display socket count in grey if not maxed [x]
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      maxsock = F,
      itype = {10, 12, 45, 50 },
      prefix_desc = "{gray} [Sockets: {sockets}/{maxsock}] \n",
      filter_levels = "1,2,3",
    },
    --Equipment Tag
    {--Display Runewords tag.
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      runeword = T,
      suffix = "\n{red}Runeword",
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display Temepered tag.
      codes = "allitems",
      quality = "tempered",
      suffix = "\n{red}Tempered",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display Crafted tag.
      codes = "allitems",
      quality = "crafted",
      suffix = "\n{red} Crafted",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      hide = F,
      filter_levels = "1,2,3"
    },
    { --Display Unique Charm Color
      codes = "allitems",
      quality = "7",
      identified = F,
      itype = {82,83,84},
      location = { "onplayer", "onground", "atvendor" },
      prefix = "{gold}"
    },
    {--Display green set border
      codes = "allitems",
      quality = 5,
      border = {000, 255, 000},
    },
    --Item Tag
    {--Display Low rune name.
      codes = {"r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11"},
      suffix = "\n{gray} Low Points Rune",
      --notify = "{gray} Low Rune Points!", --Disabled, remove --in fron of notify to activate.
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display Mid rune name.
      codes = {"r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22"},
      suffix = "\n{green} Mid Points Rune",
      --notify = "{green} Mid Rune Points!", --Disabled, remove --in fron of notify to activate.
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display High rune name with notify.
      codes = {"r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
      suffix = "\n{red} High Points Rune",
      notify = "{red} High Rune Points!",
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display Ultra rune name with notify.
      codes = {"r34", "r35", "r36"},
      name_style = "Rainbow",
      suffix = "\n Ultra Points Rune",
      notify = "{pink} Ultra Rune Points!",
      border = {255,0,0},
      hide = F,
      filter_levels = "1,2,3"
    },
    {--Display Ultra Enhancment crystals
      codes = {"z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27"},
      notify = "{red} Ultra Enhancement Crystal",
      name_override = "{red} Ultra Enhancement Crystal",
      border = {255,0,0},
      filter_levels = "1,2,3",
    },
    {--Color Dyes
      codes = {"z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69","z70", "z71", "z72", "z73"},
      border = { 255, 255, 255},
    },
    {--Display DemonTempering name with notify.
      codes = {"C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", 
      "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", 
      "C32", "C33", "C34", "C35", "C36", "C37"},
      name_style = "Toxic Fog",
      suffix = "\n Temepered Mats!",
      notify = "{pink} Tempered Material!",
      border = {255,0,0},
      filter_levels = "1,2,3"
    },
    
    --Hide Gold
    {--Gold <1000, level 50-98
      code = "gld",
      stat = {index = 14, op = "<=", value = 1000 }, --Goldstack under 1000 is hidden.
      pstat = {index = 12, op = ">=", value = 50 }, --Level above 50.
      location = {"onground", "dropping"},
      hide = T, 
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    {--Gold <5000, level 99+
      code = "gld",
      stat = {index = 14, op = "<=", value = 5000 }, --Goldstack under 5000 is hidden.
      pstat = {index = 12, op = ">=", value = 99 }, --Level above 99.
      location = {"onground", "dropping"},
      hide = T, 
      area = NotAreaTown,
      filter_levels = "1"
    },

    --Hide Equipment Rules

    --Hide all Inferior and normal types of weapons.
    {--Hide all Inferior, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "1",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "1",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "1",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "2",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "2",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Elite Weapons
      codes = {"7sp", "7ts", "7o7", "Ss2", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", "7bs", "7qs", 
      "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", "7gw", "7sr", "7vo", 
      "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", "6ss", "7wd", "7ba", "7s7", 
      "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", "7gi", "6mx", "Bm3", "7ax", 
      "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", "7b7", "7wc", "Ss4", "6l7", 
      "6rx", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", "7tk", "7ja", "7br", "obf", "7wa", 
      "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1", "l13", "l17", "l14", "l15", "l16"},
      quality = "2",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    --Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.
    {--Hide all Magic, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "4",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "4",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "4",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "6",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "6",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "6",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    --Hide all Inferior and normal types of Armors.
    {--Hide all Inferior, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "1",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "1",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "1",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "2",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "2",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l04", "Bp6", "pae", "utp", "utg", "baf", "ulc", "ci3", "ned", "uh9", 
      "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", "pac", "ukp", "upl", "Gg3", 
      "drc", "neb", "uvb", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "Ag6", "Sa6", "bab", "urg", "ult", "urn", "uld", 
      "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", 
      "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", "umc", "dre", "Ab6", "Zc3", "ulb", "uml", "Bb6", "Bb3", "ulg", 
      "uth", "Bp3", "bad", "urs", "Wp3", "uuc", "Oa3", "l01", "l03", "l09", "l08", "l12", "l11", "l06", "l02", "l07", "l10", 
      "l05"},
      quality = "2",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    --Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.
    {--Hide all Magic, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "4",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "4",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "4",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "6",
      rarity = "0",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "6",
      rarity = "1",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "6",
      rarity = "2",
      runeword = F,
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    --Hide Arrows that are Inferior, Normal, Superior, Magic and Rare.
    {--Hide Magic and below arrows and bolts
      codes = {"aqv", "cqv"},
      quality = "4-",
      rarity = "2-",
      location = {"onground", "dropping"},
      runeword = F,
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide Rare arrows and bolts
      codes = {"aqv", "cqv"},
      quality = "6",
      rarity = "2-",
      location = {"onground", "dropping"},
      runeword = F,
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    --Hide all Gems.
    {--Hide all low Gems.
      codes = {"gcr", "gcy", "gcb", "gsy", "gfv", "gfw", "gfy", "gfb", "skf", "gfg", "gsg", "sku", "gsr", "gsv", "gsw", 
      "gfr", "gsb", "glb", "glw", "gzv", "glg", "skl", "glr", "skc", "gly", "gcv", "gcg", "gcw"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    {--Hide all high Gems. DISABLE THIS IF YOU NEED GEMS.
      codes = {"gpv", "skz", "gpr", "gpg", "gpb", "gpy", "gpw"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1"
    },
    --Hide Magic Charms
    { --Hide Small Charms with less then 5 CDR, 7 MR and 5 All Res
      code = "cm1",
      quality = 4,
      stat = {
      {index = {286,39,41,43,45}, op = "<", value = 5},
      {index = 80, op = "<", value = 7},
      },
      hide = T,
    },
    {
      code = "cm1",
      quality = 4,
      stat = {
      {index = 286, op = "<", value = 5},
      {index = 80, op = "<", value = 7},
      {index = 39, op = ">=", value = 5},
      {index = 41, op = "<=", value = 1},
      },
      hide = T,
    },
    {
      code = "cm1",
      quality = 4,
      stat = {
      {index = 286, op = "<", value = 5},
      {index = 80, op = "<", value = 7},
      {index = 41, op = ">=", value = 5},
      {index = 43, op = "<=", value = 1},
      },
      hide = T,
    },
    {
      code = "cm1",
      quality = 4,
      stat = {
      {index = 286, op = "<", value = 5},
      {index = 80, op = "<", value = 7},
      {index = 43, op = ">=", value = 5},
      {index = 45, op = "<=", value = 1},
      },
      hide = T,
    },
    {
      code = "cm1",
      quality = 4,
      stat = {
      {index = 286, op = "<", value = 5},
      {index = 80, op = "<", value = 7},
      {index = 45, op = ">=", value = 5},
      {index = 39, op = "<=", value = 1},
      },
      hide = T,
    },

  --Rule 54-   MISC OR THINGS I FORGOT.

    {--Treasures Notify
      codes = {"Rgx", "Ev0", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", 
      "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "y33","S01"},
      notify = "ÿc;Treasure Nearby",
      border = {139, 99, 197},
      filter_levels = "1,2,3"
    },
    {--Hide Magic Rings/Amulet, if you want to get Magic rings/Amulet, change: hide = T, to: F, .
      codes = {"rin", "amu"},
      quality = "4",
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    {--Hide Rare Rings/Amulet, if you want to get Rare rings/Amulet, change: hide = T, to: F, .
      codes = {"rin", "amu"},
      quality = "6",
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    {--Display Scrolls of Torment and notify.
      codes = {"K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", 
      "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", 
      "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", 
      "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", 
      "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80"},
      name_style = "Frost Wave",
      suffix = "\n Trial Portal",
      notify = "{pink} Trial Portal!",
      filter_levels = "1,2,3"
    },
    {--Hide Magic Jewels, if you want to get Magic Jewels, change: hide = T, to: F, .
      code = "jew",
      quality = "4",
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2"
    },
    {--Hide Charms, to hide Magic charms, change: hide = F, to: T, .
      codes = {"cm1", "cm2", "cm3"},
      quality = "4",
      hide = F,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Weird items to hide.
      codes = {"Ag2", "Ag5", "Na5", "Na2", "Sa2", "Sa5"},
      quality = {"1", "2", "4", "6"},
      rarity = "2-",
      location = {"onground", "dropping"},
      hide = T,
      area = NotAreaTown,
      filter_levels = "1,2,3"
    },
    {--Hide pots, Minor/major HP / MP, small Rejuvs.
      codes = {"hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs"},
      location = {"onground", "dropping"},
      area = NotAreaTown,
      hide = T,
      filter_levels = "1,2"
    },
    {--Display RMD "Elite Bases"with a special EB icon in RMD Red, to the right of item name
      codes = NOT {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
      rarity = 2,
      location = {"onground", "onplayer", "equipped", "atvendor"},
      itype = {45, 50 },
      suffix = "{tan}ⅲ",
      filter_levels = "1,2,3"
    },
    {--Display RMD "Limit Broken Bases"with a special LB icon in RMD Red, to the right of item name
      codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
      location = {"onground", "onplayer", "equipped", "atvendor"},
      itype = {45, 50 },
      ilvl = "103+",
      suffix = "{tan}ⅳ",
      filter_levels = "1,2,3"
    },
    -- Faceted Memory
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Amazon Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      {index = 107, op = "==", param = {6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Amazon Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Sorceress Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Sorceress Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Necromancer Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Necromancer Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Paladin Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,174,175,176,177}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Paladin Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Barbarian Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Barbarian Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Druid Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Druid Skiller Jewel!",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = {683, 684, 685, 686, 687, 688}, -- Faceted Memorys - Assassin Skills
      runeword = F,
      location = UniDropLoc,
      stat = OR {
      { index = 107, op = "==", param = {252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281}, value = 2},
      },
      border = UniMaxBor,
      notify = "Faceted Memory",
      suffix = "\n {red} Assassin Skiller Jewel!",
      filter_levels = "1,2,3"
    },
  }
}

-- =============================================================================
-- Custom rule to save suffixed added manually
-- =============================================================================
for itemIndex, itemInfo in pairs(UniqueItemData) do
  
  local itemSuffix = MaxTag
    if itemInfo.custom_suffix then
        itemSuffix = itemInfo.custom_suffix
    end
    
-- ---------------------------------------------------------------------
-- Rule for Maxed stats Uniques
-- ---------------------------------------------------------------------
    local maxRule = {
        codes = "allitems",
        quality = "7",
        index = itemIndex,
        runeword = F,
        location = UniDropLoc,
        border = UniMaxBor,
    suffix = itemSuffix,
        filter_levels = "1,2,3",
    stat = {}
    }

    for s = 1, #itemInfo.stats do
        local stat = itemInfo.stats[s]
        
        -- Adjust some stats value with internal calculations.
        local finalMax = stat.max
        if stat.id == 9 then finalMax = stat.max * 256 end
        if stat.id == 7 then finalMax = stat.max * 256 end
        if stat.id == 216 then finalMax = stat.max * 2048 end
        if stat.id == 217 then finalMax = stat.max * 2048 end

        local statBlock = { index = stat.id, op = "==", value = finalMax }
        
        -- Param if needed
        if stat.param then statBlock.param = stat.param end
        
        table.insert(maxRule.stat, statBlock)
    end
    table.insert(filterConfig.rules, maxRule)

-- ---------------------------------------------------------------------
-- Rule Hide Uniques <70% in all stats
-- ---------------------------------------------------------------------
    local hideRule = {
        codes = "allitems",
        quality = "7",
        index = itemIndex,
        runeword = F,
        area = NotAreaTown,
        hide = T,
        filter_levels = "1,2,3",
    stat = {}
    }

    for s = 1, #itemInfo.stats do
        local stat = itemInfo.stats[s]
        
        -- Calculate 70% Value: min + (max - min) * 0.7
        local calculatedLimit = stat.min + (stat.max - stat.min) * 0.7
        
        -- Adjust some stats value with internal calculations.
        if stat.id == 9 then calculatedLimit = calculatedLimit * 256 end
        if stat.id == 7 then calculatedLimit = calculatedLimit * 256 end
        if stat.id == 216 then calculatedLimit = calculatedLimit * 2048 end
        if stat.id == 217 then calculatedLimit = calculatedLimit * 2048 end

        local statBlock = { index = stat.id, op = "<=", value = calculatedLimit }
        
        -- Param if needed
        if stat.param then statBlock.param = stat.param end
        
        table.insert(hideRule.stat, statBlock)
    end
    table.insert(filterConfig.rules, hideRule)
end

-- =============================================================================
-- Hide none maxed superior items
-- =============================================================================

-- Hide value 1 to Max-1 value
for groupIndex, groupInfo in pairs(SuperiorStatData) do
    for s = 1, #groupInfo.stats do
        local stat = groupInfo.stats[s]
        
        table.insert(filterConfig.rules, {
            codes = "allitems",
            quality = "3",
            runeword = F,
            area = NotAreaTown,
            hide = T,
            filter_levels = "1,2,3",
            stat = {
                { index = stat.id, op = "between", value = { 1, stat.max - 1 } }
            }
        })
    end
end

-- Set suffix and border
for groupIndex, groupInfo in pairs(SuperiorStatData) do
    
    local maxRule = {
        codes = "allitems",
        quality = "3",
        runeword = F,
        location = UniDropLoc,
        border = {204, 204, 204, 204},
        suffix = groupInfo.suffix,
        filter_levels = "1,2,3",
        stat = {}
    }

    for s = 1, #groupInfo.stats do
        local stat = groupInfo.stats[s]
        table.insert(maxRule.stat, {
            index = stat.id,
            op = "==",
            value = stat.max
        })
    end
    table.insert(filterConfig.rules, maxRule)
end

-- Do not hide 0 value superiors (to avoid 0 FCS value hides an Max CD item etc.)
table.insert(filterConfig.rules, {
    codes = "allitems",
    quality = "3",
    runeword = F,
    location = {"onground", "dropping"},
    hide = F,
    filter_levels = "1,2,3"
})

return filterConfig

  --all attr = 19, 15, 16, 37, 51, 3 --
  --max all res = 26, 51 --
  --all ress = 19, 15, 37, 51, 3 --
  --mana/hp/xp = 19, 16, 37, 3 --
  --run/walk = 15, 37, 51, 3, 45 --
  --IAS/FCS = 16, 45 --
  --Enemy res/imun = 45 --
  --CB/AR = 45 --
  --CDR/Buff = 45 --