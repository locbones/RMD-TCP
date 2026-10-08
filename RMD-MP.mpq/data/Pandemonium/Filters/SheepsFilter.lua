--- Filter Title: Sheep's Filter v1.05
--- Filter Type: (General Filter)
--- Filter Description: \nRule 0: Runewords beg you to keep them. \nRule 0b: Shows number of sockets. \nRule 0c: Hides scrolls on the ground. \nRule 0d: Hides scrolls on the ground. \nRule 0e: Hides all non-rare or lower arrows above level 60. \nRule 0f: Hides all white arrows. \nRule 1: Hides all 1-socket superior or lower items (these items are pretty useless). \nRule 2: Good bases — shows 3-skill scepters in red. \nRule 3: Adds border and notifies when uniques drop. \nRule 4: Adds border and notifies when sets drop. \nRule 5: Rune notification with special border and colors. \nRule 6: Unique Archons (color swap). \nRule 7: Potential high-quality uniques (e.g., Hydra Master) (color swap). \nRule 8: Unique charms (color swap). \nRule 9: Facet charms (color swap). \nRule 10: Treasure chests/gem veins. \nRule 11: Valuable uniques. \nRule 12: Hides zero-skill Paladin weapons. \nRule 13: Hides non-superior/non-class items by level (still shows 3-socket ones). \nRule 14: Hides non-class base magic items by level. \nRule 15: Hides low gold piles by level. \nRule 16: Codex tome. \nRule 17: Quest item notification. \nRule e1: Sorting of weapon bases by socket amount (hides 2 sockets or fewer on bases that cap at 3 sockets at level 80). \nRule e2: Added symbol for new bases.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/SheepsFilter.lua
return {
    reload = "{pink}Sheep's Base Filter v1.05 {grey} updated 9/16/25 {Green}Reloaded",
    allowOverrides = true,
    rules = {
        ---Rule 0a: ilvl on all items that matter
        {
			codes = {"aqv","rin", "amu", "cm2", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18", "jew", "m32", "m33", "m34", "m35", "cm1", "cm2", "cm3"},
			location = {"onground", "onplayer", "atvendor", "equipped"},
			suffix = " ({ilvl})"
		},
        ---Rule 0b elite base icon
        { 
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ⅲ "
        },
        {
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            notify = "{turquoise}Breaking The Limits: {white}{name}",
            quality = "3-"
        },
        ---Rule 0c: Runewords beg you to keep them.
        { 
             codes = "allitems",
             runeword = true,
             suffix = "{red}Don't leave me!!!"
        },
    
        ---Rule Bonesy: please stop breaking things I mean...shows number of sockets 
        { 
            codes = "allitems",
            sockets = "1+",
            suffix = "{turquoise}({sockets})"
        },
         --- Rule 0d: Hides scrolls on ground 
        {
            codes = { "tsc", "isc"},
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 0e: Hides scrolls on ground 
        {
            codes = { "hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5" },
            pstat = { index = 12, op = ">=", value = 25 }, -- Char Level is >= 25
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 0f: hide all non rare or greater arrows over 60 
        {
            code = "aqv",
            quality = "4-",
            hide = true, 
            pstat = { index = 12, op = ">=", value = 60 }, -- Char Level is >= 60
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 0g: hide all white arrows 
        {
            code = "aqv",
            quality = "3-",
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        --rule 0h Display RMD "Limit Broken Bases" with a special LB icon in RMD Red, to the right of item name
        { 
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅳ "
        },
         -- Rule 1 : Hides all 1 socket superior or lower items.(these items are pretty useless) 
        {
            codes = "allitems",
            sockets = "1",
            quality = "3-",
            hide = true,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        --- Rule 2: Good Bases Shows 3 skill scepters in red  
        {
            codes = { "scp", "wsp", "gsc", "7sc", "7ws", "7qs", "9sc", "9ws", "9qs" },
            quality = "3-",
            suffix = "ÿcE[3 Skill]",
            stat = { index = 83, op = "==", value = 3, param = 3 }, -- Value = How many +skills, Param = 3 for Paladin
            border = { 255, 255, 255, 230, 2 }
        },
        --- Rule 2b:Good Bases (paladin shieldsthanks cogy) 
        {
            codes = { "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf" },
            quality = "3-",
            stat = { index = 39, op = ">=", value = 40 }, -- This is the Res Check, change the Value to change the minimum amount of Res
            stat = { index = 41, op = ">=", value = 40 },
            stat = { index = 43, op = ">=", value = 40 },
            stat = { index = 45, op = ">=", value = 40 },
            suffix = "ÿcE[High Resist]",
            border = { 255, 255, 255, 230, 2 } 
            --sockets = "0,4", -- add if you want socket sorting
        },
        --- Rule 2c: Shows Necro Shield bases with 3 summon skills  
        {
            codes = { "ne6", "ne7", "ne8", "ne9", "nea", "neg", "ned", "nee", "nef", "neb", "ne1", "ne2", "ne3", "ne4", "ne5" },
            quality = "3-",
            --sockets = "0,4", -- add if you want socket sorting
            stat = { index = 188, op = "==", value = 3, param = 18 },
            suffix = " {red}[3 to Summoning]",
            border = { 255, 255, 255, 230, 2 } 
        },
        ---Rule 2d:Shows 2 bow skills Grand Matron/matriarchal Bow bases 
        {
            codes = { "amc", "amb" },
            quality = "3-",
            --sockets = "0,6", -- add if you want socket sorting
            stat = { index = 188, op = ">=", value = 2, param = 0 },
            suffix = " {red}[2 Bow skills]",
            border = { 255, 255, 255, 230, 2 } 
        },
        ---Rule 2e:Shows +3 LF Amazon Javs bases  
        {
            codes = { "amf", "ama", "am5" },
            quality = "3-",
            --sockets = "0,3", -- add if you want socket sorting
            stat = { index = 107, op = "==", value = 3, param = 35 },
            suffix = " {red}[3 LF]",
            border = { 255, 255, 255, 230, 2 } 
        },
        ---Rule 2f: Shows Raven Damage Druid Helmet bases 
        {
            codes = { "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf" },
            quality = "3-",
            -- sockets = "0,3", -- add if you want socket sorting
            stat = { index = 403, op = ">=", value = 150 },
            suffix = "{red}[High Raven Damage]",
            border = { 255, 255, 255, 230, 2 }
        },
        ---Rule 2g: good superior bases continued  
        {
            codes = { "7wa", "7cr", "ci0", "ci1", "ci2", "ci3", "utp", "7b8", "amc" },
            quality = "3",
            prefix = "{Red}|GB|{white}",
            border = { 255, 255, 255, 230, 2 } 
        },
        ---Rule 3: Border and notifies when uniques drop (typed out cause it hits quest items zzz)
        {
            codes = NOT { "BoH","l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17","bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2","utp","6ls", "ci1", "xld", "uhn", "aqv","cm1", "cm2", "cm3", "m32", "m33", "m34", "m35","m36","j00", "jew","amb", "8hx", "6cb", "6lw", "7ja", "7kr", "7bw", "7yw", "7gw", "obf", "oba", "ob7", "7gd", "upl", "ult", "uar", "uth", "ula", "ulc", "uhc", "utb", "xtb", "ci3", "umg", "nef", "pab", "pa9", "paa", "uit", "urg", "uuc", "vg3" },
            quality = "7",
            notify = "A Legend Appears: {name}",
            border = { 255, 128, 0, 230, 2 } 
        },
        ---Rule 4: Border and notify sets  
        {
            codes = "allitems",
            quality = "5",
            notify = "ÿc2Piece of a Legacy: {name}",
            border = { 27, 209, 3, 230, 2 } 
        },
       ---Rule 5: High Runes notification and ultra rune border and colors  
        {
            codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "ÿc@High Rune Nearby: {name}"
        },
        ---Rule 5b: Ultra Runes   
        {
            codes = {"r34","r35"},
            background = { 255, 255, 255, 255 },
            prefix = "ÿcS|X|",
            suffix = "ÿcS|X|",
            notify = "ÿc@Ultra Rune Nearby: {name}",
            border = { 240, 0, 0, 230, 2 } 
        },
        ---Rule 5c: Ultra Runes Er 
        {
            code = "r36",
            background = { 255, 255, 255, 255 },
            prefix = "ÿcS|X|",
            suffix = "ÿcS|X|",
            notify = "ÿc@You Won The Lottery!!!ÿcS: {name}",
            border = { 240, 0, 0, 230, 2 } 
        },
        ---Rule 6: Unique Archons (Color swap?)  
        {
            code = "utp",
            quality = 7,
            background = { 255, 255, 255, 255 },
            prefix = "ÿcE",
            notify = "ÿcEA Spiritual Archon: {name}",
            border = { 240, 0, 0, 230, 2 } 
        }, 
        ---Rule 7: Potential high quality uniques (ie hydra master)(color swap?) 
        {
            codes = { "6ls", "ci1", "xld","aqv","6sw" },
            quality = 7,
            --name_style = "Open Flames", -- will be reenabled with EB symbol fix
            notify = "ÿcOSome Legends Vary: {name}",
            border = { 230, 30, 200, 230, 2 },
            
        },
        ---Rule 8: Unique Charms (Color swap?) 
        {
            codes = { "cm1", "cm2", "cm3", "m32", "m33", "m34", "m35","m36" },
            quality = 7,
            notify = "ÿc;A Legend Appears: {name}",
            name_style = "Open Flames",
            border = { 255, 128, 0, 230, 2 } 
        },
        ---Rule 9: Facet Charms (Color swap?)  
        {
            codes = { "j00", "jew" },
            quality = 7,
            name_override = "Rainbow Facet!!!",
            notify = "ÿcEA Fragment of the Rainbow!",
            name_style = "Rainbow",
            border = { 255, 0, 0, 230, 2 } 
        },
        ---Rule 10: Treasure Chest/gem vein  
        {
            codes = { "S01","b64","b65","Rgx","Ev0", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "y33" },
            notify = "ÿc;An Extraordinary Find: {name}",
            name_style = "Cotton Candy",
            border = { 220, 120, 255, 230, 2 }
        },
        ---Rule 11: Valuable Uniques (would be better to use unique indexing but lazy) 
        {
            codes = { "amb", "8hx", "6cb", "6lw", "7ja", "7kr", "7bw", "7yw", "7gw", "obf", "oba", "ob7", "7gd", "upl", "ult", "uar", "uth", "ula", "ulc", "uhc", "utb", "xtb", "ci3", "umg", "nef", "pab", "pa9", "paa", "uit", "urg", "uuc", "vg3" },
            quality = 7,
            notify = "ÿcSA True Legend Appears: {name}",
            border = { 255, 128, 0, 230, 2 } 
        },
        --- Rule 12: Hides zero skill paladin weapons.  
        {
            codes = { "scp", "wsp", "gsc", "7sc", "7ws", "7qs", "9sc", "9ws", "9qs" },
            quality = "4-",
            stat = { index = 83, op = "<=", value = 0, param = 3 }, -- Value = How many +skills, Param = 3 for Paladin
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 13: hiding non-superior/non-class bases by level (helms) still shows 3 socket ones 
        {
            codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 13b: hiding non-superior/non-class bases by level (Body Armors) still shows 3 socket ones 
        {
            codes = { "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        ---Rule 13c: hiding non-superior/non-class bases by level (Shields) still shows 3 socket ones (higher level will force 4os)  
        {
            codes = { "buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         ---Rule 13d: hiding non-superior/non-class bases by level (gloves) still shows 3 socket ones 
        {
            codes = { "lgl", "vgl", "hgl", "mgl", "tgl" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
         ---Rule 13e: hiding non-superior/non-class bases by level (boots) still shows 3 socket ones  
        {
            codes = { "lbt", "vbt", "mbt", "tbt", "hbt" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
         ---Rule 13f: hiding non-superior/non-class bases by level (belts) still shows 2 socket ones 
        {
            codes = { "lbl", "vbl", "mbl", "tbl", "hbl" },
            sockets = "1-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        ---Rule 13g: hiding non-superior/non-class bases by level (helms) still shows 3 socket ones  
        {
            codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xsh", "xpk" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
         ---Rule 13h: hiding non-superior/non-class bases by level (Body Armors) still shows 4 socket ones 
        {
            codes = { "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp" },
            sockets = "3-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        ---Rule 13i: hiding non-superior/non-class bases by level (Shields) still shows 4 socket ones  
        {
            codes = { "buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk" },
            sockets = "3-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
          ---Rule 13j: hiding non-superior/non-class bases by level (gloves) still shows 3 socket ones  
        {
            codes = { "lgl", "vgl", "hgl", "mgl", "tgl", "xlg", "xvg", "xhg", "xmg", "xtg" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        ---Rule 13k: hiding non-superior/non-class bases by level (boots) still shows 3 socket ones 
        {
            codes = { "lbt", "vbt", "mbt", "tbt", "hbt", "xlb", "xvb", "xmb", "xtb", "xhb" },
            sockets = "2-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        ---Rule 13l: hiding non-superior/non-class bases by level (belts) still shows 2 socket ones  
        {
            codes = { "lbl", "vbl", "mbl", "tbl", "hbl", "zlb", "zvb", "zmb", "ztb", "zhb" },
            sockets = "1-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
         ---Rule 13m: hiding non-superior/non-class bases by level (weapons leaving runeword bases ie flails,crystal swords/ also skips bases that can roll skills)  
        {
            codes = { "hax", "axe", "2ax", "wax", "lax", "bax", "btx", "gax", "gix", "mac", "mst", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "bsd", "lsd", "wsd", "clm", "gis", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb" },
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            --prefix = "[hidden]", -testing purposes
        },
         ---Rule 13n: hiding non-superior/non-class runeword bases lacking sockets (ie flails,crystal swords)  
        {
            codes = { "fla", "crs", "9fl", "7fl", "7cr", "9cr" },
            sockets = "3-",
            quality = "2-",
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 13o: hiding non-class bases by level (weapons leaving runeword bases ie flails,crystal swords/ also skips bases that can roll skills) 
        {
            codes = { "hax", "axe", "2ax", "wax", "lax", "bax", "btx", "gax", "gix", "mac", "mst", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "bsd", "lsd", "wsd", "clm", "gis", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "9ha", "9ax", "92a", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9ma", "9mt", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9bs", "9ls", "9wd", "9cm", "9gs", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx" },
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        --Rule 13p: Hides non superior items with less than 2 Sockets if the player is above 80 does not include staff mod items  
        {
            codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "mac", "mst", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "bsd", "lsd", "wsd", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9ma", "9mt", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "7ha", "7ax", "72a", "7mp", "7la", "7ba", "7bt", "7ga", "7gi", "7ma", "7mt", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7bs", "7ls", "7wd", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "am1", "am2", "am3", "am4", "am6", "am7", "am8", "am9", "amd", "ame", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2" },
            quality = "2-",
            sockets = "1-",
            pstat = { index = 12, op = ">=", value = 80 }, -- value is character level
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14:  hiding non-class base magic items by level (Body Armors) 
        {
            codes = { "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         ---Rule 14b:  hiding non-class base magic items by level (Shields)  
        {
            codes = { "buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         ---Rule 14c:  hiding non-class base magic items by level(gloves) 
        {
            codes = { "lgl", "vgl", "hgl", "mgl", "tgl" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         ---Rule 14d:  hiding non-class base magic items by level(boots)  
        {
            codes = { "lbt", "vbt", "mbt", "tbt", "hbt" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         ---Rule 14e:  hiding non-class base magic items by level (belts)  
        {
            codes = { "lbl", "vbl", "mbl", "tbl", "hbl", "Bb1", "Bb4" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14f: hiding non-class base magic items by level (helms)  
        {
            codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "bhm", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xsh", "xpk" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },

        ---Rule 14g:  hiding non-class base magic items by level (Body Armors) 
        {
            codes = { "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14h: hiding non-class base magic items by level (Shields) 
        {
            codes = { "buc", "sml", "lrg", "kit", "tow", "gts", "bsh", "spk", "xuc", "xml", "xrg", "xit", "xow", "xts", "xsh", "xpk" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14i:  hiding non-class base magic items by level (gloves) 
        {

            codes = { "lgl", "vgl", "hgl", "mgl", "tgl", "xlg", "xvg", "xhg", "xmg", "xtg" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14j: hiding non-class base magic items by level(boots)  
        {
            codes = { "lbt", "vbt", "mbt", "tbt", "hbt", "xlb", "xvb", "xmb", "xtb", "xhb" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14k:  hiding non-class base magic items by level (belts)  
        {
            codes = { "lbl", "vbl", "mbl", "tbl", "hbl", "zlb", "zvb", "zmb", "ztb", "zhb", "Bb1", "Bb2", "Bb4", "Bb5" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14l:  hiding non-class base magic items by level (weapons leaving runeword bases ie flails,crystal swords/ also skips bases that can roll skills)
        {
            codes = { "hax", "axe", "2ax", "wax", "lax", "bax", "btx", "gax", "gix", "mac", "mst", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "bsd", "lsd", "wsd", "clm", "gis", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14m:  hiding non-class base magic items by level (ie flails,crystal swords) 
        {
            codes = { "fla", "crs", "9fl" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 40 }, -- Char Level is >= 40
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 14n:  hiding non-class base magic items by level (weapons leaving runeword bases ie flails,crystal swords) 
        {
            codes = { "7ha", "9ha", "9ax", "92a", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9ma", "9mt", "9wh", "9m9",
                "9gm", "9ss", "9sm", "9sb", "9fc", "9bs", "7tr", "9ls", "9wd", "9cm", "9gs", "9fb", "9gd", "9dg", "9di",
                "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st",
                "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw",
                "8lx", "8mx", "8hx", "8rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6",
                "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb",
                "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2",
                "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5",
                "Bf6" },
            quality = 4,
            pstat = { index = 12, op = ">=", value = 60 }, -- Char Level is >= 60
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        --Rule 14o :Hides almost all magic items when clvl is 80 or above
        {
            codes = {"Ss2","7fb", "7s8", "Ab4", "Ab5", "Ab6", "Bp5", "Bp6", "Ca1", "Ca2", "Ca3", "Ss1", "Ss3", "Ss4", "dr1", "dr9","amu","Bp2", "rin", "Gg1", "Gg2", "hla", "lea", "qui", "stu", "Wp1", "Wp2", "brs", "chn", "ltp", "rng", "scl", "xea", "xla", "xui", "Ca4", "Ca5", "Ca6", "aar", "Bp1", "Bp2", "Bp3", "Bp4", "fld", "ful", "gth", "Gg3", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Oa1", "Oa2", "Oa3", "plt", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "spl", "ult", "uld", "uar", "ucl", "uea", "uhn", "ula", "ulg", "ung", "uui", "urs", "utp", "uth", "utu", "upl", "uul", "Wp3", "xar", "xcl", "xhn", "xld", "xlt", "xng", "xpl", "xrs", "xth", "xtp", "xtu", "xul", "7bk", "7bw", "7dg", "7di", "7gw", "7ta", "7tk", "7wn", "7yw", "9bk", "9bw", "9dg", "9di", "9gw", "9ta", "9tk", "9wn", "9yw", "bkf", "bwn", "ces", "dir", "dgr", "gwn", "jav", "ktr", "ob1", "ob2", "ob3", "ob4", "ob6", "ob7", "ob8", "ob9", "obc", "obd", "obe", "obb", "pil", "tkf", "tax", "wnd", "ywn", "9cl", "7cl", "clb", "7ha", "9ha", "hax", "sbw", "7sp", "9sp", "spc", "7cs", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "amf", "ama", "am5", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "6ss", "8ss", "sst", "k01", "k02", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9ss", "9sm", "9sb", "9fc", "flc", "sbr", "ssd", "scm", "wsd", "Bf4", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8cs", "8bs", "8ls", "bst", "cst", "lst", "bsw", "k03", "72h", "92h", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp", "axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "6lx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8", "9mp", "7mp", "mpi", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf5", "Bf6", "7wa", "7ga", "7bt", "72a", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amc", "amb", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "6hx", "8hx", "hxb", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "9fl", "7vo", "7pa", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "7p7", "9h9", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "7ws", "9ws", "7mp", "7wc", "9wc", "9s8", "mpi", "wsc", "amd", "ame", "am8", "am9", "am3", "am4", "Ds4", "Ds5", "Ds6", "6ws", "8ws", "wst", "7gd", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "7cr", "9cr", "crs", "7b8", "xuc", "xml", "buc", "sml", "ne6", "ne7", "ne1", "ne2", "uuc", "xsh", "bsh", "lrg", "spk", "nef", "neg", "neb", "ned", "nee", "ne9", "nea", "ne8", "ne5", "ne4", "ne3", "pad", "pac", "pab", "paf", "pae", "pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "urg", "uml", "uit", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "kit", "tow", "xap", "cap", "hlm", "skp", "bab", "bae", "bad", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba1", "ba2", "ba3", "drb", "drf", "drd", "dre", "drc", "dr6", "dr7", "dr8", "dra", "dr3", "dr4", "dr2", "dr5", "ulm", "uh9", "urn", "usk", "uhl", "ukp", "uap", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "ci0", "ci1", "ci2", "ci3", "xlb", "lbt", "vbt", "mbt", "ulb", "uvb", "umb", "utb", "uhb", "xvb", "xmb", "xtb", "xhb", "hbt", "tbt", "Ab1", "Ab2", "Ab3", "Ag3", "Ag1", "xlg", "lgl", "vgl", "mgl", "Ag2", "Ag4", "Ag5", "Ag6", "uvg", "xvg", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "ulg", "utg", "uhg", "umg", "xmg", "xtg", "xhg", "tgl", "hgl", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "uhc", "umc", "ulc", "utc", "uvc", "ztb", "zlb", "zmb", "zvb", "zhb", "lbl", "vbl", "mbl", "tbl", "hbl"},
            quality = "4",
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        ---Rule 15: hide low gold piles by level 
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 749 }, --hides gold under 1k
            pstat = { index = 12, op = ">=", value = 80 }, -- Char Level is >= 80
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 15b: hide low gold piles by level 
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 99 },  --hides gold under 100
            pstat = { index = 12, op = ">=", value = 20 }, -- Char Level is >= 20
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 15c: hide low gold piles by level 
        {
            code = "gld",
            stat = { index = 14, op = "<=", value = 499 }, --hides gold under 500
            pstat = { index = 12, op = ">=", value = 60 }, -- Char Level is >= 60
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        ---Rule 16: Codex Tome 
        {
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58" },
            notify = "{orange}The Seven Sins: {name}",
            name_style = "Frost Wave",
            border = { 100, 180, 255, 230, 2 }
        },
        --- Rule 17: Quest item notify 
        {
           codes = { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
           notify = "{red}Quest Item: {name}",
           border = { 240, 0, 0, 230, 2 } 
        },
        --- Editable Rules: These rule can be edited for your own use easily
             --- Rule e1:(Edit socket count)
             ---Rule e2:Adds symbol for new Bases
          -- Rule e1: Sorting of weapon bases by socket amount (hides 2 sockets or less on bases that cap at 3 socket at level 80) 
        {
            codes = { "7ha", "9ha", "hax", "sbw", "7sp", "9sp", "spc", "7cs", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "amf", "ama", "am5", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "6ss", "8ss", "sst", "k01", "k02", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9ss", "9sm", "9sb", "9fc", "flc", "sbr", "ssd", "scm", "wsd" },
            quality = "3-",
            sockets = "1,2",
            pstat = { index = 12, op = ">=", value = 80 }, -- value is character level
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }

        },
        -- Rule e1b: Sorting of weapon bases by socket amount (hides 2 sockets or less on bases that cap at 4 socket at level 80) 
        {
             codes = { "Bf4", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8cs", "8bs", "8ls", "bst", "cst", "lst", "bsw", "k03", "72h", "92h", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp" },
            quality = "3-",
            sockets = "1,2",
            pstat = { index = 12, op = ">=", value = 80 }, -- value is character level
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Rule e1c: Sorting of weapon bases by socket amount (hides 2 sockets or less on bases that cap at 5 socket at level 80) 
        {
            codes = { "axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "6lx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8" },
            quality = "3-",
            sockets = "1,2",
            pstat = { index = 12, op = ">=", value = 80 }, -- value is character level
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
        -- Rule e1d: Sorting of weapon bases by socket amount (hides 2 sockets or less on bases that cap at 6 socket at level 80) 
        {
            codes = { "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf5", "Bf6", "7wa", "7ga", "7bt", "72a", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amc", "amb", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "6hx", "8hx", "hxb", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "9fl", "7vo", "7pa", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "7p7", "9h9", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "7ws", "9ws", "7mp", "7wc", "9wc", "9s8", "mpi", "wsc", "amd", "ame", "am8", "am9", "am3", "am4", "Ds4", "Ds5", "Ds6", "6ws", "8ws", "wst", "7gd", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "7cr", "9cr", "crs", "7b8" },
            quality = "3-",
            sockets = "1,2",
            pstat = { index = 12, op = ">=", value = 80 }, -- value is character level
            hide = true, 
            runeword = false,
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
        },
         --Things added post 1.0 release (will be sorted out later sorry)
        ---Rule 18 gold style (thanks vivasen)
        {
            code = "gld",
            background = {180, 199, 0, 110},
            name_override = "{name} G"
        },
        ---Rule 19 rare jewel borders
        {
            code = "jew",
            quality = "6",
            border = { 255, 255, 100, 230, 2 }
        },
        ---rule 20? added notify for unique limit break bases (notify subject to change)
        { 
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17"},
            quality = "7",
            notify = "A Legend Beyond Limits: {name}",
            border = { 255, 128, 0, 230, 2 } ,
        },
        ---rule 21: added notify and colors for demon temper items
        {
            codes = {"C00","C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14","C15","C16","C17","C18","C19","C20","C21","C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33","C34","C35","C36","C37"},
            name_style = "Toxic Fog",
            notify = "ÿcADemonic Body Part: {name}",
            border = { 30, 100, 30, 230, 2 }

        },
        ---Rule 22: Beacon of hopes
        {
            code = "BoH",
            quality = 7,
            background = { 255, 255, 255, 255 },
            prefix = "ÿcE",
            notify = "ÿcEA Beacon of Hope has appeared!",
            border = { 240, 0, 0, 230, 2 } 
        }, 
        { 
            codes = "allitems",
            itype = 115,
            notify = "ÿcTA Path Forward: {name}"
        },  
        --- Quest Item "Tutorial" Rules (wip)
            ---Rule Q1:Scroll of Inifus normal
        {
            code ="bks",
            --notify = "{orange}Gameplay Tip:{white} Some unique monsters have special item drops called flavor drops",
            --difficulty = "normal",   
        },
    
             -- Simple DebugRule1: For testing, adds item code to item name
    
            {
                codes = "allitems",
            --location = { "onplayer", "equipped", "onground", "dropping" },
            --suffix = " \n{gray}[Code: {orange}{code}{gray}]\n[Quality: {orange}{quality}{gray}]\n[Rarity: {orange}{rarity}{gray}]"
            }


    }
}

