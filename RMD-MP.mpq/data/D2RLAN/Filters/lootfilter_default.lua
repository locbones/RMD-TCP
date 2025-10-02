--- Filter Title: ReMoDDeD Default
--- Filter Type: (Basic)
--- Filter Description: This is a barebones filter that adds only the frequently requested modifications; such as item levels, socket counts, etc.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/lootfilter_default.lua
return {
    reload = "{turquoise}RMD Barebones Filter {gray}(v1.0) {green}Reloaded",
    language = "enUS",
    allowOverrides = true,
    filter_level = 2,
    filter_titles = { "1", "2" },
    rules = {
        { --Display item levels for weapons, armors, charms, jewels, rings, amulets and arrows, in white, to the right of item name, (x)
            codes = "allitems",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 5, 10, 12, 45, 50, 58, 82, 83, 84 },
            suffix = " {white}({ilvl})",
        },
        { --Display socket count in gray, to the right of item name, [x]
            codes = "allitems",
            sockets = "1+",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            suffix = " {gray}[{sockets}]"
        },
        { --Display RMD "Elite Bases" with a special EB icon in RMD Red, to the right of item name
            codes = "allitems",
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            ilvl = "102-",
            itype = { 45, 50 },
            suffix = " {tan}ⅲ"
        },
        { --Display RMD "Limit Broken Bases" with a special LB icon in RMD Red, to the right of item name
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            ilvl = "103+",
            itype = { 45, 50 },
            suffix = " {tan}ⅳ"
        },
        { --Quality of Life Bag Description
            code = "Z01",
            location = "onplayer",
            prefix = "\n{gray}(Cube Recipes > Quality of Life Bag)\n{white} -More info can be found on our {turquoise}Wiki\n{white}-You can find item {turquoise}removers {white}from {turquoise}Edyrem {white}in each town\n{gray}(Gems, Runes, Keys, Organs, Rare Jewels, Full Rejuvs and Set/Unique items)\n {white}-Many items can be deposited into this bag for various purposes\n{turquoise}Mod Tips:\n\n"
        },
        { --Color Dyed: Bright White
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 22 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {white}Bright White\n"
        },
        { --Color Dyed: Black
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 4 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {grey}Black\n"
        },
        { --Color Dyed: Crystal Blue
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 7 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {blue}Crystal Blue\n"
        },
        { --Color Dyed: Crystal Red
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 10 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {red}Crystal Red\n"
        },
        { --Color Dyed: Crystal Green
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 13 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {green}Crystal Green\n"
        },
        { --Color Dyed: Light Yellow
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 14 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {yellow}Light Yellow\n"
        },
        { --Color Dyed: Light Purple
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 18 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {purple}Light Purple\n"
        },
        { --Color Dyed: White
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 1 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {white}White\n"
        },
        { --Color Dyed: Light Grey
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 2 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {grey}Light Grey\n"
        },
        { --Color Dyed: Dark Grey
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 3 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {grey}Dark Grey\n"
        },
        { --Color Dyed: Light Blue
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 5 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {blue}Bright White\n"
        },
        { --Color Dyed: Dark Blue
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 6 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {blue}Dark Blue\n"
        },
        { --Color Dyed: Light Red
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 8 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {red}Light Red\n"
        },
        { --Color Dyed: Dark Red
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 9 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {red}Dark Red\n"
        },
        { --Color Dyed: Light Green
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 11 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {green}Light Green\n"
        },
        { --Color Dyed: Dark Green
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 12 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {green}Dark Green\n"
        },
        { --Color Dyed: Dark Yellow
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 15 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {yellow}Dark Yellow\n"
        },
        { --Color Dyed: Dark Purple
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 19 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {purple}Dark Purple\n"
        },
        { --Color Dyed: Orange
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 20 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {orange}Orange\n"
        },
        { --Color Dyed: Light Gold
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 16 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {gold}Light Gold\n"
        },
        { --Color Dyed: Dark Gold
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            stat = { index = 433, op = "==", value = 17 },
            filter_levels = 1,
            prefix_desc = "{lilac}Color Dyed: {gold}Dark Gold\n"
        },
        
    }
}
