--- Filter Title: ReMoDDeD Default
--- Filter Type: (Basic)
--- Filter Description: This is a barebones filter that adds only the frequently requested modifications; such as item levels, socket counts, etc.
return {
    reload = "{turquoise}RMD Barebones Filter {gray}(v1.0) {green}Reloaded",
    language = "enUS",
    allowOverrides = true,
    rules = {
        { --Display item levels for weapons, armors, charms, jewels, rings and amulets in white, to the right of item name, (x)
            codes = "allitems",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            suffix = " {white}({ilvl})",
        },
        { --Display socket count in gray to the right of item name, [x]
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
    }
}
