--- Filter Title: WolfieeifloW's Debug v1.0
--- Filter Type: NOT FOR NORMAL USAGE. Used for debugging and testing, mostly for filter creators.
--- Filter Description: DO NOT USE THIS FOR NORMAL PLAY. It is for testing and debugging.
return {
    reload = "WolfieeifloW's DEBUG v1.0: {green}reloaded",
    debug = false,
    rules = {
        -- +-------------------------+
        -- | TAGS & GENERIC RULES    |
        -- +-------------------------+
        { -- Adding [Eth] tag to items
            codes = "allitems",
            ethereal = true,
            suffix = " {gray}[Eth]"
        },
        { -- Adding socket number tag to Ethereal items
            codes = "allitems",
            ethereal = true,
            sockets = "1+",
            prefix = "ÿcI",
            suffix = "{gray}[{sockets}]"
        },
        { -- Adding socket number tag to Non-Ethereal items
            codes = "allitems",
            ethereal = false,
            sockets = "1+",
            suffix = " {gray}[{sockets}]"
            -- This second rule makes [Eth] and socket number ([#]) beside each other
        },
        -- +-------------------------+
        -- | MISC TESTING            |
        -- +-------------------------+
        {
            codes = "allitems",
            location = { "onplayer", "equipped", "onground", "dropping", "atvendor" },
            suffix = "\n{gray}[Code: {orange}{code}{gray}]\n[Quality: {orange}{quality}{gray}]\n[Rarity: {orange}{rarity}{gray}]\n[Index: {orange}{index}{gray}]"
        },
        {
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}------ MISC INFO ------{white}"
        },
        -- +-------------------------+
        -- | ITYPE TESTING           |
        -- +-------------------------+
        {
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "{white}"
        },
        { -- Spears and Polearms
            codes = "allitems",
            itype = 104,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[104: Spears and Polearms]"
        },
        { -- Swords and Knives
            codes = "allitems",
            itype = 103,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[103: Swords and Knives]"
        },
        { -- Skull
            codes = "allitems",
            itype = 102,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[102: Skull]"
        },
        { -- Topaz
            codes = "allitems",
            itype = 101,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[101: Topaz]"
        },
        { -- Sapphire
            codes = "allitems",
            itype = 100,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[100: Sapphire]"
        },
        { -- Ruby
            codes = "allitems",
            itype = 99,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[99: Ruby]"
        },
        { -- Emerald
            codes = "allitems",
            itype = 98,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[98: Emerald]"
        },
        { -- Diamond
            codes = "allitems",
            itype = 97,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[97: Diamond]"
        },
        { -- Amethyst
            codes = "allitems",
            itype = 96,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[96: Amethyst]"
        },
        { -- Perfect Gem
            codes = "allitems",
            itype = 95,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[95: Perfect Gem]"
        },
        { -- Flawless Gem
            codes = "allitems",
            itype = 94,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[94: Flawless Gem]"
        },
        { -- Standard Gem
            codes = "allitems",
            itype = 93,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[93: Standard Gem]"
        },
        { -- Flawed Gem
            codes = "allitems",
            itype = 92,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[92: Flawed Gem]"
        },
        { -- Chipped Gem
            codes = "allitems",
            itype = 91,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[91: Chipped Gem]"
        },
        { -- Magic Xbow Quiv
            codes = "allitems",
            itype = 90,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[90: Magic Xbow Quiv]"
        },
        { -- Magic Bow Quiv
            codes = "allitems",
            itype = 89,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[89: Magic Bow Quiv]"
        },
        { -- Hand to Hand 2
            codes = "allitems",
            itype = 88,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[88: Hand to Hand 2]"
        },
        { -- Amazon Javelin
            codes = "allitems",
            itype = 87,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[87: Amazon Javelin]"
        },
        { -- Amazon Spear
            codes = "allitems",
            itype = 86,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[86: Amazon Spear]"
        },
        { -- Amazon Bow
            codes = "allitems",
            itype = 85,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[85: Amazon Bow]"
        },
        { -- Large Charm
            codes = "allitems",
            itype = 84,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[84: Large Charm]"
        },
        { -- Medium Charm
            codes = "allitems",
            itype = 83,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[83: Medium Charm]"
        },
        { -- Small Charm
            codes = "allitems",
            itype = 82,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[82: Small Charm]"
        },
        { -- Thawing Potion
            codes = "allitems",
            itype = 81,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[81: Thawing Potion]"
        },
        { -- Antidote Potion
            codes = "allitems",
            itype = 80,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[80: Antidote Potion]"
        },
        { -- Stamina Potion
            codes = "allitems",
            itype = 79,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[79: Stamina Potion]"
        },
        { -- Rejuv Potion
            codes = "allitems",
            itype = 78,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[78: Rejuv Potion]"
        },
        { -- Mana Potion
            codes = "allitems",
            itype = 77,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[77: Mana Potion]"
        },
        { -- Healing Potion
            codes = "allitems",
            itype = 76,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[76: Healing Potion]"
        },
        { -- Circlet
            codes = "allitems",
            itype = 75,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[75: Circlet]"
        },
        { -- Rune
            codes = "allitems",
            itype = 74,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[74: Rune]"
        },
        { -- Cloak
            codes = "allitems",
            itype = 73,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[73: Cloak]"
        },
        { -- Pelt
            codes = "allitems",
            itype = 72,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[72: Pelt]"
        },
        { -- Primal Helm
            codes = "allitems",
            itype = 71,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[71: Primal Helm]"
        },
        { -- Auric Shields
            codes = "allitems",
            itype = 70,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[70: Auric Shields]"
        },
        { -- Voodoo Heads
            codes = "allitems",
            itype = 69,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[69: Voodoo Heads]"
        },
        { -- Orb
            codes = "allitems",
            itype = 68,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[68: Orb]"
        },
        { -- Hand to Hand
            codes = "allitems",
            itype = 67,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[67: Hand to Hand]"
        },
        { -- Druid Item
            codes = "allitems",
            itype = 66,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[66: Druid Item]"
        },
        { -- Assassin Item
            codes = "allitems",
            itype = 65,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[65: Assassin Item]"
        },
        { -- Sorceress Item
            codes = "allitems",
            itype = 64,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[64: Sorceress Item]"
        },
        { -- Paladin Item
            codes = "allitems",
            itype = 63,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[63: Paladin Item]"
        },
        { -- Necromancer Item
            codes = "allitems",
            itype = 62,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[62: Necromancer Item]"
        },
        { -- Barbarian Item
            codes = "allitems",
            itype = 61,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[61: Barbarian Item]"
        },
        { -- Amazon Item
            codes = "allitems",
            itype = 60,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[60: Amazon Item]"
        },
        { -- Class Specific
            codes = "allitems",
            itype = 59,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[59: Class Specific]"
        },
        { -- Jewel
            codes = "allitems",
            itype = 58,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[58: Jewel]"
        },
        { -- Blunt
            codes = "allitems",
            itype = 57,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[57: Blunt]"
        },
        { -- Missile
            codes = "allitems",
            itype = 56,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[56: Missile]"
        },
        { -- Staves And Rods
            codes = "allitems",
            itype = 55,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[55: Staves And Rods]"
        },
        { -- Second Hand
            codes = "allitems",
            itype = 54,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[54: Second Hand]"
        },
        { -- Socket Filler
            codes = "allitems",
            itype = 53,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[53: Socket Filler]"
        },
        { -- Miscellaneous
            codes = "allitems",
            itype = 52,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[52: Miscellaneous]"
        },
        { -- Any Shield
            codes = "allitems",
            itype = 51,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[51: Any Shield]"
        },
        { -- Any Armor
            codes = "allitems",
            itype = 50,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[50: Any Armor]"
        },
        { -- Combo Weapon
            codes = "allitems",
            itype = 49,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[49: Combo Weapon]"
        },
        { -- Thrown Weapon
            codes = "allitems",
            itype = 48,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[48: Thrown Weapon]"
        },
        { -- Missile Weapon
            codes = "allitems",
            itype = 47,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[47: Missile Weapon]"
        },
        { -- Melee Weapon
            codes = "allitems",
            itype = 46,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[46: Melee Weapon]"
        },
        { -- Weapon
            codes = "allitems",
            itype = 45,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[45: Weapon]"
        },
        { -- Javelin
            codes = "allitems",
            itype = 44,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[44: Javelin]"
        },
        { -- Throwing Axe
            codes = "allitems",
            itype = 43,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[43: Throwing Axe]"
        },
        { -- Throwing Knife
            codes = "allitems",
            itype = 42,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[42: Throwing Knife]"
        },
        { -- Key
            codes = "allitems",
            itype = 41,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[41: Key]"
        },
        { -- Body Part
            codes = "allitems",
            itype = 40,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[40: Body Part]"
        },
        { -- Quest
            codes = "allitems",
            itype = 39,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[39: Quest]"
        },
        { -- Missile Potion
            codes = "allitems",
            itype = 38,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[38: Missile Potion]"
        },
        { -- Helm
            codes = "allitems",
            itype = 37,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[37: Helm]"
        },
        { -- Mace
            codes = "allitems",
            itype = 36,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[36: Mace]"
        },
        { -- Crossbow
            codes = "allitems",
            itype = 35,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[35: Crossbow]"
        },
        { -- Polearm
            codes = "allitems",
            itype = 34,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[34: Polearm]"
        },
        { -- Spear
            codes = "allitems",
            itype = 33,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[33: Spear]"
        },
        { -- Knife
            codes = "allitems",
            itype = 32,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[32: Knife]"
        },
        { -- Hammer
            codes = "allitems",
            itype = 31,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[31: Hammer]"
        },
        { -- Sword
            codes = "allitems",
            itype = 30,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[30: Sword]"
        },
        { -- Club
            codes = "allitems",
            itype = 29,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[29: Club]"
        },
        { -- Axe
            codes = "allitems",
            itype = 28,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[28: Axe]"
        },
        { -- Bow
            codes = "allitems",
            itype = 27,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[27: Bow]"
        },
        { -- Staff
            codes = "allitems",
            itype = 26,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[26: Staff]"
        },
        { -- Wand
            codes = "allitems",
            itype = 25,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[25: Wand]"
        },
        { -- Scepter
            codes = "allitems",
            itype = 24,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[24: Scepter]"
        },
        { -- Not Used
            codes = "allitems",
            itype = 23,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[23: Not Used]"
        },
        { -- Scroll
            codes = "allitems",
            itype = 22,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[22: Scroll]"
        },
        { -- Torch
            codes = "allitems",
            itype = 21,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[21: Torch]"
        },
        { -- Gem
            codes = "allitems",
            itype = 20,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[20: Gem]"
        },
        { -- Belt
            codes = "allitems",
            itype = 19,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[19: Belt]"
        },
        { -- Book
            codes = "allitems",
            itype = 18,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[18: Book]"
        },
        { -- Not Used
            codes = "allitems",
            itype = 17,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[17: Not Used]"
        },
        { -- Gloves
            codes = "allitems",
            itype = 16,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[16: Gloves]"
        },
        { -- Boots
            codes = "allitems",
            itype = 15,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[15: Boots]"
        },
        { -- Not Used
            codes = "allitems",
            itype = 14,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[14: Not Used]"
        },
        { -- Charm
            codes = "allitems",
            itype = 13,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[13: Charm]"
        },
        { -- Amulet
            codes = "allitems",
            itype = 12,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[12: Amulet]"
        },
        { -- Elixir
            codes = "allitems",
            itype = 11,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[11: Elixir]"
        },
        { -- Ring
            codes = "allitems",
            itype = 10,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[10: Ring]"
        },
        { -- Potion
            codes = "allitems",
            itype = 9,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[9: Potion]"
        },
        { -- Herb
            codes = "allitems",
            itype = 8,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[8: Herb]"
        },
        { -- Player Body Part
            codes = "allitems",
            itype = 7,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[7: Player Body Part]"
        },
        { -- Crossbow Quiver
            codes = "allitems",
            itype = 6,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[6: Crossbow Quiver]"
        },
        { -- Bow Quiver
            codes = "allitems",
            itype = 5,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[5: Bow Quiver]"
        },
        { -- Gold
            codes = "allitems",
            itype = 4,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[4: Gold]"
        },
        { -- Armor
            codes = "allitems",
            itype = 3,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[3: Armor]"
        },
        { -- Shield
            codes = "allitems",
            itype = 2,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[2: Shield]"
        },
        { -- None
            codes = "allitems",
            itype = 1,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[1: None]"
        },
        {
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}-------- ITYPE --------{white}"
        },
        -- +-------------------------+
        -- | STAT INDEX TESTING      |
        -- +-------------------------+
        { -- LB_Three
            codes = "allitems",
            stat = {index = 485, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[485: LB_Three]"
        },
        { -- LB_Two
            codes = "allitems",
            stat = {index = 484, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[484: LB_Two]"
        },
        { -- LB_One
            codes = "allitems",
            stat = {index = 483, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[483: LB_One]"
        },
        { -- LB_Unlock
            codes = "allitems",
            stat = {index = 482, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[482: LB_Unlock]"
        },
        { -- xp_hidden
            codes = "allitems",
            stat = {index = 481, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[481: xp_hidden]"
        },
        { -- item_skillonmondeath
            codes = "allitems",
            stat = {index = 480, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[480: item_skillonmondeath]"
        },
        { -- item_skillonhit_piercing
            codes = "allitems",
            stat = {index = 479, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[479: item_skillonhit_piercing]"
        },
        { -- item_skillonhit_cleaving
            codes = "allitems",
            stat = {index = 478, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[478: item_skillonhit_cleaving]"
        },
        { -- item_skillonhit_sweeping
            codes = "allitems",
            stat = {index = 477, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[477: item_skillonhit_sweeping]"
        },
        { -- RB_Ultra
            codes = "allitems",
            stat = {index = 476, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[476: RB_Ultra]"
        },
        { -- RW_TierDisplay
            codes = "allitems",
            stat = {index = 475, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[475: RW_TierDisplay]"
        },
        { -- RW_Tier
            codes = "allitems",
            stat = {index = 474, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[474: RW_Tier]"
        },
        { -- energy_hidden
            codes = "allitems",
            stat = {index = 473, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[473: energy_hidden]"
        },
        { -- item_numsockets_percent
            codes = "allitems",
            stat = {index = 472, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[472: item_numsockets_percent]"
        },
        { -- item_skillongethit_hidden
            codes = "allitems",
            stat = {index = 471, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[471: item_skillongethit_hidden]"
        },
        { -- item_skillonhit_hidden
            codes = "allitems",
            stat = {index = 470, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[470: item_skillonhit_hidden]"
        },
        { -- item_skillonhit_noctc
            codes = "allitems",
            stat = {index = 469, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[469: item_skillonhit_noctc]"
        },
        { -- item_reanimate_display
            codes = "allitems",
            stat = {index = 468, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[468: item_reanimate_display]"
        },
        { -- map_p_crush
            codes = "allitems",
            stat = {index = 467, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[467: map_p_crush]"
        },
        { -- map_p_cdr
            codes = "allitems",
            stat = {index = 466, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[466: map_p_cdr]"
        },
        { -- map_p_itd
            codes = "allitems",
            stat = {index = 465, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[465: map_p_itd]"
        },
        { -- map_p_exp
            codes = "allitems",
            stat = {index = 464, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[464: map_p_exp]"
        },
        { -- map_p_magic
            codes = "allitems",
            stat = {index = 463, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[463: map_p_magic]"
        },
        { -- map_p_gold
            codes = "allitems",
            stat = {index = 462, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[462: map_p_gold]"
        },
        { -- map_p_haek
            codes = "allitems",
            stat = {index = 461, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[461: map_p_haek]"
        },
        { -- map_p_maek
            codes = "allitems",
            stat = {index = 460, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[460: map_p_maek]"
        },
        { -- map_p_undead
            codes = "allitems",
            stat = {index = 459, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[459: map_p_undead]"
        },
        { -- map_p_demon
            codes = "allitems",
            stat = {index = 458, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[458: map_p_demon]"
        },
        { -- map_p_cnbf
            codes = "allitems",
            stat = {index = 457, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[457: map_p_cnbf]"
        },
        { -- map_p_speedc
            codes = "allitems",
            stat = {index = 456, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[456: map_p_speedc]"
        },
        { -- map_p_speeda
            codes = "allitems",
            stat = {index = 455, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[455: map_p_speeda]"
        },
        { -- map_p_speedm
            codes = "allitems",
            stat = {index = 454, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[454: map_p_speedm]"
        },
        { -- map_p_psnres
            codes = "allitems",
            stat = {index = 453, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[453: map_p_psnres]"
        },
        { -- map_p_coldres
            codes = "allitems",
            stat = {index = 452, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[452: map_p_coldres]"
        },
        { -- map_p_lightres
            codes = "allitems",
            stat = {index = 451, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[451: map_p_lightres]"
        },
        { -- map_p_fireres
            codes = "allitems",
            stat = {index = 450, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[450: map_p_fireres]"
        },
        { -- map_p_magres
            codes = "allitems",
            stat = {index = 449, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[449: map_p_magres]"
        },
        { -- map_p_dmgres
            codes = "allitems",
            stat = {index = 448, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[448: map_p_dmgres]"
        },
        { -- map_p_hpper
            codes = "allitems",
            stat = {index = 447, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[447: map_p_hpper]"
        },
        { -- map_p_defper
            codes = "allitems",
            stat = {index = 446, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[446: map_p_defper]"
        },
        { -- map_e_crush
            codes = "allitems",
            stat = {index = 445, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[445: map_e_crush]"
        },
        { -- map_e_allskills
            codes = "allitems",
            stat = {index = 444, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[444: map_e_allskills]"
        },
        { -- map_e_cnbf
            codes = "allitems",
            stat = {index = 443, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[443: map_e_cnbf]"
        },
        { -- map_e_speedm
            codes = "allitems",
            stat = {index = 442, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[442: map_e_speedm]"
        },
        { -- map_e_speeda
            codes = "allitems",
            stat = {index = 441, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[441: map_e_speeda]"
        },
        { -- map_e_psnres
            codes = "allitems",
            stat = {index = 440, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[440: map_e_psnres]"
        },
        { -- map_e_coldres
            codes = "allitems",
            stat = {index = 439, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[439: map_e_coldres]"
        },
        { -- map_e_lightres
            codes = "allitems",
            stat = {index = 438, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[438: map_e_lightres]"
        },
        { -- map_e_fireres
            codes = "allitems",
            stat = {index = 437, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[437: map_e_fireres]"
        },
        { -- map_e_magres
            codes = "allitems",
            stat = {index = 436, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[436: map_e_magres]"
        },
        { -- map_e_dmgres
            codes = "allitems",
            stat = {index = 435, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[435: map_e_dmgres]"
        },
        { -- map_e_level
            codes = "allitems",
            stat = {index = 434, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[434: map_e_level]"
        },
        { -- map_e_hpper
            codes = "allitems",
            stat = {index = 433, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[433: map_e_hpper]"
        },
        { -- map_e_defper
            codes = "allitems",
            stat = {index = 432, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[432: map_e_defper]"
        },
        { -- Freeze_HalfToFull
            codes = "allitems",
            stat = {index = 431, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[431: Freeze_HalfToFull]"
        },
        { -- Weight_Display
            codes = "allitems",
            stat = {index = 430, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[430: Weight_Display]"
        },
        { -- Weight_Dummy
            codes = "allitems",
            stat = {index = 429, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[429: Weight_Dummy]"
        },
        { -- skel_commander
            codes = "allitems",
            stat = {index = 428, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[428: skel_commander]"
        },
        { -- buff_length_modifier
            codes = "allitems",
            stat = {index = 427, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[427: buff_length_modifier]"
        },
        { -- item_fasterattackrate_perenr
            codes = "allitems",
            stat = {index = 426, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[426: item_fasterattackrate_perenr]"
        },
        { -- item_tohit_perenr
            codes = "allitems",
            stat = {index = 425, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[425: item_tohit_perenr]"
        },
        { -- item_fasterattackrate_perstr
            codes = "allitems",
            stat = {index = 424, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[424: item_fasterattackrate_perstr]"
        },
        { -- KillBonus_Display
            codes = "allitems",
            stat = {index = 423, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[423: KillBonus_Display]"
        },
        { -- KillBonus_Dummy
            codes = "allitems",
            stat = {index = 422, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[422: KillBonus_Dummy]"
        },
        { -- KillBonus
            codes = "allitems",
            stat = {index = 421, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[421: KillBonus]"
        },
        { -- PB_Rejuv
            codes = "allitems",
            stat = {index = 420, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[420: PB_Rejuv]"
        },
        { -- JB_Rare
            codes = "allitems",
            stat = {index = 419, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[419: JB_Rare]"
        },
        { -- fireball_radius
            codes = "allitems",
            stat = {index = 418, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[418: fireball_radius]"
        },
        { -- hitpoints_hidden
            codes = "allitems",
            stat = {index = 417, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[417: hitpoints_hidden]"
        },
        { -- Weight_CapacityBase
            codes = "allitems",
            stat = {index = 416, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[416: Weight_CapacityBase]"
        },
        { -- Weight_Capacity
            codes = "allitems",
            stat = {index = 415, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[415: Weight_Capacity]"
        },
        { -- Weight_Tracker
            codes = "allitems",
            stat = {index = 414, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[414: Weight_Tracker]"
        },
        { -- item_openwounds_perdex
            codes = "allitems",
            stat = {index = 413, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[413: item_openwounds_perdex]"
        },
        { -- Soul_Level
            codes = "allitems",
            stat = {index = 412, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[412: Soul_Level]"
        },
        { -- item_magskill
            codes = "allitems",
            stat = {index = 411, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[411: item_magskill]"
        },
        { -- item_poisskill
            codes = "allitems",
            stat = {index = 410, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[410: item_poisskill]"
        },
        { -- item_coldskill
            codes = "allitems",
            stat = {index = 409, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[409: item_coldskill]"
        },
        { -- item_lightskill
            codes = "allitems",
            stat = {index = 408, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[408: item_lightskill]"
        },
        { -- item_fireskill
            codes = "allitems",
            stat = {index = 407, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[407: item_fireskill]"
        },
        { -- Soul_Tracker
            codes = "allitems",
            stat = {index = 406, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[406: Soul_Tracker]"
        },
        { -- item_feralsteal
            codes = "allitems",
            stat = {index = 405, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[405: item_feralsteal]"
        },
        { -- item_maulsteal
            codes = "allitems",
            stat = {index = 404, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[404: item_maulsteal]"
        },
        { -- item_ravendamage
            codes = "allitems",
            stat = {index = 403, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[403: item_ravendamage]"
        },
        { -- demontemper_check
            codes = "allitems",
            stat = {index = 402, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[402: demontemper_check]"
        },
        { -- incant_radius
            codes = "allitems",
            stat = {index = 401, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[401: incant_radius]"
        },
        { -- incant_duration
            codes = "allitems",
            stat = {index = 400, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[400: incant_duration]"
        },
        { -- unused399
            codes = "allitems",
            stat = {index = 399, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[399: unused399]"
        },
        { -- body_level
            codes = "allitems",
            stat = {index = 398, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[398: body_level]"
        },
        { -- life_per_hit
            codes = "allitems",
            stat = {index = 397, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[397: life_per_hit]"
        },
        { -- mana_per_hit
            codes = "allitems",
            stat = {index = 396, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[396: mana_per_hit]"
        },
        { -- sorceress
            codes = "allitems",
            stat = {index = 395, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[395: sorceress]"
        },
        { -- item_deathregister
            codes = "allitems",
            stat = {index = 394, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[394: item_deathregister]"
        },
        { -- death_display
            codes = "allitems",
            stat = {index = 393, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[393: death_display]"
        },
        { -- death_dummy
            codes = "allitems",
            stat = {index = 392, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[392: death_dummy]"
        },
        { -- item_killregister
            codes = "allitems",
            stat = {index = 391, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[391: item_killregister]"
        },
        { -- kill_display
            codes = "allitems",
            stat = {index = 390, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[390: kill_display]"
        },
        { -- kill_dummy
            codes = "allitems",
            stat = {index = 389, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[389: kill_dummy]"
        },
        { -- smite
            codes = "allitems",
            stat = {index = 388, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[388: smite]"
        },
        { -- portals_unlock
            codes = "allitems",
            stat = {index = 387, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[387: portals_unlock]"
        },
        { -- ucore_tracker
            codes = "allitems",
            stat = {index = 386, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[386: ucore_tracker]"
        },
        { -- enhance_high
            codes = "allitems",
            stat = {index = 385, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[385: enhance_high]"
        },
        { -- enhance_low
            codes = "allitems",
            stat = {index = 384, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[384: enhance_low]"
        },
        { -- chest_treasure
            codes = "allitems",
            stat = {index = 383, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[383: chest_treasure]"
        },
        { -- item_slow_perdex
            codes = "allitems",
            stat = {index = 382, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[382: item_slow_perdex]"
        },
        { -- hsbonus
            codes = "allitems",
            stat = {index = 381, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[381: hsbonus]"
        },
        { -- vitality_hidden
            codes = "allitems",
            stat = {index = 380, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[380: vitality_hidden]"
        },
        { -- boneadded
            codes = "allitems",
            stat = {index = 379, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[379: boneadded]"
        },
        { -- Celestial_Aid
            codes = "allitems",
            stat = {index = 378, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[378: Celestial_Aid]"
        },
        { -- RW_Tracker
            codes = "allitems",
            stat = {index = 377, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[377: RW_Tracker]"
        },
        { -- Soul_Ass
            codes = "allitems",
            stat = {index = 376, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[376: Soul_Ass]"
        },
        { -- Soul_Dru
            codes = "allitems",
            stat = {index = 375, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[375: Soul_Dru]"
        },
        { -- Soul_Bar
            codes = "allitems",
            stat = {index = 374, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[374: Soul_Bar]"
        },
        { -- Soul_Pal
            codes = "allitems",
            stat = {index = 373, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[373: Soul_Pal]"
        },
        { -- Soul_Nec
            codes = "allitems",
            stat = {index = 372, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[372: Soul_Nec]"
        },
        { -- Soul_Sor
            codes = "allitems",
            stat = {index = 371, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[371: Soul_Sor]"
        },
        { -- Soul_Ama
            codes = "allitems",
            stat = {index = 370, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[370: Soul_Ama]"
        },
        { -- score_tracker
            codes = "allitems",
            stat = {index = 369, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[369: score_tracker]"
        },
        { -- CD_Tracker
            codes = "allitems",
            stat = {index = 368, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[368: CD_Tracker]"
        },
        { -- CD_Purple
            codes = "allitems",
            stat = {index = 367, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[367: CD_Purple]"
        },
        { -- CD_Yellow
            codes = "allitems",
            stat = {index = 366, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[366: CD_Yellow]"
        },
        { -- CD_Green
            codes = "allitems",
            stat = {index = 365, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[365: CD_Green]"
        },
        { -- CD_Red
            codes = "allitems",
            stat = {index = 364, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[364: CD_Red]"
        },
        { -- CD_Blue
            codes = "allitems",
            stat = {index = 363, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[363: CD_Blue]"
        },
        { -- CD_Black
            codes = "allitems",
            stat = {index = 362, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[362: CD_Black]"
        },
        { -- CD_White
            codes = "allitems",
            stat = {index = 361, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[361: CD_White]"
        },
        { -- skill_missile_damage_scale
            codes = "allitems",
            stat = {index = 360, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[360: skill_missile_damage_scale]"
        },
        { -- skill_cooldown
            codes = "allitems",
            stat = {index = 359, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[359: skill_cooldown]"
        },
        { -- passive_mag_pierce
            codes = "allitems",
            stat = {index = 358, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[358: passive_mag_pierce]"
        },
        { -- passive_mag_mastery
            codes = "allitems",
            stat = {index = 357, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[357: passive_mag_mastery]"
        },
        { -- questitemdifficulty
            codes = "allitems",
            stat = {index = 356, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[356: questitemdifficulty]"
        },
        { -- shortparam1
            codes = "allitems",
            stat = {index = 355, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[355: shortparam1]"
        },
        { -- source_unit_id
            codes = "allitems",
            stat = {index = 354, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[354: source_unit_id]"
        },
        { -- source_unit_type
            codes = "allitems",
            stat = {index = 353, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[353: source_unit_type]"
        },
        { -- last_sent_hp_pct
            codes = "allitems",
            stat = {index = 352, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[352: last_sent_hp_pct]"
        },
        { -- modifierlist_level
            codes = "allitems",
            stat = {index = 351, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[351: modifierlist_level]"
        },
        { -- modifierlist_skill
            codes = "allitems",
            stat = {index = 350, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[350: modifierlist_skill]"
        },
        { -- passive_summon_resist
            codes = "allitems",
            stat = {index = 349, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[349: passive_summon_resist]"
        },
        { -- passive_weaponblock
            codes = "allitems",
            stat = {index = 348, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[348: passive_weaponblock]"
        },
        { -- passive_mastery_throw_crit
            codes = "allitems",
            stat = {index = 347, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[347: passive_mastery_throw_crit]"
        },
        { -- passive_mastery_throw_dmg
            codes = "allitems",
            stat = {index = 346, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[346: passive_mastery_throw_dmg]"
        },
        { -- passive_mastery_throw_th
            codes = "allitems",
            stat = {index = 345, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[345: passive_mastery_throw_th]"
        },
        { -- passive_mastery_melee_crit
            codes = "allitems",
            stat = {index = 344, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[344: passive_mastery_melee_crit]"
        },
        { -- passive_mastery_melee_dmg
            codes = "allitems",
            stat = {index = 343, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[343: passive_mastery_melee_dmg]"
        },
        { -- passive_mastery_melee_th
            codes = "allitems",
            stat = {index = 342, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[342: passive_mastery_melee_th]"
        },
        { -- passive_warmth
            codes = "allitems",
            stat = {index = 341, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[341: passive_warmth]"
        },
        { -- passive_evade
            codes = "allitems",
            stat = {index = 340, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[340: passive_evade]"
        },
        { -- passive_avoid
            codes = "allitems",
            stat = {index = 339, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[339: passive_avoid]"
        },
        { -- passive_dodge
            codes = "allitems",
            stat = {index = 338, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[338: passive_dodge]"
        },
        { -- passive_critical_strike
            codes = "allitems",
            stat = {index = 337, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[337: passive_critical_strike]"
        },
        { -- passive_pois_pierce
            codes = "allitems",
            stat = {index = 336, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[336: passive_pois_pierce]"
        },
        { -- passive_cold_pierce
            codes = "allitems",
            stat = {index = 335, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[335: passive_cold_pierce]"
        },
        { -- passive_ltng_pierce
            codes = "allitems",
            stat = {index = 334, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[334: passive_ltng_pierce]"
        },
        { -- passive_fire_pierce
            codes = "allitems",
            stat = {index = 333, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[333: passive_fire_pierce]"
        },
        { -- passive_pois_mastery
            codes = "allitems",
            stat = {index = 332, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[332: passive_pois_mastery]"
        },
        { -- passive_cold_mastery
            codes = "allitems",
            stat = {index = 331, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[331: passive_cold_mastery]"
        },
        { -- passive_ltng_mastery
            codes = "allitems",
            stat = {index = 330, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[330: passive_ltng_mastery]"
        },
        { -- passive_fire_mastery
            codes = "allitems",
            stat = {index = 329, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[329: passive_fire_mastery]"
        },
        { -- pierce_idx
            codes = "allitems",
            stat = {index = 328, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[328: pierce_idx]"
        },
        { -- damage_framerate
            codes = "allitems",
            stat = {index = 327, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[327: damage_framerate]"
        },
        { -- poison_count
            codes = "allitems",
            stat = {index = 326, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[326: poison_count]"
        },
        { -- progressive_tohit
            codes = "allitems",
            stat = {index = 325, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[325: progressive_tohit]"
        },
        { -- item_extra_charges
            codes = "allitems",
            stat = {index = 324, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[324: item_extra_charges]"
        },
        { -- progressive_lightning
            codes = "allitems",
            stat = {index = 323, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[323: progressive_lightning]"
        },
        { -- progressive_cold
            codes = "allitems",
            stat = {index = 322, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[322: progressive_cold]"
        },
        { -- progressive_fire
            codes = "allitems",
            stat = {index = 321, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[321: progressive_fire]"
        },
        { -- progressive_other
            codes = "allitems",
            stat = {index = 320, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[320: progressive_other]"
        },
        { -- progressive_steal
            codes = "allitems",
            stat = {index = 319, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[319: progressive_steal]"
        },
        { -- progressive_damage
            codes = "allitems",
            stat = {index = 318, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[318: progressive_damage]"
        },
        { -- burningmax
            codes = "allitems",
            stat = {index = 317, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[317: burningmax]"
        },
        { -- burningmin
            codes = "allitems",
            stat = {index = 316, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[316: burningmin]"
        },
        { -- firelength
            codes = "allitems",
            stat = {index = 315, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[315: firelength]"
        },
        { -- item_ac_percent_vs_monster
            codes = "allitems",
            stat = {index = 314, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[314: item_ac_percent_vs_monster]"
        },
        { -- item_ac_vs_monster
            codes = "allitems",
            stat = {index = 313, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[313: item_ac_vs_monster]"
        },
        { -- item_tohit_percent_vs_monster
            codes = "allitems",
            stat = {index = 312, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[312: item_tohit_percent_vs_monster]"
        },
        { -- item_tohit_vs_monster
            codes = "allitems",
            stat = {index = 311, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[311: item_tohit_vs_monster]"
        },
        { -- item_damage_percent_vs_monster
            codes = "allitems",
            stat = {index = 310, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[310: item_damage_percent_vs_monster]"
        },
        { -- item_damage_vs_monster
            codes = "allitems",
            stat = {index = 309, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[309: item_damage_vs_monster]"
        },
        { -- item_pierce_pois
            codes = "allitems",
            stat = {index = 308, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[308: item_pierce_pois]"
        },
        { -- item_pierce_ltng
            codes = "allitems",
            stat = {index = 307, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[307: item_pierce_ltng]"
        },
        { -- item_pierce_fire
            codes = "allitems",
            stat = {index = 306, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[306: item_pierce_fire]"
        },
        { -- item_pierce_cold
            codes = "allitems",
            stat = {index = 305, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[305: item_pierce_cold]"
        },
        { -- aura_display
            codes = "allitems",
            stat = {index = 304, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[305: aura_display]"
        },
        { -- oskill_display
            codes = "allitems",
            stat = {index = 303, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[303: oskill_display]"
        },
        { -- relic_tracker
            codes = "allitems",
            stat = {index = 302, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[302: relic_tracker]"
        },
        { -- unused301
            codes = "allitems",
            stat = {index = 301, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[301: unused301]"
        },
        { -- OB_Meph
            codes = "allitems",
            stat = {index = 300, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[300: OB_Meph]"
        },
        { -- OB_Baal
            codes = "allitems",
            stat = {index = 299, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[299: OB_Baal]"
        },
        { -- OB_Diablo
            codes = "allitems",
            stat = {index = 298, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[298: OB_Diablo]"
        },
        { -- KB_Dest
            codes = "allitems",
            stat = {index = 297, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[297: KB_Dest]"
        },
        { -- KB_Hate
            codes = "allitems",
            stat = {index = 296, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[296: KB_Hate]"
        },
        { -- KB_Terror
            codes = "allitems",
            stat = {index = 295, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[295: KB_Terror]"
        },
        { -- RB_High
            codes = "allitems",
            stat = {index = 294, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[294: RB_High]"
        },
        { -- RB_Mid
            codes = "allitems",
            stat = {index = 293, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[293: RB_Mid]"
        },
        { -- RB_Low
            codes = "allitems",
            stat = {index = 292, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[292: RB_Low]"
        },
        { -- GB_Total
            codes = "allitems",
            stat = {index = 291, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[291: GB_Total]"
        },
        { -- skill_focus
            codes = "allitems",
            stat = {index = 290, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[290: skill_focus]"
        },
        { -- skill_rage
            codes = "allitems",
            stat = {index = 289, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[289: skill_rage]"
        },
        { -- skill_bonesyn
            codes = "allitems",
            stat = {index = 288, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[288: skill_bonesyn]"
        },
        { -- item_pierce_perdex
            codes = "allitems",
            stat = {index = 287, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[287: item_pierce_perdex]"
        },
        { -- item_cooldownreduction
            codes = "allitems",
            stat = {index = 286, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[286: item_cooldownreduction]"
        },
        { -- sum_cr
            codes = "allitems",
            stat = {index = 285, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[285: sum_cr]"
        },
        { -- sum_hp_perc
            codes = "allitems",
            stat = {index = 284, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[284: sum_hp_perc]"
        },
        { -- sum_ex
            codes = "allitems",
            stat = {index = 283, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[283: sum_ex]"
        },
        { -- sum_speed
            codes = "allitems",
            stat = {index = 282, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[282: sum_speed]"
        },
        { -- sum_dmg_perc
            codes = "allitems",
            stat = {index = 281, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[281: sum_dmg_perc]"
        },
        { -- curse_resistance_perenr
            codes = "allitems",
            stat = {index = 280, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[280: curse_resistance_perenr]"
        },
        { -- map_quality
            codes = "allitems",
            stat = {index = 279, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[279: map_quality]"
        },
        { -- ex_attacks
            codes = "allitems",
            stat = {index = 278, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[278: ex_attacks]"
        },
        { -- item_attackertakescolddamage
            codes = "allitems",
            stat = {index = 277, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[277: item_attackertakescolddamage]"
        },
        { -- ex_missiles
            codes = "allitems",
            stat = {index = 276, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[276: ex_missiles]"
        },
        { -- life_per_gethit
            codes = "allitems",
            stat = {index = 275, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[275: life_per_gethit]"
        },
        { -- mana_per_gethit
            codes = "allitems",
            stat = {index = 274, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[274: mana_per_gethit]"
        },
        { -- dont_use_me_273
            codes = "allitems",
            stat = {index = 273, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[273: dont_use_me_273]"
        },
        { -- dont_use_me_272
            codes = "allitems",
            stat = {index = 272, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[272: dont_use_me_272]"
        },
        { -- item_attackertakesfiredamage
            codes = "allitems",
            stat = {index = 271, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[271: item_attackertakesfiredamage]"
        },
        { -- cheatcheck
            codes = "allitems",
            stat = {index = 270, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[270: cheatcheck]"
        },
        { -- skill_chillsyn
            codes = "allitems",
            stat = {index = 269, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[269: skill_chillsyn]"
        },
        { -- skill_freezesyn
            codes = "allitems",
            stat = {index = 268, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[268: skill_freezesyn]"
        },
        { -- item_skillonmisshit
            codes = "allitems",
            stat = {index = 267, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[267: item_skillonmisshit]"
        },
        { -- item_splash
            codes = "allitems",
            stat = {index = 266, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[266: item_splash]"
        },
        { -- item_energy_percent
            codes = "allitems",
            stat = {index = 265, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[265: item_energy_percent]"
        },
        { -- item_vitality_percent
            codes = "allitems",
            stat = {index = 264, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[264: item_vitality_percent]"
        },
        { -- item_dexterity_percent
            codes = "allitems",
            stat = {index = 263, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[263: item_dexterity_percent]"
        },
        { -- item_strength_percent
            codes = "allitems",
            stat = {index = 262, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[262: item_strength_percent]"
        },
        { -- item_crushingblow_perstr
            codes = "allitems",
            stat = {index = 261, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[261: item_crushingblow_perstr]"
        },
        { -- item_fastercastrate_perenr
            codes = "allitems",
            stat = {index = 260, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[260: item_fastercastrate_perenr]"
        },
        { -- item_armor_perstr
            codes = "allitems",
            stat = {index = 259, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[259: item_armor_perstr]"
        },
        { -- item_deadlystrike_perstr
            codes = "allitems",
            stat = {index = 258, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[258: item_deadlystrike_perstr]"
        },
        { -- item_deadlystrike_perdex
            codes = "allitems",
            stat = {index = 257, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[257: item_deadlystrike_perdex]"
        },
        { -- item_openwounds_perstr
            codes = "allitems",
            stat = {index = 256, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[256: item_openwounds_perstr]"
        },
        { -- item_find_item
            codes = "allitems",
            stat = {index = 255, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[255: item_find_item]"
        },
        { -- item_extra_stack
            codes = "allitems",
            stat = {index = 254, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[254: item_extra_stack]"
        },
        { -- item_replenish_quantity
            codes = "allitems",
            stat = {index = 253, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[253: item_replenish_quantity]"
        },
        { -- item_replenish_durability
            codes = "allitems",
            stat = {index = 252, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[252: item_replenish_durability]"
        },
        { -- item_find_gems_perlevel
            codes = "allitems",
            stat = {index = 251, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[251: item_find_gems_perlevel]"
        },
        { -- item_deadlystrike_perlevel
            codes = "allitems",
            stat = {index = 250, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[250: item_deadlystrike_perlevel]"
        },
        { -- item_kick_damage_perlevel
            codes = "allitems",
            stat = {index = 249, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[249: item_kick_damage_perlevel]"
        },
        { -- item_openwounds_perlevel
            codes = "allitems",
            stat = {index = 248, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[248: item_openwounds_perlevel]"
        },
        { -- item_crushingblow_perlevel
            codes = "allitems",
            stat = {index = 247, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[247: item_crushingblow_perlevel]"
        },
        { -- item_tohit_undead_perlevel
            codes = "allitems",
            stat = {index = 246, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[246: item_tohit_undead_perlevel]"
        },
        { -- item_tohit_demon_perlevel
            codes = "allitems",
            stat = {index = 245, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[245: item_tohit_demon_perlevel]"
        },
        { -- item_damage_undead_perlevel
            codes = "allitems",
            stat = {index = 244, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[244: item_damage_undead_perlevel]"
        },
        { -- item_damage_demon_perlevel
            codes = "allitems",
            stat = {index = 243, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[243: item_damage_demon_perlevel]"
        },
        { -- item_stamina_perlevel
            codes = "allitems",
            stat = {index = 242, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[242: item_stamina_perlevel]"
        },
        { -- item_regenstamina_perlevel
            codes = "allitems",
            stat = {index = 241, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[241: item_regenstamina_perlevel]"
        },
        { -- item_find_magic_perlevel
            codes = "allitems",
            stat = {index = 240, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[240: item_find_magic_perlevel]"
        },
        { -- item_find_gold_perlevel
            codes = "allitems",
            stat = {index = 239, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[239: item_find_gold_perlevel]"
        },
        { -- item_thorns_perlevel
            codes = "allitems",
            stat = {index = 238, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[238: item_thorns_perlevel]"
        },
        { -- item_absorb_mag_perlevel
            codes = "allitems",
            stat = {index = 237, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[237: item_absorb_mag_perlevel]"
        },
        { -- item_absorb_ltng_perlevel
            codes = "allitems",
            stat = {index = 236, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[236: item_absorb_ltng_perlevel]"
        },
        { -- item_absorb_fire_perlevel
            codes = "allitems",
            stat = {index = 235, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[235: item_absorb_fire_perlevel]"
        },
        { -- item_absorb_cold_perlevel
            codes = "allitems",
            stat = {index = 234, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[234: item_absorb_cold_perlevel]"
        },
        { -- item_resist_pois_perlevel
            codes = "allitems",
            stat = {index = 233, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[233: item_resist_pois_perlevel]"
        },
        { -- item_resist_ltng_perlevel
            codes = "allitems",
            stat = {index = 232, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[232: item_resist_ltng_perlevel]"
        },
        { -- item_resist_fire_perlevel
            codes = "allitems",
            stat = {index = 231, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[231: item_resist_fire_perlevel]"
        },
        { -- item_resist_cold_perlevel
            codes = "allitems",
            stat = {index = 230, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[230: item_resist_cold_perlevel]"
        },
        { -- item_pois_damagemax_perlevel
            codes = "allitems",
            stat = {index = 229, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[229: item_pois_damagemax_perlevel]"
        },
        { -- item_ltng_damagemax_perlevel
            codes = "allitems",
            stat = {index = 228, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[228: item_ltng_damagemax_perlevel]"
        },
        { -- item_fire_damagemax_perlevel
            codes = "allitems",
            stat = {index = 227, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[227: item_fire_damagemax_perlevel]"
        },
        { -- item_cold_damagemax_perlevel
            codes = "allitems",
            stat = {index = 226, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[226: item_cold_damagemax_perlevel]"
        },
        { -- item_tohitpercent_perlevel
            codes = "allitems",
            stat = {index = 225, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[225: item_tohitpercent_perlevel]"
        },
        { -- item_tohit_perlevel
            codes = "allitems",
            stat = {index = 224, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[224: item_tohit_perlevel]"
        },
        { -- item_vitality_perlevel
            codes = "allitems",
            stat = {index = 223, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[223: item_vitality_perlevel]"
        },
        { -- item_energy_perlevel
            codes = "allitems",
            stat = {index = 222, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[222: item_energy_perlevel]"
        },
        { -- item_dexterity_perlevel
            codes = "allitems",
            stat = {index = 221, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[221: item_dexterity_perlevel]"
        },
        { -- item_strength_perlevel
            codes = "allitems",
            stat = {index = 220, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[220: item_strength_perlevel]"
        },
        { -- item_maxdamage_percent_perlevel
            codes = "allitems",
            stat = {index = 219, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[219: item_maxdamage_percent_perlevel]"
        },
        { -- item_maxdamage_perlevel
            codes = "allitems",
            stat = {index = 218, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[218: item_maxdamage_perlevel]"
        },
        { -- item_mana_perlevel
            codes = "allitems",
            stat = {index = 217, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[217: item_mana_perlevel]"
        },
        { -- item_hp_perlevel
            codes = "allitems",
            stat = {index = 216, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[216: item_hp_perlevel]"
        },
        { -- item_armorpercent_perlevel
            codes = "allitems",
            stat = {index = 215, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[215: item_armorpercent_perlevel]"
        },
        { -- item_armor_perlevel
            codes = "allitems",
            stat = {index = 214, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[214: item_armor_perlevel]"
        },
        { -- passive_mastery_attack_speed
            codes = "allitems",
            stat = {index = 213, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[213: passive_mastery_attack_speed]"
        },
        { -- passive_mastery_gethit_rate
            codes = "allitems",
            stat = {index = 212, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[212: passive_mastery_gethit_rate]"
        },
        { -- unused211
            codes = "allitems",
            stat = {index = 211, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[211: unused211]"
        },
        { -- unused210
            codes = "allitems",
            stat = {index = 210, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[210: unused210]"
        },
        { -- pali_killtrack
            codes = "allitems",
            stat = {index = 209, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[209: pali_killtrack]"
        },
        { -- Item_Enhanced
            codes = "allitems",
            stat = {index = 208, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[208: Item_Enhanced]"
        },
        { -- passive_mastery_replenish_oncrit
            codes = "allitems",
            stat = {index = 207, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[207: passive_mastery_replenish_oncrit]"
        },
        { -- passive_mastery_noconsume
            codes = "allitems",
            stat = {index = 206, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[206: passive_mastery_noconsume]"
        },
        { -- item_noconsume
            codes = "allitems",
            stat = {index = 205, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[205: item_noconsume]"
        },
        { -- item_charged_skill
            codes = "allitems",
            stat = {index = 204, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[204: item_charged_skill]"
        },
        { -- unused203
            codes = "allitems",
            stat = {index = 203, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[203: unused203]"
        },
        { -- modifierlist_castid
            codes = "allitems",
            stat = {index = 202, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[202: modifierlist_castid]"
        },
        { -- item_skillongethit
            codes = "allitems",
            stat = {index = 201, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[201: item_skillongethit]"
        },
        { -- item_charge_noconsume
            codes = "allitems",
            stat = {index = 200, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[200: item_charge_noconsume]"
        },
        { -- item_skillonlevelup
            codes = "allitems",
            stat = {index = 199, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[199: item_skillonlevelup]"
        },
        { -- item_skillonhit
            codes = "allitems",
            stat = {index = 198, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[198: item_skillonhit]"
        },
        { -- item_skillondeath
            codes = "allitems",
            stat = {index = 197, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[197: item_skillondeath]"
        },
        { -- item_skillonkill
            codes = "allitems",
            stat = {index = 196, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[196: item_skillonkill]"
        },
        { -- item_skillonattack
            codes = "allitems",
            stat = {index = 195, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[195: item_skillonattack]"
        },
        { -- item_numsockets
            codes = "allitems",
            stat = {index = 194, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[194: item_numsockets]"
        },
        { -- item_pierce_magic_immunity
            codes = "allitems",
            stat = {index = 193, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[193: item_pierce_magic_immunity]"
        },
        { -- item_pierce_damage_immunity
            codes = "allitems",
            stat = {index = 192, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[192: item_pierce_damage_immunity]"
        },
        { -- item_pierce_poison_immunity
            codes = "allitems",
            stat = {index = 191, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[191: item_pierce_poison_immunity]"
        },
        { -- item_pierce_light_immunity
            codes = "allitems",
            stat = {index = 190, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[190: item_pierce_light_immunity]"
        },
        { -- item_pierce_fire_immunity
            codes = "allitems",
            stat = {index = 189, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[189: item_pierce_fire_immunity]"
        },
        { -- item_addskill_tab
            codes = "allitems",
            stat = {index = 188, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[188: item_addskill_tab]"
        },
        { -- item_pierce_cold_immunity
            codes = "allitems",
            stat = {index = 187, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[187: item_pierce_cold_immunity]"
        },
        { -- bonus_maxdamage
            codes = "allitems",
            stat = {index = 186, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[186: bonus_maxdamage]"
        },
        { -- bonus_mindamage
            codes = "allitems",
            stat = {index = 185, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[185: bonus_mindamage]"
        },
        { -- deathtrack
            codes = "allitems",
            stat = {index = 184, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[184: deathtrack]"
        },
        { -- killtrack
            codes = "allitems",
            stat = {index = 183, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[183: killtrack]"
        },
        { -- armor_override_percent
            codes = "allitems",
            stat = {index = 182, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[182: armor_override_percent]"
        },
        { -- fade
            codes = "allitems",
            stat = {index = 181, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[181: fade]"
        },
        { -- damage_vs_montype
            codes = "allitems",
            stat = {index = 180, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[180: damage_vs_montype]"
        },
        { -- attack_vs_montype
            codes = "allitems",
            stat = {index = 179, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[179: attack_vs_montype]"
        },
        { -- unit_dooverlay
            codes = "allitems",
            stat = {index = 178, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[178: unit_dooverlay]"
        },
        { -- conversion_maxhp
            codes = "allitems",
            stat = {index = 177, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[177: conversion_maxhp]"
        },
        { -- conversion_level
            codes = "allitems",
            stat = {index = 176, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[176: conversion_level]"
        },
        { -- goldlost
            codes = "allitems",
            stat = {index = 175, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[175: goldlost]"
        },
        { -- target1
            codes = "allitems",
            stat = {index = 174, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[174: target1]"
        },
        { -- target0
            codes = "allitems",
            stat = {index = 173, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[173: target0]"
        },
        { -- alignment
            codes = "allitems",
            stat = {index = 172, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[172: alignment]"
        },
        { -- skill_armor_percent
            codes = "allitems",
            stat = {index = 171, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[171: skill_armor_percent]"
        },
        { -- skill_decrepify
            codes = "allitems",
            stat = {index = 170, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[170: skill_decrepify]"
        },
        { -- skill_frenzy
            codes = "allitems",
            stat = {index = 169, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[169: skill_frenzy]"
        },
        { -- skill_chillingarmor
            codes = "allitems",
            stat = {index = 168, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[168: skill_chillingarmor]"
        },
        { -- skill_conviction
            codes = "allitems",
            stat = {index = 167, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[167: skill_conviction]"
        },
        { -- skill_pierce
            codes = "allitems",
            stat = {index = 166, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[166: skill_pierce]"
        },
        { -- skill_enchant
            codes = "allitems",
            stat = {index = 165, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[165: skill_enchant]"
        },
        { -- skill_concentration
            codes = "allitems",
            stat = {index = 164, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[164: skill_concentration]"
        },
        { -- skill_passive_staminapercent
            codes = "allitems",
            stat = {index = 163, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[163: skill_passive_staminapercent]"
        },
        { -- skill_staminapercent
            codes = "allitems",
            stat = {index = 162, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[162: skill_staminapercent]"
        },
        { -- skill_handofathena
            codes = "allitems",
            stat = {index = 161, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[161: skill_handofathena]"
        },
        { -- item_throw_maxdamage
            codes = "allitems",
            stat = {index = 160, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[160: item_throw_maxdamage]"
        },
        { -- item_throw_mindamage
            codes = "allitems",
            stat = {index = 159, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[159: item_throw_mindamage]"
        },
        { -- item_explosivearrow
            codes = "allitems",
            stat = {index = 158, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[158: item_explosivearrow]"
        },
        { -- item_magicarrow
            codes = "allitems",
            stat = {index = 157, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[157: item_magicarrow]"
        },
        { -- item_pierce
            codes = "allitems",
            stat = {index = 156, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[156: item_pierce]"
        },
        { -- item_reanimate
            codes = "allitems",
            stat = {index = 155, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[155: item_reanimate]"
        },
        { -- item_staminadrainpct
            codes = "allitems",
            stat = {index = 154, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[154: item_staminadrainpct]"
        },
        { -- item_cannotbefrozen
            codes = "allitems",
            stat = {index = 153, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[153: item_cannotbefrozen]"
        },
        { -- item_indesctructible
            codes = "allitems",
            stat = {index = 152, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[152: item_indesctructible]"
        },
        { -- aura_display
            codes = "allitems",
            stat = {index = 151, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[151: aura_display]"
        },
        { -- item_slow
            codes = "allitems",
            stat = {index = 150, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[150: item_slow]"
        },
        { -- item_absorbcold
            codes = "allitems",
            stat = {index = 149, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[149: item_absorbcold]"
        },
        { -- item_absorbcold_percent
            codes = "allitems",
            stat = {index = 148, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[148: item_absorbcold_percent]"
        },
        { -- item_absorbmagic
            codes = "allitems",
            stat = {index = 147, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[147: item_absorbmagic]"
        },
        { -- item_absorbmagic_percent
            codes = "allitems",
            stat = {index = 146, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[146: item_absorbmagic_percent]"
        },
        { -- item_absorblight
            codes = "allitems",
            stat = {index = 145, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[145: item_absorblight]"
        },
        { -- item_absorblight_percent
            codes = "allitems",
            stat = {index = 144, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[144: item_absorblight_percent]"
        },
        { -- item_absorbfire
            codes = "allitems",
            stat = {index = 143, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[143: item_absorbfire]"
        },
        { -- item_absorbfire_percent
            codes = "allitems",
            stat = {index = 142, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[142: item_absorbfire_percent]"
        },
        { -- item_deadlystrike
            codes = "allitems",
            stat = {index = 141, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[141: item_deadlystrike]"
        },
        { -- item_extrablood
            codes = "allitems",
            stat = {index = 140, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[140: item_extrablood]"
        },
        { -- item_healafterdemonkill
            codes = "allitems",
            stat = {index = 139, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[139: item_healafterdemonkill]"
        },
        { -- item_manaafterkill
            codes = "allitems",
            stat = {index = 138, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[138: item_manaafterkill]"
        },
        { -- item_kickdamage
            codes = "allitems",
            stat = {index = 137, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[137: item_kickdamage]"
        },
        { -- item_crushingblow
            codes = "allitems",
            stat = {index = 136, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[136: item_crushingblow]"
        },
        { -- item_openwounds
            codes = "allitems",
            stat = {index = 135, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[135: item_openwounds]"
        },
        { -- item_freeze
            codes = "allitems",
            stat = {index = 134, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[134: item_freeze]"
        },
        { -- bonearmormax
            codes = "allitems",
            stat = {index = 133, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[133: bonearmormax]"
        },
        { -- bonearmor
            codes = "allitems",
            stat = {index = 132, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[132: bonearmor]"
        },
        { -- thorns_percent
            codes = "allitems",
            stat = {index = 131, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[131: thorns_percent]"
        },
        { -- lifetap_level
            codes = "allitems",
            stat = {index = 130, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[130: lifetap_level]"
        },
        { -- ironmaiden_level
            codes = "allitems",
            stat = {index = 129, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[129: ironmaiden_level]"
        },
        { -- item_attackertakeslightdamage
            codes = "allitems",
            stat = {index = 128, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[128: item_attackertakeslightdamage]"
        },
        { -- item_allskills
            codes = "allitems",
            stat = {index = 127, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[127: item_allskills]"
        },
        { -- item_elemskill
            codes = "allitems",
            stat = {index = 126, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[126: item_elemskill]"
        },
        { -- item_throwable
            codes = "allitems",
            stat = {index = 125, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[125: item_throwable]"
        },
        { -- item_undead_tohit
            codes = "allitems",
            stat = {index = 124, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[124: item_undead_tohit]"
        },
        { -- item_demon_tohit
            codes = "allitems",
            stat = {index = 123, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[123: item_demon_tohit]"
        },
        { -- item_undeaddamage_percent
            codes = "allitems",
            stat = {index = 122, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[122: item_undeaddamage_percent]"
        },
        { -- item_demondamage_percent
            codes = "allitems",
            stat = {index = 121, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[121: item_demondamage_percent]"
        },
        { -- item_damagetargetac
            codes = "allitems",
            stat = {index = 120, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[120: item_damagetargetac]"
        },
        { -- item_tohit_percent
            codes = "allitems",
            stat = {index = 119, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[119: item_tohit_percent]"
        },
        { -- item_halffreezeduration
            codes = "allitems",
            stat = {index = 118, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[118: item_halffreezeduration]"
        },
        { -- item_preventheal
            codes = "allitems",
            stat = {index = 117, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[117: item_preventheal]"
        },
        { -- item_fractionaltargetac
            codes = "allitems",
            stat = {index = 116, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[116: item_fractionaltargetac]"
        },
        { -- item_ignoretargetac
            codes = "allitems",
            stat = {index = 115, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[115: item_ignoretargetac]"
        },
        { -- item_damagetomana
            codes = "allitems",
            stat = {index = 114, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[114: item_damagetomana]"
        },
        { -- item_stupidity
            codes = "allitems",
            stat = {index = 113, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[113: item_stupidity]"
        },
        { -- item_howl
            codes = "allitems",
            stat = {index = 112, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[112: item_howl]"
        },
        { -- item_normaldamage
            codes = "allitems",
            stat = {index = 111, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[111: item_normaldamage]"
        },
        { -- item_poisonlengthresist
            codes = "allitems",
            stat = {index = 110, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[110: item_poisonlengthresist]"
        },
        { -- curse_resistance
            codes = "allitems",
            stat = {index = 109, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[109: curse_resistance]"
        },
        { -- item_restinpeace
            codes = "allitems",
            stat = {index = 108, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[108: item_restinpeace]"
        },
        { -- item_singleskill
            codes = "allitems",
            stat = {index = 107, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[107: item_singleskill]"
        },
        { -- skill_bypass_beasts
            codes = "allitems",
            stat = {index = 106, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[106: skill_bypass_beasts]"
        },
        { -- item_fastercastrate
            codes = "allitems",
            stat = {index = 105, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[105: item_fastercastrate]"
        },
        { -- skill_bypass_demons
            codes = "allitems",
            stat = {index = 104, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[104: skill_bypass_demons]"
        },
        { -- skill_bypass_undead
            codes = "allitems",
            stat = {index = 103, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[103: skill_bypass_undead]"
        },
        { -- item_fasterblockrate
            codes = "allitems",
            stat = {index = 102, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[102: item_fasterblockrate]"
        },
        { -- skill_poison_override_length
            codes = "allitems",
            stat = {index = 101, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[101: skill_poison_override_length]"
        },
        { -- monster_playercount
            codes = "allitems",
            stat = {index = 100, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[100: monster_playercount]"
        },
        { -- item_fastergethitrate
            codes = "allitems",
            stat = {index = 99, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[99: item_fastergethitrate]"
        },
        { -- state
            codes = "allitems",
            stat = {index = 98, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[98: state]"
        },
        { -- item_nonclassskill
            codes = "allitems",
            stat = {index = 97, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[97: item_nonclassskill]"
        },
        { -- item_fastermovevelocity
            codes = "allitems",
            stat = {index = 96, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[96: item_fastermovevelocity]"
        },
        { -- lastblockframe
            codes = "allitems",
            stat = {index = 95, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[95: lastblockframe]"
        },
        { -- item_levelreqpct
            codes = "allitems",
            stat = {index = 94, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[94: item_levelreqpct]"
        },
        { -- item_fasterattackrate
            codes = "allitems",
            stat = {index = 93, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[93: item_fasterattackrate]"
        },
        { -- item_levelreq
            codes = "allitems",
            stat = {index = 92, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[92: item_levelreq]"
        },
        { -- item_req_percent
            codes = "allitems",
            stat = {index = 91, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[91: item_req_percent]"
        },
        { -- item_lightcolor
            codes = "allitems",
            stat = {index = 90, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[90: item_lightcolor]"
        },
        { -- item_lightradius
            codes = "allitems",
            stat = {index = 89, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[89: item_lightradius]"
        },
        { -- item_doubleherbduration
            codes = "allitems",
            stat = {index = 88, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[88: item_doubleherbduration]"
        },
        { -- item_reducedprices
            codes = "allitems",
            stat = {index = 87, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[87: item_reducedprices]"
        },
        { -- item_healafterkill
            codes = "allitems",
            stat = {index = 86, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[86: item_healafterkill]"
        },
        { -- item_addexperience
            codes = "allitems",
            stat = {index = 85, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[85: item_addexperience]"
        },
        { -- unsentparam1
            codes = "allitems",
            stat = {index = 84, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[84: unsentparam1]"
        },
        { -- item_addclassskills
            codes = "allitems",
            stat = {index = 83, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[83: item_addclassskills]"
        },
        { -- item_timeduration
            codes = "allitems",
            stat = {index = 82, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[82: item_timeduration]"
        },
        { -- item_knockback
            codes = "allitems",
            stat = {index = 81, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[81: item_knockback]"
        },
        { -- item_magicbonus
            codes = "allitems",
            stat = {index = 80, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[80: item_magicbonus]"
        },
        { -- item_goldbonus
            codes = "allitems",
            stat = {index = 79, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[79: item_goldbonus]"
        },
        { -- item_attackertakesdamage
            codes = "allitems",
            stat = {index = 78, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[78: item_attackertakesdamage]"
        },
        { -- item_maxmana_percent
            codes = "allitems",
            stat = {index = 77, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[77: item_maxmana_percent]"
        },
        { -- item_maxhp_percent
            codes = "allitems",
            stat = {index = 76, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[76: item_maxhp_percent]"
        },
        { -- item_maxdurability_percent
            codes = "allitems",
            stat = {index = 75, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[75: item_maxdurability_percent]"
        },
        { -- hpregen
            codes = "allitems",
            stat = {index = 74, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[74: hpregen]"
        },
        { -- maxdurability
            codes = "allitems",
            stat = {index = 73, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[73: maxdurability]"
        },
        { -- durability
            codes = "allitems",
            stat = {index = 72, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[72: durability]"
        },
        { -- value
            codes = "allitems",
            stat = {index = 71, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[71: value]"
        },
        { -- quantity
            codes = "allitems",
            stat = {index = 70, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[70: quantity]"
        },
        { -- other_animrate
            codes = "allitems",
            stat = {index = 69, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[69: other_animrate]"
        },
        { -- attackrate
            codes = "allitems",
            stat = {index = 68, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[68: attackrate]"
        },
        { -- velocitypercent
            codes = "allitems",
            stat = {index = 67, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[67: velocitypercent]"
        },
        { -- stunlength
            codes = "allitems",
            stat = {index = 66, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[66: stunlength]"
        },
        { -- stamdrainmaxdam
            codes = "allitems",
            stat = {index = 65, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[65: stamdrainmaxdam]"
        },
        { -- stamdrainmindam
            codes = "allitems",
            stat = {index = 64, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[64: stamdrainmindam]"
        },
        { -- manadrainmaxdam
            codes = "allitems",
            stat = {index = 63, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[63: manadrainmaxdam]"
        },
        { -- manadrainmindam
            codes = "allitems",
            stat = {index = 62, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[62: manadrainmindam]"
        },
        { -- lifedrainmaxdam
            codes = "allitems",
            stat = {index = 61, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[61: lifedrainmaxdam]"
        },
        { -- lifedrainmindam
            codes = "allitems",
            stat = {index = 60, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[60: lifedrainmindam]"
        },
        { -- poisonlength
            codes = "allitems",
            stat = {index = 59, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[59: poisonlength]"
        },
        { -- poisonmaxdam
            codes = "allitems",
            stat = {index = 58, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[58: poisonmaxdam]"
        },
        { -- poisonmindam
            codes = "allitems",
            stat = {index = 57, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[57: poisonmindam]"
        },
        { -- coldlength
            codes = "allitems",
            stat = {index = 56, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[56: coldlength]"
        },
        { -- coldmaxdam
            codes = "allitems",
            stat = {index = 55, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[55: coldmaxdam]"
        },
        { -- coldmindam
            codes = "allitems",
            stat = {index = 54, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[54: coldmindam]"
        },
        { -- magicmaxdam
            codes = "allitems",
            stat = {index = 53, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[53: magicmaxdam]"
        },
        { -- magicmindam
            codes = "allitems",
            stat = {index = 52, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[52: magicmindam]"
        },
        { -- lightmaxdam
            codes = "allitems",
            stat = {index = 51, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[51: lightmaxdam]"
        },
        { -- lightmindam
            codes = "allitems",
            stat = {index = 50, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[50: lightmindam]"
        },
        { -- firemaxdam
            codes = "allitems",
            stat = {index = 49, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[49: firemaxdam]"
        },
        { -- firemindam
            codes = "allitems",
            stat = {index = 48, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[48: firemindam]"
        },
        { -- damageaura
            codes = "allitems",
            stat = {index = 47, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[47: damageaura]"
        },
        { -- maxpoisonresist
            codes = "allitems",
            stat = {index = 46, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[46: maxpoisonresist]"
        },
        { -- poisonresist
            codes = "allitems",
            stat = {index = 45, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[45: poisonresist]"
        },
        { -- maxcoldresist
            codes = "allitems",
            stat = {index = 44, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[44: maxcoldresist]"
        },
        { -- coldresist
            codes = "allitems",
            stat = {index = 43, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[43: coldresist]"
        },
        { -- maxlightresist
            codes = "allitems",
            stat = {index = 42, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[42: maxlightresist]"
        },
        { -- lightresist
            codes = "allitems",
            stat = {index = 41, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[41: lightresist]"
        },
        { -- maxfireresist
            codes = "allitems",
            stat = {index = 40, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[40: maxfireresist]"
        },
        { -- fireresist
            codes = "allitems",
            stat = {index = 39, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[39: fireresist]"
        },
        { -- maxmagicresist
            codes = "allitems",
            stat = {index = 38, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[38: maxmagicresist]"
        },
        { -- magicresist
            codes = "allitems",
            stat = {index = 37, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[37: magicresist]"
        },
        { -- damageresist
            codes = "allitems",
            stat = {index = 36, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[36: damageresist]"
        },
        { -- magic_damage_reduction
            codes = "allitems",
            stat = {index = 35, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[35: magic_damage_reduction]"
        },
        { -- normal_damage_reduction
            codes = "allitems",
            stat = {index = 34, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[34: normal_damage_reduction]"
        },
        { -- armorclass_vs_hth
            codes = "allitems",
            stat = {index = 33, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[33: armorclass_vs_hth]"
        },
        { -- armorclass_vs_missile
            codes = "allitems",
            stat = {index = 32, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[32: armorclass_vs_missile]"
        },
        { -- armorclass
            codes = "allitems",
            stat = {index = 31, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[31: armorclass]"
        },
        { -- nextexp
            codes = "allitems",
            stat = {index = 30, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[30: nextexp]"
        },
        { -- lastexp
            codes = "allitems",
            stat = {index = 29, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[29: lastexp]"
        },
        { -- staminarecoverybonus
            codes = "allitems",
            stat = {index = 28, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[28: staminarecoverybonus]"
        },
        { -- manarecoverybonus
            codes = "allitems",
            stat = {index = 27, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[27: manarecoverybonus]"
        },
        { -- manarecovery
            codes = "allitems",
            stat = {index = 26, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[26: manarecovery]"
        },
        { -- damagepercent
            codes = "allitems",
            stat = {index = 25, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[25: damagepercent]"
        },
        { -- secondary_maxdamage
            codes = "allitems",
            stat = {index = 24, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[24: secondary_maxdamage]"
        },
        { -- secondary_mindamage
            codes = "allitems",
            stat = {index = 23, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[23: secondary_mindamage]"
        },
        { -- maxdamage
            codes = "allitems",
            stat = {index = 22, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[22: maxdamage]"
        },
        { -- mindamage
            codes = "allitems",
            stat = {index = 21, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[21: mindamage]"
        },
        { -- toblock
            codes = "allitems",
            stat = {index = 20, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[20: toblock]"
        },
        { -- tohit
            codes = "allitems",
            stat = {index = 19, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[19: tohit]"
        },
        { -- item_mindamage_percent
            codes = "allitems",
            stat = {index = 18, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[18: item_mindamage_percent]"
        },
        { -- item_maxdamage_percent
            codes = "allitems",
            stat = {index = 17, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[17: item_maxdamage_percent]"
        },
        { -- item_armor_percent
            codes = "allitems",
            stat = {index = 16, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[16: item_armor_percent]"
        },
        { -- goldbank
            codes = "allitems",
            stat = {index = 15, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[15: goldbank]"
        },
        { -- gold
            codes = "allitems",
            stat = {index = 14, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[14: gold]"
        },
        { -- experience
            codes = "allitems",
            stat = {index = 13, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[13: experience]"
        },
        { -- level
            codes = "allitems",
            stat = {index = 12, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[12: level]"
        },
        { -- maxstamina
            codes = "allitems",
            stat = {index = 11, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[11: maxstamina]"
        },
        { -- stamina
            codes = "allitems",
            stat = {index = 10, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[10: stamina]"
        },
        { -- maxmana
            codes = "allitems",
            stat = {index = 9, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[9: maxmana]"
        },
        { -- mana
            codes = "allitems",
            stat = {index = 8, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[8: mana]"
        },
        { -- maxhp
            codes = "allitems",
            stat = {index = 7, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[7: maxhp]"
        },
        { -- hitpoints
            codes = "allitems",
            stat = {index = 6, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[6: hitpoints]"
        },
        { -- newskills
            codes = "allitems",
            stat = {index = 5, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[5: newskills]"
        },
        { -- statpts
            codes = "allitems",
            stat = {index = 4, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[4: statpts]"
        },
        { -- vitality
            codes = "allitems",
            stat = {index = 3, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[3: vitality]"
        },
        { -- dexterity
            codes = "allitems",
            stat = {index = 2, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[2: dexterity]"
        },
        { -- energy
            codes = "allitems",
            stat = {index = 1, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[1: energy]"
        },
        { -- strength
            codes = "allitems",
            stat = {index = 0, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[0: strength]"
        },
        {
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}------- STAT ID -------{white}"
        }
    }
}
