--- Filter Title:Charsi's Special
--- Filter Type: 4 levels, cosmetic styles for loot, tips on various items
--- Filter Description:To cycle through levels, setup a hotkey in 'Hotkeys' inside your launcher!\nLevel 1: Basic -- Level 2: Basic + Hunter -- Level 3: Aggressive -- Level 4: Aggressive + Hunter\n2 LEVELS (2 and 4) CONTAIN SET HUNTER: Tells you which set item is from what set, while on ground and not identified yet (read reload message while cycling through fiter levels).\n+ UNIQUE HUNTER for jewelry only(!) of my own choosing, only those rarer ones. Tells you some jewelry names while on ground and not identified yet\nThis filter is light on bases at level 'Lite' and aggressive for bases at level 'Aggressive' (Hell + clvl(80+) only).\nNot a single Unique/Set item is hidden!\nNOT A SINGLE HIDE WORKS INSIDE ANY TOWN!\nAt level 'Aggressive', leaves good and up bases only (of my personal choosing so you might not agree on some, but just in case I left at least 1 base of each item slot to be able to drop).\nAt level 'Aggressive', hides any non-superior bases.\nZero or max open socket bases only, anything in between is hidden.\nDoes not hide any Runewords\nQoL options like styles for loot, general tips on some items.\nIndication on items able to be Demon Tempered.\nHides ALL magic items (besides Small/Grand Charms and Jewels ofc) BUT ONLY on character lvl above 30 and in NM or Hell.\nAt level 'Aggressive', hides ALL rare items (besides jewels ofc) BUT ONLY on character lvl above 80 and in Hell.\nDisplays very good Superior rolls as suffix.\nDisplays very good staff-mods on items as suffix.\nStyle for Gold on ground and hides all gold under 500 (Lite) and 800 (Aggressive) in Hell and clvl 80+.\nTP/ID scrolls hidden in Hell on clvl 80+.\nNotification for High and Ultra Runes, Unique Charms, Codex and Event Boxes.\nWarning before throwing out important misc items (like Cube).\nHides all Low Runes in Hell and clvl 80+.\nDisplays socket count for all items in turquoise.\nDisplays ilvl of all items as suffix.\nDisplays some tutorial info on various items that I felt was missing from those.\nHides all potion drops besides Full Rejuvs in Hell and clvl 80+\nQuest item notifies (some cringey comments to confuse players a bit lol)\nDon't use with ilvl display from qol settings in Launcher\nIf you have any suggestions, or found a bug, please contact me on our discord in "loot-filters" channel :)\nMade by: Vivasen
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Charsi's%20Special.lua

return {
filter_level = 1,
filter_titles = {"ÿc4Lite","ÿc4Lite + Hunter","ÿc4Aggressive","ÿc4Aggressive + Hunter"},
reload = "ÿc4Charsi's Special (v1.1) {Green}Reloaded",
allowOverrides = true,
    rules = {
		--																	      				BASES

		--{codes="allitems",location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {orange}-{code}"},  -- DEBUG - Show item code
		--{codes="allitems",location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {blue}-{index}"}, -- DEBUG - Show item index
		{ -- Show ilvl display to items
			codes = {"rin","aqv", "amu", "cm2", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18", "jew", "m32", "m33", "m34", "m35", "cm1", "cm2", "cm3"},
			location = {"onground", "onplayer", "atvendor", "equipped"},
			suffix = " ({ilvl})"
		},
		{ -- Hides all unwanted bases with max 2os
			codes = {"Bb3","7tk", "cap", "uhc", "utc", "uvc", "ztb", "zlb", "zmb", "zvb", "zhb", "mbl", "tbl", "vbl", "hbl", "lbl", "xlb", "lbt", "mbt", "vbt", "Ag1", "Ag3", "xlg", "mgl", "vgl", "lgl", "xap", "hlm", "skp", "xuc", "xml", "buc", "sml", "Wp2", "Gg2", "Gg1", "Wp1", "Na1", "Sa1", "Sa2", "hla", "lea", "qui", "stu", "ces", "ktr", "jav", "pil", "7dg", "7di", "9dg", "9di", "dgr", "dir", "obd", "obc", "obb", "obe", "ob8", "ob7", "ob6", "ob9", "ob4", "ob1", "ob2", "ob3", "Bb6", "7ta", "9ta", "tax", "7	tk", "7bk", "9tk", "9bk", "bkf", "tkf", "7yw", "7bw", "7wn", "7gw", "9wn", "9gw", "9yw", "9bw", "bwn", "gwn", "wnd", "ywn"},
            quality = "3-",
            area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 0/2os badly rolled STR% Strong and Mighty Belt Superior bases (max 2os)
			codes = {"Bb2", "Bb5", "Bb1", "Bb4"},
			quality = "3",
			sockets = "0,2",
			stat = {index = 262, op = "<", value = 8},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/2os decently rolled STR% Strong and Mighty Belt Superior bases (max 2os)
			codes = {"Bb2", "Bb5", "Bb1", "Bb4"},
			quality = "3-",
			sockets = "0,2",
			stat = {index = 262, op = ">=", value = 8},
			suffix = "ÿcR [{stat=(262)}%% STR]"
		},
		{ -- Hides leftover (non-superior) bases (max 2os)
			codes = {"Bb2", "Bb5", "umc", "ulc", "Bb1", "Bb4"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides all unwanted bases with max 3os
			codes = {"utb", "uhb", "xtb", "8ss", "6ss", "sst", "xmb", "xvb", "xhb", "tbt", "Ab1", "Ab4", "utg", "uhg", "xtg", "xmg", "xvg", "xhg", "hgl", "bae", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba2", "ba3", "ba1", "drd", "dr8", "dra", "dr3", "dr5", "dr1", "ulm", "urn", "uhl", "ukp", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "ne1", "ne2", "ne6", "ne7", "uuc", "xsh", "bsh", "lrg", "spk", "Na2", "Na3", "Sa3", "Sa4", "xla", "xui", "xea", "brs", "chn", "ltp", "rng", "scl", "7ha", "9ha", "hax", "sbw", "7sp", "spc", "clb", "9cl", "7cs", "9sp", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "k02", "k01", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9sm", "9ss", "9sb", "9fc", "flc", "sbr", "scm", "ssd", "wsd"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2os decent Superior bases (max 3os)
			codes = {"umb", "7cl", "tgl", "hbt", "uvb", "ulb", "ci3", "ci2", "ci0", "ci1", "ulg", "uvg", "umg", "bab", "bad", "uh9", "usk", "uap", "Ab3", "Ab6", "Ab2", "Ab5", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "Ag2", "Ag4", "Ag5", "Ag6", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "drb", "drf", "dr6", "dre", "dr9", "dr4", "drc", "dr7", "dr2", "amf", "ama", "am5"},
			quality = "3",
			sockets = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hide 0/3os badly rolled FRW% Bladed Boots and Combat Kicks Superior bases (max 3os)
			codes = {"Ab3", "Ab6", "Ab2", "Ab5"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 96, op = "<", value = 12},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os decently rolled FRW% Bladed Boots and Combat Kicks Superior bases (max 3os)
			codes = {"Ab3", "Ab6", "Ab2", "Ab5"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 96, op = ">=", value = 12},
			suffix = "ÿcR [{stat=(96)} FRW%%]"
		},
		{ -- Hide 0/3os badly rolled AR% Amazon Circlet Superior bases (max 3os)
			codes = {"Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 119, op = "<", value = 30},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os decently rolled AR% Amazon Circlet Superior bases (max 3os)
			codes = {"Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 119, op = ">=", value = 30},
			suffix = "ÿcR [{stat=(119)} AR%%]"
		},
		{ -- Hide 0/3os badly rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			codes = {"Ag2", "Ag4", "Ag5", "Ag6"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 221, op = "<", value = 5},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os decently rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			codes = {"Ag2", "Ag4", "Ag5", "Ag6"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 221, op = ">=", value = 5},
			suffix = "ÿcR [{stat=(262)} - 5/6 dex/lvl]"
		},
		{ -- Hide 0/3os badly rolled FCR% Sorceress Gloves Superior bases (max 3os)
			codes = {"Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 105, op = "<", value = 21},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os decently rolled FCR% Sorceress Gloves Superior bases (max 3os)
			codes = {"Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 105, op = ">=", value = 21},
			suffix = "ÿcR [{stat=(105)} FCR]"
		},
		{ -- Hide 0/3os badly rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = {"drb", "drf", "dr6"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 188, op = "<", value = 3, param = 41},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os perf rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = {"drb", "drf", "dr6"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 188, op = "==", value = 3, param = 41},
			suffix = "ÿcR [3 to Blaze Wolf]"
		},
		{ -- Hide 0/3os badly rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = {"dre", "dr9", "dr4"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 188, op = "<", value = 3, param = 42},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os perf rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = {"dre", "dr9", "dr4"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 188, op = "==", value = 3, param = 42},
			suffix = "ÿcR [3 to Frost Bear]"
		},
		{ -- Hide 0/3os badly rolled Raven Damage Druid Helmet bases (max 3os)
			codes = {"drc", "dr7", "dr2"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 403, op = "<", value = 200},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os decently rolled Raven Damage Druid Helmet bases (max 3os)
			codes = {"drc", "dr7", "dr2"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 403, op = ">=", value = 200},
			suffix = "ÿcR [{stat=(403)} Raven Damage]"
		},
		{ -- Hide 0/3os NOT +3 LF Amazon Javs Superior bases (max 3os)
			codes = {"amf", "ama", "am5"},
			quality = "3",
			sockets = "0,3",
			stat = {index = 107, op = "<", value = 3, param = 35},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/3os +3 LF Amazon Javs Superior bases (max 3os)
			codes = {"amf", "ama", "am5"},
			quality = "3-",
			sockets = "0,3",
			stat = {index = 107, op = "==", value = 3, param = 35},
			suffix = "ÿcR [3 LF]"
		},
		{ -- Hides leftover (non-superior) bases (max 3os)
			codes = {"amf","hbt", "tgl", "ama", "am5", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Ag2", "Ag4", "Ag5", "Ag6", "umb", "uvb", "ulb", "ci3", "ci2", "ci0", "ci1", "ulg", "uvg", "umg", "bab", "bad", "uh9", "usk", "uap", "Ab3", "Ab6", "Ab2", "Ab5", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "drb", "drf", "dr6", "dre", "dr9", "dr4", "drc", "dr7", "dr2", },
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2os bases (max 3os)
			codes = {"utb", "uhb", "xtb", "8ss", "6ss", "sst", "7cl", "xmb", "xvb", "xhb", "tbt", "Ab1", "Ab4", "utg", "uhg", "xtg", "xmg", "xvg", "xhg", "hgl", "bae", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba2", "ba3", "ba1", "drd", "dr8", "dra", "dr3", "dr5", "dr1", "ulm", "urn", "uhl", "ukp", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "ne1", "ne2", "ne6", "ne7", "uuc", "xsh", "bsh", "lrg", "spk", "Na2", "Na3", "Sa3", "Sa4", "xla", "xui", "xea", "brs", "chn", "ltp", "rng", "scl", "7ha", "9ha", "hax", "sbw", "7sp", "spc", "clb", "9cl", "7cs", "9sp", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "k02", "k01", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9sm", "9ss", "9sb", "9fc", "flc", "sbr", "scm", "ssd", "wsd","umb", "tgl", "hbt", "uvb", "ulb", "ci3", "ci2", "ci0", "ci1", "ulg", "uvg", "umg", "bab", "bad", "uh9", "usk", "uap", "7cl", "Ab3", "Ab6", "Ab2", "Ab5", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "Ag2", "Ag4", "Ag5", "Ag6", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "drb", "drf", "dr6", "dre", "dr9", "dr4", "drc", "dr7", "dr2", "amf", "ama", "am5"},
			quality = "3-",
			sockets = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
			hide = true
		},
		{ -- Hides all unwanted bases with max 4os
			codes = {"Ca1", "Ca4", "Ca5", "Ca6", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3", "pad", "paf", "pae", "pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "uml", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "tow", "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Na4", "Na5", "Na6", "Bp2", "Bp1", "Bp4", "Bp5", "Sa5", "Sa6", "upl", "uhn", "ung", "uui", "urs", "ult", "uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl", "xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8ls", "8cs", "8bs", "bst", "cst", "lst", "bsw", "Bf4", "72h", "92h", "k03", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3os decent Superior bases (max 4os)
			codes = {"urg", "uit", "Ca2", "Ca3", "kit", "utp", "nea", "nef", "pac", "pab", "Bp3", "Bp6"},
			quality = "3",
			sockets = "2,3",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hide 0/4os badly rolled Necro Shield Superior bases (max 4os)
			codes = {"nea", "nef"},
			quality = "3",
			sockets = "0,4",
			stat = {index = 188, op = "<", value = 3, param = 18},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/4os perf rolled Necro Shield Superior bases (max 4os)
			codes = {"nea", "nef"},
			quality = "3-",
			sockets = "0,4",
			stat = {index = 188, op = "==", value = 3, param = 18},
			suffix = "ÿcR [3 to Summoning]"
		},
		{ -- Hide 0/4os badly rolled Pally Shield Superior bases (max 4os)
			codes = {"pac", "pab"},
			quality = "3",
			sockets = "0,4",
            stat = {index = 43, op = "<", value = 40},
            stat = {index = 45, op = "<", value = 40},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/4os decently rolled Pally Shield Superior bases (max 4os)
			codes = {"pac", "pab"},
			quality = "3-",
			sockets = "0,4",
            stat = {index = 43, op = ">=", value = 40},
            stat = {index = 45, op = ">=", value = 40},
			suffix = "ÿcR [{stat=(45)}%% All Res]"
		},
		{ -- Hide 0/4os badly rolled Enlightened Plate Superior bases (max 4os)
			codes = {"Bp3", "Bp6"},	
			quality = "3",
			sockets = "0,4",
            stat = {index = 43, op = "<", value = 15},
            stat = {index = 45, op = "<", value = 15},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/4os almost perf rolled Enlightened Plate Superior bases (max 4os)
			codes = {"Bp3", "Bp6"},	
			quality = "3-",
			sockets = "0,4",
            stat = {index = 43, op = ">=", value = 14},
            stat = {index = 45, op = ">=", value = 14},
			suffix = "ÿcR [{stat=(45)}%% All Res]"
		},
		{ -- Hide 0/4os badly rolled Cloak/Mantle Superior bases (max 4os)
			codes = {"Ca2", "Ca3"},
			quality = "3",
			sockets = "0,4",
			stat = {index = 188, op = "<=", value = 3, param = 49},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/4os perf rolled Cload/Mantle Superior bases (max 4os)
			codes = {"Ca2", "Ca3"},
			quality = "3-",
			sockets = "0,4",
			stat = {index = 188, op = "==", value = 4, param = 49},
			suffix = "ÿcR [+4 to Shadow Disciplines]"
		},
		{ -- Hides leftover (non-superior) bases (max 4os)
			codes = {"urg", "uit", "kit", "Ca2", "Ca3", "utp", "nea", "nef", "pac", "pab", "Bp3", "Bp6"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3os bases (max 4os)
			codes = {"Ca1", "Ca4", "Ca5", "Ca6", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3", "pad", "paf", "pae", "pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "uml", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "tow", "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Na4", "Na5", "Na6", "Bp2", "Bp1", "Bp4", "Bp5", "Sa5", "Sa6", "upl", "uhn", "ung", "uui", "urs", "ult", "uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl", "xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8ls", "8cs", "8bs", "bst", "cst", "lst", "bsw", "Bf4", "72h", "92h", "k03", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp","urg", "uit", "Ca2", "Ca3", "kit", "utp", "nea", "nef", "pac", "pab", "Bp3", "Bp6"},
			quality = "3-",
			sockets = "2,3",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
			hide = true
		},
		{ -- Hides all unwanted bases with max 5os
			codes = {"axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3/4os decent Superior bases (max 5os)
			code = "6lx",
			quality = "3",
			sockets = "2,3,4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hides leftover (non-superior) bases (max 5os)
			code = "6lx",
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3/4os bases (max 5os)
			codes = {"axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8","6lx"},
			quality = "3-",
			sockets = "2,3,4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
			hide = true
		},
		{ -- Hides all unwanted bases with max 6os
			codes = {"Bm1", "8ws", "wst", "Bm2", "Bm3", "Bf2", "Bf1", "7ga", "7bt", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amb", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "8hx", "hxb", "Bm7", "Bm8", "Bm9", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "7vo", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "6ws", "7p7", "9h9", "7wc", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "9wc", "9s8", "wsc", "7s8", "ame", "amd", "am9", "am8", "am4", "am3", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Bf5", "Bm4", "Bm5", "Bm6", "7gd", "7fb", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "9cr", "crs"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3/4/5os decent Superior bases (max 6os)
			codes = {"Bf3", "7wa", "72a", "6hx", "9fl", "7pa", "7cr", "7b8", "amc", "7ws", "9ws", "7mp", "9mp", "mpi", "Bf6"},
			quality = "3",
			sockets = "2,3,4,5",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hide 0/6os NOT 2 bow skills Grand Matron Bow Superior bases (max 6os)
			code = "amc",
			quality = "3",
			sockets = "0,6",
			stat = {index = 188, op = "<", value = 2, param = 0},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/6os 2 bow skills Grand Matron Bow Superior bases (max 6os)
			code = "amc",
			quality = "3-",
			sockets = "0,6",
			stat = {index = 188, op = "==", value = 2, param = 0},
			suffix = "ÿcR [2 to Bow skills]"
		},
		{ -- Hide 0/6os NOT 2/3 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3",
			sockets = "0,6",
			stat = {index = 83, op = "<", value = 2, param = 3},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/6os 2 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3-",
			sockets = "0,6",
			stat = {index = 83, op = "==", value = 2, param = 3},
			suffix = "ÿcR [2 to Pala skills]"
		},
		{ -- Display 0/6os 3 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3-",
			sockets = "0,6",
			stat = {index = 83, op = "==", value = 3, param = 3},
			suffix = "ÿcR [3 to Pala skills]"
		},
		{ -- Hide 0/6os <120% Summon Damage Necro Sickle bases (max 6os)
			codes = {"7mp", "9mp", "mpi"},
			quality = "3",
			sockets = "0,6",
			stat = {index = 281, op = "<", value = 120},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/6os >=120% Summon Damage Superior Necro Sickle bases (max 6os)
			codes = {"7mp", "9mp", "mpi"},
			quality = "3-",
			sockets = "0,6",
			stat = {index = 281, op = ">=", value = 120},
			suffix = "ÿcR [{stat=(281)}%% Summon Damage]"
		},
		{ -- Hide 0/6os <5% Life Leech Bloodletting Sword Superior base (max 6os)
			code = "Bf6",
			quality = "3",
			sockets = "0,6",
			stat = {index = 60, op = "<", value = 5},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 0/6os >=5% Life Leech Bloodletting Sword Superior base (max 6os)
			code = "Bf6",
			quality = "3-",
			sockets = "0,6",
			stat = {index = 60, op = ">=", value = 5},
			suffix = "ÿcR [{stat=(60)}%% Life Leech]"
		},
		{ -- Hides leftover (non-superior) bases (max 6os)
			codes = {"Bf3", "7wa", "72a", "6hx", "9fl", "7pa", "7cr", "7b8", "amc", "7ws", "9ws", "7mp", "9mp", "mpi", "Bf6"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide 2/3/4/5os bases (max 6os)
			codes = {"Bm1", "8ws", "wst", "Bm2", "Bm3", "Bf2", "Bf1", "7ga", "7bt", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amb", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "8hx", "hxb", "Bm7", "Bm8", "Bm9", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "7vo", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "6ws", "7p7", "9h9", "7wc", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "9wc", "9s8", "wsc", "7s8", "ame", "amd", "am9", "am8", "am4", "am3", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Bf5", "Bm4", "Bm5", "Bm6", "7gd", "7fb", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "9cr", "crs","Bf3", "7wa", "72a", "6hx", "9fl", "7pa", "7cr", "7b8", "amc", "7ws", "9ws", "7mp", "9mp", "mpi", "Bf6"},
			quality = "3-",
			sockets = "2,3,4,5",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
			hide = true
		},
		{ -- Hide all Indestructible Bases (gets rid of indest/eth superior)
			codes = "allitems",
			quality = "3-",
			ethereal = true,
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 152, op = ">=", value = 0},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Notify about LB superior bases
			codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17"},
			quality = "3-",
			notify = "LB Base: {name}"
		},
		{ -- Hides all 1os bases at all times
			codes = {"rin", "amu", "cm2", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "3-",
			sockets = "1",
			runeword=false,
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			hide = true
		},
		
		

		
		
		--													                                       MAGIC
		
		{ -- Hides all magic items (does not include jewels or S/L/G charms) from clvl 30 above Normal
			codes = {"rin", "amu", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Nightmare", "Hell"},
			pstat = {index = 12, op = ">=", value = 30},
			hide = true
		},
		{ -- Hides magic Large Charms, Aggressive
			codes = "cm2",
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Nightmare", "Hell"},
			pstat = {index = 12, op = ">=", value = 30},
			filter_levels = "3,4",
			hide = true
		},
		
				--													                                     RARE
		{ -- Hides all rare items, besides Jewels
			codes = {"rin", "amu", "cm2", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "6",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		
		--													                                        ARROWS
		{ -- Hides all magic and rare arrows
			code = "aqv",
			qualities = "4,6",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",	
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hide white arrows at all times
			code="aqv",
			quality="2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			hide=true
		},
		
		--													                                      MISC and STYLES

		{ -- Hide gold drops unter 900 for clvl above 80 Aggressive
			code = "gld",
            stat = {index = 14, op = "<=", value=799}, 
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide gold drops unter 700 for clvl above 80 Lite
			code = "gld",
            stat = {index = 14, op = "<=", value=499}, 
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
            hide = true
        },
        { -- Hides id/tp scroll drops
            codes = {"tsc", "isc"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
            hide = true
        },
        { -- Hides all potion drops besides full rejuvs from clvl 80
            codes = {"hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
            hide = true
        },
		{ -- Style for Unique items
            codes = "allitems",
            quality = "7",
            border = {165, 146, 99, 230, 1} 
        },
		{ -- Style for Set items
            codes = "allitems",
            quality = "5",
            border = {0, 255, 0, 230, 1} 
        },
		{ -- High Runes notification and border
            codes = {"r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
            notify = "ÿc@High Rune Nearby: {name}",
			border = {255, 170, 0, 230, 1} 
        },
		{ -- Style for Codex
            codes = {"a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58", "a59", "a60", "a61", "a62", "a63", "a64", "a65"},
            notify = "Seven Sins: {name}",
            background_style = "SapphireSonnet"
        },
		{ -- EEE Notify
			code = "a66",
			notify = "Very important item on ground!"
		},
		{ -- Ultra Runes notification and border
            codes = { "r34", "r35", "r36"},
            background_style = "OceanDrift",
            notify = "ÿc@Ultra Rune Nearby: {name}",
        },
		{ -- Unique Charms notification and border
            codes = {"cm1", "cm2", "cm3", "m32", "m33", "m34", "m35"},
            quality = 7,
            notify = "ÿc;Unique: {name}",
            border = {165, 146, 99, 230, 1} 
        },
		{ -- Event Boxes notification and style
            code = "Ev0",
            notify = "ÿc;Event Box!",
			name_override = "Gamba Box!",
			background = {46, 47, 67, 230},
			border = {7, 10, 92, 230, 2},
			notify = "{red}Edyrem: {white}Is for me?",
            name_style = "Rainbow"
        },
        { -- Style for Treasure Chests
            codes = {"y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32"},
            notify = "ÿc;Treasure! ヽ(♡‿♡)ノ",
            background_style = "SapphireSonnet",
            border = { 220, 120, 255, 230, 2 }
        },
		{ -- Style for Magic Jewels
			code = "jew",
			quality = "4",
			background = {34, 34, 76, 170}
		},
		{ -- ID/TP Tomes, Cube and Key notify and style
			codes = {"tbk", "ibk", "key", "box","y34","y35","y36","y37","y38","y39","y40"},
			notify = "{red}Are you sure you want to leave it?",
			prefix = "{yellow}"
		},
		{ -- Style for Beacon of Hope
			code = "BoH",
			name_override = "{red}Is that a... bacon?",
			notify = "{red}Important Item: {name}"
		},
		{ -- Border for Rare Jewels
			code = "jew",
			quality = "6",
			border = {255, 255, 102, 230, 1}
		},
		{ -- Border for Superior Bases
			codes = "allitems",
			quality = "3",
			border = {236, 236, 237, 230, 1}
		},
		{ -- Scroll of Torment border
			codes = {"K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80"},
			border = {0, 130, 0, 230, 2}
		},
		{ -- Ramaladni's Gift, Socket Remover, Soul Shards and Gem Vein style
			codes = {"Rgx", "b64","S01", "y33"},
			border = {7, 167, 222, 230, 1},
			name_style = "Cotton Candy"
		},
		{ -- Treasure Chests style
			codes = {"y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32"},
            border = {165, 146, 99, 230, 1}
		},
		{ -- Style for Scroll of Triumph
			code="a06",
			name_override="Are ya winning son?",
			notify="{red}Edyrem: {white}Yes, dad.",
			background = {165, 146, 99, 200},
			border={0,0,0,255,2}
		},
		{ -- Style for Gold
			code = "gld",
			background = {180, 199, 0, 110},
			name_override = "{name} G"
		},
		{ -- Hide all Low Runes
			codes = {"r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			hide = true
		},
		{ -- Magic Small/Large/Grand Charm style
			codes = {"cm1", "cm2", "cm3"},
			quality = "4",
			background = {53, 0, 76, 170}
		},
		{ -- Display socket number of all socketed items
			codes = "allitems",
			sockets = "1+",
			location = {"onground", "onplayer", "atvendor", "equipped"},
			suffix = "{turquoise}[{sockets}]"
        },
		{ -- Style for Demon Tempered Items
			codes = "allitems",
			quality = "9",
			border = {0,0,0,255,2},
			background = {14, 14, 123, 90},
			notify = "{red}Demon Tempered item on ground!"
		},
		{ -- Style for Facets
            codes = { "j00", "jew" },
            quality = 7,
            notify = "ÿcERainbow Facet Nearby!",
            name_style = "Rainbow",
            border = {255,0,0,230,1} 
        },
		{ -- Style for Premium Socket Remover
			code = "b65",
			notify = "{red}Are you sure?",
			name_override = "Premium socket remover",
			border = {7, 167, 222, 230, 1},
			name_style = "Cotton Candy"
		},
		{ -- Style for Uber Keys/Organs
			codes = {"pk1", "pk2", "pk3", "dhn", "bey", "mbr"},
			border = {255,165,0,255,1}
		},
		{ -- Style for DT Body Parts
			codes={"C00","C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14","C15","C16","C17","C18","C19","C20","C21","C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33","C34","C35","C36","C37"},
			background_style="TamarilloGlow"
		},
		{ --Display RMD "Elite Bases" with a special EB icon, to the left of item name
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ⅲ "
        },
		{ --Change EB sign on DTs to match color of item name
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
			quality = 9,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ÿc:"
        },
        { --Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ⅳ "
        },
		{code="Z02",name_override="{purple}Amethyst {gold}Remover"}, --Onground display for Amethyst Remover
        {code="Z03",name_override="{yellow}Topaz {gold}Remover"}, --Onground display for Topaz Remover
        {code="Z04",name_override="{blue}Sapphire {gold}Remover"}, --Onground display for Sapphire Remover
        {code="Z05",name_override="{green}Emerald {gold}Remover"}, --Onground display for Emerald Remover
        {code="Z06",name_override="{red}Ruby {gold}Remover"}, --Onground display for Ruby Remover
        {code="Z07",name_override="{white}Diamond {gold}Remover"}, --Onground display for Diamond Remover
        {code="Z08",name_override="{gray}Skull {gold}Remover"}, --Onground display for Skull Remover
		
			
					--                                                                           Display very good superior rolls
		
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={0,1,2,3},op="==",value=15},{index={0,1,2,3},op="==",value=14}},suffix="ÿcR+{stat=(3)} att"}, -- All Attributes
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={39,41,43,45},op="==",value=10},{index={39,41,43,45},op="==",value=9}},suffix="ÿcR+{stat=(39)}%% all res"}, -- All Resistances
		{codes="allitems",quality="3",runeword=false,stat={index={40,42,44,46},op="==",value=5},suffix="ÿcR+5%% max res"}, -- Max All Resistance
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={333,334,335,336},op=">=",value=9},{index={187,189,190,191},op=">=",value=9}},suffix="ÿcR-{stat=(333)}%%res|-{stat=(187)}%%im"}, -- Resistance/Immunity pierce
		{codes="allitems",quality="3",runeword=false,stat={index=136,op=">=",value=9},suffix="ÿcR{stat=(136)}%% Crushing"}, -- Crushing Blow
		{codes={"7fl","9fl"},quality="3",runeword=false,stat={index=427,op=">=",value=16},suffix="ÿcR{stat=(427)}%% Buff Dura"}, -- Buff Duration, Knout/Scourge only
		{codes="allitems",quality="3",runeword=false,stat={index=105,op=">=",value=14},suffix="ÿcR{stat=(105)}%% FCR"}, -- IAS/FCR
		
		
			
		
		--																Additional/missing prefixes or gameplay tips for various items
		
		{code="tes",location={"onplayer","atvendor"},prefix="Cube with QoL Bag to get 4-7 Gems\n"},-- Twisted Essence of Suffering
		{code="ceh",location={"onplayer","atvendor"},prefix="Cube with QoL Bag to get 1-3 HR Points\n"},-- Charged Essense of Hatred
		{code="bet",location={"onplayer","atvendor"},prefix="Cube with QoL Bag to get 3-6 Set Cores\n"},-- Burning Essence of Terror
		{code="fed",location={"onplayer","atvendor"},prefix="{gray}Cube with QoL Bag to get 3-6 Unique Cores\n{orange}"},-- Festering Essence of Destruction
		{codes={"C00","C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14","C15","C16","C17","C18","C19","C20","C21","C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33","C34","C35","C36","C37"},location={"onplayer","atvendor"},prefix="{gray}One of the ÿcRBody Parts{gray} used in {red}Demon Tempering\n"}, -- Demon Tempering Body Parts
		{codes="allitems",quality="7",identified=true,index={433,543,428,217,299,211,418,292,213,369,231,423,225,412,45,413,556,330,483,335,254,532,366,525,55,246,189,447,71,445,527,438,249,529,6,143,281,295,286,247,347,386,453,379,262,226},location={"onplayer","atvendor","equipped"},prefix="ÿcROne of the Sacred Relicsÿc4\n"}, -- Sacret Relics for Demon Tempering
		{code="y67",location={"onplayer","atvendor"},prefix="\n{gray}Cube it with a ÿcRSacred Relic{gray} and then with a ÿcRBody Part{gray} to Temper it\nÿcRIngredient{gray} for {red}Demon Tempering\n"}, -- Scroll of Belial
		{code="S01",location={"onplayer","atvendor"},prefix="{grey}Gives 1-3 Soul Shards when bagged\n"}, -- Soul Shard
		{code="b64",location={"onplayer","atvendor"},prefix="{red}If stacked, cube alone to remove 1 quantity before using\n{gray}Cube a stack of 10 to create Premium Socket Remover\n"}, -- Socket Remover
		{code="b65",location={"onplayer","atvendor"},prefix="{red}If stacked, cube alone to remove 1 quantity before using\n{gray}Cube alone to turn back into 10 Socket Removers\n"}, -- Premium Socket Remover
		{code="m35",identified=true,index=593,location={"onplayer","atvendor"},prefix="{grey}Cube alone to change amount summoned (5 max)\nÿc4"}, -- Unholy Commander
		{code="m34",identified=true,index=614,location={"onplayer","atvendor"},prefix="{grey}Can be enhanced. Cannot be re-rolled.\nÿc4"}, -- Blank Talent
		{code="yps",location={"onplayer","atvendor"},prefix="{grey}Used for {green}Set{gray} Blood Contracts{white}\n"}, -- Antidote Potion
		{code="wms",location={"onplayer","atvendor"},prefix="{grey}Used for ÿc4Unique{gray} Blood Contracts{white}\n"}, -- Thawing Potion
		{code="isc",location={"onplayer","atvendor"},prefix="{grey}ID Scroll + HP potion in NM/Hell = New Beacon\nUsed for re-rolling Unique/Set items\n"}, -- Identify Scroll
		{code="GBd",location={"onplayer","atvendor"},prefix="{grey}Used for splitting stacked {yellow}Gold Bars{white}\n"}, -- Gold Bar Splitter
		{code="TK8",location={"onplayer","atvendor"},name_override="{grey}Beacon of Hope + X (Summon lvl +1) Class Tokens = Upgraded Summon\nClass Token + Beacon of Hope = Added Soul Summon\nToken Forger + Beacon of Hope (100 Soul Shards) = Class Token{white}\nToken Forger"}, -- Token Forger
		{code="leg",location={"onplayer","atvendor"},prefix="{grey}Cube alone for MooMoo Farm\n{white}"}, -- Wirt's Leg
		{code="std",location={"onplayer","atvendor"},prefix="{grey}Can be sold to any vendor in Hell to spawn Diablo Clone\nCube with Torch/Anni to reroll them\nÿc4"}, -- Standard of Heroes
		{code="Y20",location={"onplayer","atvendor"},prefix="{red}OR\n{white}Unstacked Bars 2-5 (depends on item quality) + item = added ETH\n{red}OR\n{white}Normal/Superior item (white) + 1 Bar = max sockets\n{white}"}, -- Gold Bar
		{code="box",location={"onplayer","atvendor"},prefix="{gray}Press Portal icon inside cube to show 'Rift' with rotating recipes/perks inside\nPress 'H' to show a list of RWs only\nPress Scroll icon inside cube to show recipes\n"},-- Horadric Cube tips
		{code="hdm",location={"onplayer","atvendor"},prefix="{gray}More about it on our Discord server\ndrop specific item/s on specific difficulty called 'Flavor Drops'\nGameplay tip: Some Unique Monsters have increased chance to\n"},-- Horadric Malus gameplay tip
		{code="hdm",difficulties={"Normal", "Nightmare"},notify="{yellow}Gameplay tip available! Look at description of {name}"}, -- Horadric Malus tip notify
		{code="mss",location={"onplayer","atvendor"},prefix="{gray}Entrance to levels full of Torment (Hell only)\nGameplay Tip: The {red}Worldstone Chamber{gray} contains an\n"},-- Mephisto's Soul Stone gameplay tip
		{code="mss",difficulties={"Normal", "Nightmare"},notify="{yellow}Gameplay tip available! Look at description of {name}"}, --  Mephisto's Soul Stone tip notify
		{code="y66",location={"onplayer","atvendor"},prefix="{gray}Always walk in RMD! Same speed as running and no defense loss\n"},-- Starter Pack gameplay tip
		{code="tr2",location={"onplayer","atvendor"},prefix="{gray}'LB' icon in item name means 'Limit Breaking Base'/n'EB' icon in item name means 'Elite Base'\n"},-- Scroll of Resistance gameplay tip
		{code="tr2",difficulties={"Normal", "Nightmare"},notify="{yellow}Gameplay tip available! Look at description of {name}"}, --  Scroll of Resistance tip notify
		{code="bks",location={"onplayer","atvendor"},prefix="{gray}Example: Spirit in 6os Spell Blade = Jewel+Jewel+Tal+Thul+Ort+Amn\nThose 'Jeweled Runewords' can be made by filling excess sockets with Jewels (not gems!) BEFORE Runes\nGameplay Tip: You can make Runewords in items that have more sockets that those RWs need runes.\n"}, -- Scroll of Inifuss gameplay tip
		{code="bks",difficulties={"Normal", "Nightmare"},notify="{yellow}Gameplay tip available! Look at description of {name}"}, --  Scroll of Inifuss tip notify
		{code="pk1",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Hate\nConversion:\n{orange}"}, --  Key of Terror gameplay tip
		{code="pk2",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Destruction\nConversion:\n{orange}"}, --  Key of Hate gameplay tip
		{code="pk3",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Terror\nConversion:\n{orange}"}, --  Key of Destruction gameplay tip
		{code="Z42",location={"onplayer","atvendor"},prefix="{gold}The Countess {white}(A1: Black Marsh->Forgotten Tower)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Terror Remover gameplay tip
		{code="Z43",location={"onplayer","atvendor"},prefix="{gold}The Summoner {white}(A2: Arcane Sanctuary)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Hate Remover gameplay tip
		{code="Z44",location={"onplayer","atvendor"},prefix="{gold}Nihlathak {white}(A5: Halls of Vaught)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Destruction Remover gameplay tip
		{code="Z45",location={"onplayer","atvendor"},prefix="{gold}Lilith {white}(A5: Matron's Den)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Diablo's Horn Remover gameplay tip
		{code="Z46",location={"onplayer","atvendor"},prefix="{gold}Uber Duriel {white}(A5: Forgotten Sands)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Baal's Eye Remover gameplay tip
		{code="Z47",location={"onplayer","atvendor"},prefix="{gold}Uber Izual {white}(A5: Furnace of Pain)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Mephisto's Brain Remover gameplay tip
		
		
		--                                                             SET HUNTER: Show what set x item belongs to, before identifying it. "Hunter" levels only!
		
		{codes="allitems",quality="5",identified=false,index=66,filter_levels="2,4",suffix="{green}|Aldur's"}, --Aldur's Helmet
		{codes="allitems",quality="5",identified=false,index=67,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Torso
		{codes="allitems",quality="5",identified=false,index=68,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Weapon
		{codes="allitems",quality="5",identified=false,index=69,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Boots
		
		{codes="allitems",quality="5",identified=false,index=50,filter_levels="2,4",suffix="|Angelic"}, --Angelic Weapon
		{codes="allitems",quality="5",identified=false,index=51,filter_levels="2,4",suffix="|Angelic"}, --Angelic Torso
		{codes="allitems",quality="5",identified=false,index=52,filter_levels="2,4",suffix="|Angelic"}, --Angelic Ring
		{codes="allitems",quality="5",identified=false,index=53,filter_levels="2,4",suffix="|Angelic"}, --Angelic Amulet
		
		{codes="allitems",quality="5",identified=false,index=58,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Amulet
		{codes="allitems",quality="5",identified=false,index=59,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Weapon
		{codes="allitems",quality="5",identified=false,index=60,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Helmet
		{codes="allitems",quality="5",identified=false,index=61,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Torso
		
		{codes="allitems",quality="5",identified=false,index=54,filter_levels="2,4",suffix="|Arctic"}, --Arctic Weapon
		{codes="allitems",quality="5",identified=false,index=55,filter_levels="2,4",suffix="|Arctic"}, --Arctic Torso
		{codes="allitems",quality="5",identified=false,index=56,filter_levels="2,4",suffix="|Arctic"}, --Arctic Belt
		{codes="allitems",quality="5",identified=false,index=57,filter_levels="2,4",suffix="|Arctic"}, --Arctic Gloves
		
		{codes="allitems",quality="5",identified=false,index=144,filter_levels="2,4",suffix="{green}|Battlemage's"}, --Battlemage's Weapon
		{codes="allitems",quality="5",identified=false,index=145,filter_levels="2,4",suffix="|Battlemage's"}, --Battlemage's Shield
		{codes="allitems",quality="5",identified=false,index=146,filter_levels="2,4",suffix="|Battlemage's"}, --Battlemage's Torso
		
		{codes="allitems",quality="5",identified=false,index=44,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Helmet
		{codes="allitems",quality="5",identified=false,index=45,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Torso
		{codes="allitems",quality="5",identified=false,index=46,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Weapon
		
		{codes="allitems",quality="5",identified=false,index=115,filter_levels="2,4",suffix="|Bul-Katho's"}, --Bul-Katho's Weapon big
		{codes="allitems",quality="5",identified=false,index=116,filter_levels="2,4",suffix="|Bul-Katho's"}, --Bul-Katho's Weapon smol
		
		{codes="allitems",quality="5",identified=false,index=25,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Weapon
		{codes="allitems",quality="5",identified=false,index=26,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Torso
		{codes="allitems",quality="5",identified=false,index=27,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Helmet
		{codes="allitems",quality="5",identified=false,index=28,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Amulet
		{codes="allitems",quality="5",identified=false,index=29,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Ring
		
		{codes="allitems",quality="5",identified=false,index=0,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Shield
		{codes="allitems",quality="5",identified=false,index=1,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Amulet
		{codes="allitems",quality="5",identified=false,index=2,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Weapon
		
		{codes="allitems",quality="5",identified=false,index=6,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Weapon
		{codes="allitems",quality="5",identified=false,index=7,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Shield
		{codes="allitems",quality="5",identified=false,index=8,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Gloves
		
		{codes="allitems",quality="5",identified=false,index=117,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Helmet
		{codes="allitems",quality="5",identified=false,index=118,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Torso
		{codes="allitems",quality="5",identified=false,index=119,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Boots
		
		{codes="allitems",quality="5",identified=false,index=47,filter_levels="2,4",suffix="|Death's"}, --Death's Gloves
		{codes="allitems",quality="5",identified=false,index=48,filter_levels="2,4",suffix="|Death's"}, --Death's Belt
		{codes="allitems",quality="5",identified=false,index=49,filter_levels="2,4",suffix="|Death's"}, --Death's Weapon
		
		{codes="allitems",quality="5",identified=false,index=147,filter_levels="2,4",suffix="|Glacial"}, --Glacial Helmet
		{codes="allitems",quality="5",identified=false,index=148,filter_levels="2,4",suffix="|Glacial"}, --Glacial Belt
		{codes="allitems",quality="5",identified=false,index=149,filter_levels="2,4",suffix="|Glacial"}, --Glacial Shield
		
		{codes="allitems",quality="5",identified=false,index=81,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Helmet
		{codes="allitems",quality="5",identified=false,index=82,filter_levels="2,4",suffix="{green}|Griswold's"}, --Griswold's Torso
		{codes="allitems",quality="5",identified=false,index=83,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Weapon
		{codes="allitems",quality="5",identified=false,index=84,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Shield
		
		{codes="allitems",quality="5",identified=false,index=100,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Weapon
		{codes="allitems",quality="5",identified=false,index=101,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Shield
		{codes="allitems",quality="5",identified=false,index=102,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Torso
		{codes="allitems",quality="5",identified=false,index=103,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Helmet
		
		{codes="allitems",quality="5",identified=false,index=3,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Boots
		{codes="allitems",quality="5",identified=false,index=4,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Shield
		{codes="allitems",quality="5",identified=false,index=5,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Belt
		
		{codes="allitems",quality="5",identified=false,index=108,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Helmet
		{codes="allitems",quality="5",identified=false,index=109,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Torso
		{codes="allitems",quality="5",identified=false,index=110,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Belt
		{codes="allitems",quality="5",identified=false,index=111,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Weapon
		
		{codes="allitems",quality="5",identified=false,index=70,filter_levels="2,4",suffix="|IK"}, --IK Helmet
		{codes="allitems",quality="5",identified=false,index=71,filter_levels="2,4",suffix="|IK"}, --IK Torso
		{codes="allitems",quality="5",identified=false,index=72,filter_levels="2,4",suffix="|IK"}, --IK Belt
		{codes="allitems",quality="5",identified=false,index=73,filter_levels="2,4",suffix="|IK"}, --IK Gloves
		{codes="allitems",quality="5",identified=false,index=74,filter_levels="2,4",suffix="|IK"}, --IK Boots
		{codes="allitems",quality="5",identified=false,index=75,filter_levels="2,4",suffix="{green}|IK"}, --IK Weapon
		
		{codes="allitems",quality="5",identified=false,index=41,filter_levels="2,4",suffix="|Infernal"}, --Infernal Helmet
		{codes="allitems",quality="5",identified=false,index=42,filter_levels="2,4",suffix="|Infernal"}, --Infernal Weapon
		{codes="allitems",quality="5",identified=false,index=43,filter_levels="2,4",suffix="|Infernal"}, --Infernal Belt
		
		{codes="allitems",quality="5",identified=false,index=9,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Amulet
		{codes="allitems",quality="5",identified=false,index=10,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Gloves
		{codes="allitems",quality="5",identified=false,index=11,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Helmet
		{codes="allitems",quality="5",identified=false,index=12,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Belt
		
		{codes="allitems",quality="5",identified=false,index=13,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Weapon
		{codes="allitems",quality="5",identified=false,index=14,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Shield
		{codes="allitems",quality="5",identified=false,index=15,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Torso
		{codes="allitems",quality="5",identified=false,index=16,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Helmet
		
		{codes="allitems",quality="5",identified=false,index=156,filter_levels="2,4",suffix="|Kreigur's W"}, --Kreigur's Will
		{codes="allitems",quality="5",identified=false,index=157,filter_levels="2,4",suffix="|Kreigur's J"}, --Kreigur's Judgement
		
		{codes="allitems",quality="5",identified=false,index=131,filter_levels="2,4",suffix="|Majestic"}, --Majestic Weapon
		{codes="allitems",quality="5",identified=false,index=132,filter_levels="2,4",suffix="|Majestic"}, --Majestic Shield
		{codes="allitems",quality="5",identified=false,index=133,filter_levels="2,4",suffix="|Majestic"}, --Majestic Helmet
		
		{codes="allitems",quality="5",identified=false,index=90,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Helmet
		{codes="allitems",quality="5",identified=false,index=91,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Torso
		{codes="allitems",quality="5",identified=false,index=92,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Gloves
		{codes="allitems",quality="5",identified=false,index=93,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Belt
		{codes="allitems",quality="5",identified=false,index=94,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Weapon
		
		{codes="allitems",quality="5",identified=false,index=123,filter_levels="2,4",suffix="|Sander/McAuley's"}, --McAuley's Helmet
		{codes="allitems",quality="5",identified=false,index=124,filter_levels="2,4",suffix="|Sander/McAuley's"}, --McAuley's Boots
		{codes="allitems",quality="5",identified=false,index=125,filter_levels="2,4",suffix="|Sander/McAuley's"}, --McAuley's Gloves
		{codes="allitems",quality="5",identified=false,index=126,filter_levels="2,4",suffix="|Sander/McAuley's"}, --McAuley's Weapon
		
		{codes="allitems",quality="5",identified=false,index=21,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Shield
		{codes="allitems",quality="5",identified=false,index=22,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Weapon
		{codes="allitems",quality="5",identified=false,index=23,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Helmet
		{codes="allitems",quality="5",identified=false,index=24,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Torso
		
		{codes="allitems",quality="5",identified=false,index=120,filter_levels="2,4",suffix="|Naj's"}, --Naj's Weapon
		{codes="allitems",quality="5",identified=false,index=121,filter_levels="2,4",suffix="|Naj's"}, --Naj's Torso
		{codes="allitems",quality="5",identified=false,index=122,filter_levels="2,4",suffix="|Naj's"}, --Naj's Helmet
		
		{codes="allitems",quality="5",identified=false,index=62,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Helmet
		{codes="allitems",quality="5",identified=false,index=63,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Weapon
		{codes="allitems",quality="5",identified=false,index=64,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Torso
		{codes="allitems",quality="5",identified=false,index=65,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Boots
		
		{codes="allitems",quality="5",identified=false,index=104,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Helmet
		{codes="allitems",quality="5",identified=false,index=105,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Belt
		{codes="allitems",quality="5",identified=false,index=106,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Gloves
		{codes="allitems",quality="5",identified=false,index=107,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Shield
		
		{codes="allitems",quality="5",identified=false,index=150,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Weapon
		{codes="allitems",quality="5",identified=false,index=151,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Shield
		{codes="allitems",quality="5",identified=false,index=152,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Helmet
		{codes="allitems",quality="5",identified=false,index=153,filter_levels="2,4",suffix="{green}|Rathma's"}, --Rathma's Torso
		
		{codes="allitems",quality="5",identified=false,index=112,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Weapon
		{codes="allitems",quality="5",identified=false,index=113,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Torso
		{codes="allitems",quality="5",identified=false,index=114,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Helmet
		
		{codes="allitems",quality="5",identified=false,index=35,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Gloves
		{codes="allitems",quality="5",identified=false,index=36,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Helmet
		{codes="allitems",quality="5",identified=false,index=37,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Torso
		{codes="allitems",quality="5",identified=false,index=38,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Boots
		{codes="allitems",quality="5",identified=false,index=39,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Belt
		{codes="allitems",quality="5",identified=false,index=40,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Shield
		
		{codes="allitems",quality="5",identified=false,index=134,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Weapon
		{codes="allitems",quality="5",identified=false,index=135,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Gloves
		{codes="allitems",quality="5",identified=false,index=136,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Arrows
		
		{codes="allitems",quality="5",identified=false,index=154,filter_levels="2,4",suffix="|Stacato Sigil"}, --Stacatomamba's Sigil
		{codes="allitems",quality="5",identified=false,index=155,filter_levels="2,4",suffix="|Mamba Circle"}, --Stacatomamba's Circle
		
		{codes="allitems",quality="5",identified=false,index=158,filter_levels="2,4",suffix="|(su)Kami"}, --Sukami's Kami
		{codes="allitems",quality="5",identified=false,index=159,filter_levels="2,4",suffix="|Su(kami)"}, --Sukami's Su
		
		{codes="allitems",quality="5",identified=false,index=76,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Belt
		{codes="allitems",quality="5",identified=false,index=77,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Amulet
		{codes="allitems",quality="5",identified=false,index=78,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Weapon
		{codes="allitems",quality="5",identified=false,index=79,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Torso
		{codes="allitems",quality="5",identified=false,index=80,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Helmet
		
		{codes="allitems",quality="5",identified=false,index=30,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Weapon
		{codes="allitems",quality="5",identified=false,index=31,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Torso
		{codes="allitems",quality="5",identified=false,index=32,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Boots
		{codes="allitems",quality="5",identified=false,index=33,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Amulet
		{codes="allitems",quality="5",identified=false,index=34,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Helmet
		
		{codes="allitems",quality="5",identified=false,index=95,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Amulet
		{codes="allitems",quality="5",identified=false,index=96,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Gloves
		{codes="allitems",quality="5",identified=false,index=97,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Boots
		{codes="allitems",quality="5",identified=false,index=98,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Torso
		{codes="allitems",quality="5",identified=false,index=99,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Belt
		
		{codes="allitems",quality="5",identified=false,index=85,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Helmet
		{codes="allitems",quality="5",identified=false,index=86,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Torso
		{codes="allitems",quality="5",identified=false,index=87,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Shield
		{codes="allitems",quality="5",identified=false,index=88,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Gloves
		{codes="allitems",quality="5",identified=false,index=89,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Belt
		
		{codes="allitems",quality="5",identified=false,index=127,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Torso
		{codes="allitems",quality="5",identified=false,index=128,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Shield
		{codes="allitems",quality="5",identified=false,index=129,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Helmet
		{codes="allitems",quality="5",identified=false,index=130,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Weapon
		
		{codes="allitems",quality="5",identified=false,index=17,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Weapon
		{codes="allitems",quality="5",identified=false,index=18,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Boots
		{codes="allitems",quality="5",identified=false,index=19,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Torso
		{codes="allitems",quality="5",identified=false,index=20,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Amulet
		
		{codes="allitems",quality="5",identified=false,index=141,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Gloves
		{codes="allitems",quality="5",identified=false,index=142,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Weapon
		{codes="allitems",quality="5",identified=false,index=143,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Helmet
		
		{codes="allitems",quality="5",identified=false,index=137,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Belt
		{codes="allitems",quality="5",identified=false,index=138,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Helmet
		{codes="allitems",quality="5",identified=false,index=139,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Torso
		{codes="allitems",quality="5",identified=false,index=140,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Gloves
		

		--                                                         UNIQUE HUNTER: Show what good (of my personal choice) unique jewelry is before identifying it
		
		{codes="allitems",quality="7",identified=false,index=527,filter_levels="2,4",suffix="|SoJ"}, --Stone of Jordan
		{codes="allitems",quality="7",identified=false,index=528,filter_levels="2,4",suffix="|BK"}, --Bul-Kathos' Wedding Band
		{codes="allitems",quality="7",identified=false,index=591,filter_levels="2,4",suffix="|Life Ev"}, --Life Everlasting
		{codes="allitems",quality="7",identified=false,index=592,filter_levels="2,4",suffix="|Hunt Mark"}, --Hunter's Mark
		{codes="allitems",quality="7",identified=false,index=541,filter_levels="2,4",suffix="|Constr",notify="{name}"}, --Constricting Ring
		{codes="allitems",quality="7",identified=false,index=590,filter_levels="2,4",suffix="|Quintessence",notify="{name}"}, --Quintessence Amulet
		{codes="allitems",quality="7",identified=false,index=532,filter_levels="2,4",suffix="|Mara's",notify="{name}"}, --Mara's Kaleidoscope Amulet


		--                                                                             Quest item notifies
		
		{code="qey",notify="{red}???: {white}A group of aspiring heroes, I see. I hope you know what you are getting yourself into.\n{red}Edyrem: {white}Who was that?"}, -- Khalim's Eye
		{code="qbr",notify="{red}???: {white}You proved yourself determined enough... Fine, I will aid you. Find my heart, I can feel it deep beneath Kurast."}, -- Khalim's Brain
		{code="qhr",notify="{red}???: {white}Completely filled with hatred, what an irony. It's time to meet with old friends in Travincal"}, -- Khalim's Heart
		{code="qf1",notify="{red}???: {white}A fine piece of weaponry it once was, now only a memory. Assemble my scattered will, Nephalem."}, -- Khalim's Flail
		{code="qf2",location="equipped",notify="{red}Khalim: {white}I SHALL HAVE MY VENGEANCE, DEMON! Even if it's not me that delivers it.\n{red}Edyrem: {white}Your deed is done, priest. It's time to join us."}, -- Khalim's Will
		{code="tr1",notify="{red}Edyrem: {white}A true heroes they were."}, -- Horadric Scroll
		{code="msf",notify="{red}Edyrem: {white}King of Staffs."}, -- Staff of Kings
		{code="vip",notify="{red}Edyrem: {white}Clouds only block the sunshine temporarily. The sun always returns."}, -- Amulet of the Viper
		{code="leg",notify="{red}Edyrem: {white}Ooooh Who lives in a pineapple under the sea..."}, -- Wirt's Leg
		{code="ass",notify="{red}Edyrem: {white}My precious~~"}, -- Book of Skill
		{code="hst",location={"equipped","onground"},notify="{red}Edyrem: {white}Why would you do that?"}, -- Horadric Staff
		{code="j34",notify="{red}Edyrem: {white}Is that an Anime Figurine?"}, -- A Jade Figurine
		{code="g34",location="onplayer",notify="{red}Edyrem: {white}Pfff, a waste of Gold. Could have been made into a Gold Bar..."}, -- Golden Bird
		{code="g33",notify="{red}Edyrem: {white}Don't even dare pointing that at me!"}, -- The Gidbinn
		{code="bbb",notify="{red}Edyrem: {white}MY TACO RECIPE! So that's where I put it..."}, -- Lam Esen's Tome
		{code="xyz",location="onplayer",notify="{red}Edyrem: {white}If only we could mass produce that D:"}, -- Potion of life
		{code="hfh",notify="{red}Edyrem: {white}We have a bad feeling about this -_-"}, -- Hellforge Hammer
		{code="vps",notify="{red}Edyrem: {white} o7"}, -- Energy Drink notify
    }
}