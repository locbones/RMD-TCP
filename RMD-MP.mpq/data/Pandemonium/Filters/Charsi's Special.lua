--- Filter Title:Charsi's Special
--- Filter Type: General use with 9 filter levels.
--- Filter Description:Filter designed as universally suitable for all, starting, intermediate and demanding players with Lite, Intermediate and Aggressive filter levels that are cycled between at-will in-game.\nAs of now, filter has 9 different levels, with 3 main ones that later divide into "Hunter" and "Grail" sub-levels:\n-Lite (levels 1/2/3):\nFor new players or those that do not want any filtering at all. These levels do not hide anything besides ID/TP Scroll drops and really low gold piles, to minimize amount of items hidden and at the same time reduce screen clutter that can get little out of hand in the mod.\n-Intermediate (levels 4/5/6):\nFor players that want to get rid of some of most the more useless bases and all magic (blue) items, while still seeing most of the drops. Hides (in Hell only), all normal rarity, not-superior armor bases and normal rarity weapons unless they have a good roll of "buff duration" Superior (for CTA purposes). Now you can farm /p20 Cows without the hear of overloading your screen with loot until it starts being hidden by the game (given that the gold is picked up).\n-Aggressive (levels 7/8/9):\nFor those that don't want to see both magic and rare items and don't want to see any bases unless they are useful in some capacity. These levels have complex filtering system that might make the game look quite... "empty".\n-Six levels (2,3,5,6,8 and 9) contain "HUNTER":\nTells you which set item is from, while on ground and not identified yet.\n-Three levels (3,6 and 9) contain "Grail" functionality:\nIt will send chat notify and add Grail text on top of items name if said item was not collected yet in any shared stash tab (list updates upon making new game session).\nNo items are hidden in tows. Filter does not hide any Runewords, Set, Unique or other items of any value.\nBig part of the filter are also QoL options like styles for loot, general tips on some items or expanding some item descriptions with additional information.\nFilter supports "Filter Sounds" as well, which as of right now, need to be installed manually. For both instructions on that as well as sounds themselves, you can find it in our discord in "loot-filters" channel.\nMade by: Vivasen
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Charsi's%20Special.lua

return {
filter_level = 1,
filter_titles = {"Lite","Lite + Hunter","Lite + Hunter + Grail","Intermediate","Intermediate + Hunter","Intermediate + Hunter + Grail","Aggressive","Aggressive + Hunter","Aggressive + Hunter + Grail"}, -- Names for Filter Levels, from 1-4 in order
reload = "{gold}Charsi's Special ({yellow}v2.1.3{gold}) {Green}Reloaded", -- Filter reload message.
allowOverrides = true, -- Necessary, do not turn off.
audioVoice = 0, -- Choice of voice for TTS.
audioPlayback = true, -- Turns ON/OFF sounds feature.
    rules = {
        { --Display item levels for weapons, armors, charms, jewels, rings, amulets and arrows/bolts, to the right of item name, (x)
            codes = "allitems",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 5, 6, 10, 12, 45, 50, 58, 82, 83, 84 },
            suffix = " ({ilvl})",
        },

		--{codes=NOT{"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {orange}-{code}"},  -- DEBUG - Show item code
		--{codes=NOT{"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {blue}-{index}"}, -- DEBUG - Show item index
		--{codes={"cm1", "b66", "cm2","cm3","z00","z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","Z96","Z97","Z98","Z99","z19","z20","z21","z22","z23","z24","z25","z26","z27","Z88","Z89","Z90","Z91","Z92","Z93","Z93","Z94","Z95"},location={"onground", "onplayer", "atvendor", "equipped"},prefix_desc=" {orange}[{code}]"},  -- DEBUG - Show item code for charms/enhancements
		--{codes={"cm1","cm2","cm3","z00","z01","z02","z03","z04","z05","z06","z07","z08","z09","z10","z11","z12","z13","z14","z15","z16","z17","z18","Z96","Z97","Z98","Z99","z19","z20","z21","z22","z23","z24","z25","z26","z27","Z88","Z89","Z90","Z91","Z92","Z93","Z93","Z94","Z95"},location={"onground", "onplayer", "atvendor", "equipped"},prefix_desc=" {blue}[{index}]\n"}, -- DEBUG - Show item index for charms/enhancements
		
		
		--																	      			         	BASES - misc + Lite
		
		{ -- Suffix for potentially great bases while leveling - Normal
			codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9" },
			quality = "3",
			sockets = "2+",
			difficulty = "Normal",
			runeword = false,
			pstat = { index = 12, op = "<", value = 80 },
			suffix = "{yellow}[Good?]"
		},
		{ -- Suffix for potentially great bases while leveling - Nightmare
			codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9" },
			quality = "3",
			sockets = "3+",
			difficulty = "Nightmare",
			runeword = false,
			pstat = { index = 12, op = "<", value = 80 },
			suffix = "{yellow}[Good?]"
		},
		{ -- Display decently rolled STR% Strong and Mighty Belt bases (max 2os)
			codes = { "Bb2", "Bb1" },
			quality = "3-",
			stat = { index = 262, op = ">=", value = 10 },
			suffix = "{yellow} [{stat=(262)}%% STR]"
		},
		{ -- Display decently rolled FRW% Bladed Boots and Combat Kicks bases (max 3os)
			codes = { "Ab3", "Ab2" },
			quality = "3-",
			stat = { index = 96, op = ">=", value = 14 },
			suffix = "{yellow} [{stat=(96)}%% FRW]"
		},
		{ -- Display decently rolled AR% Amazon Circlet bases (max 3os)
			codes = { "Zc1", "Zc2", "Zc3" },
			quality = "3-",
			stat = { index = 119, op = ">=", value = 29 },
			suffix = "{yellow} [{stat=(119)} AR%%]"
		},
		{ -- Display good rolled DEX/LVL Amazon Gloves bases (max 3os)
			codes = { "Ag1", "Ag2", "Ag3" },
			quality = "3-",
			stat = { index = 221, op = "==", value = 5 },
			suffix = "{yellow} [Good Dex/lvl]"
		},
		{ -- Display best rolled DEX/LVL Amazon Gloves bases (max 3os)
			codes = { "Ag1", "Ag2", "Ag3" },
			quality = "3-",
			stat = { index = 221, op = "==", value = 6 },
			suffix = "{yellow} [Best Dex/lvl]"
		},
		{ -- Display decently rolled FCR% Sorceress Gloves bases (max 3os)
			codes = { "Vg1", "Vg2", "Vg3" },
			quality = "3-",
			stat = { index = 105, op = ">=", value = 21 },
			suffix = "{yellow} [{stat=(105)}%% FCR]"
		},
		{ -- Display perf rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = { "drb", "drf", "dr6" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 3, param = 41 },
			suffix = "{yellow} [3 to Blaze Wolf]"
		},
		{ -- Display perf rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = { "dre", "dr9", "dr4" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 3, param = 42 },
			suffix = "{yellow} [3 to Frost Bear]"
		},
		{ -- Display decently rolled Raven Damage Druid Helmet bases (max 3os)
			codes = { "drc", "dr7", "dr2" },
			quality = "3-",
			stat = { index = 403, op = ">=", value = 180 },
			suffix = "{yellow} [{stat=(403)} Raven Damage]"
		},
		{ -- Display +3 LF Amazon Javs bases (max 3os)
			codes = { "amf", "ama", "am5" },
			quality = "3-",
			stat = { index = 107, op = "==", value = 3, param = 35 },
			suffix = "{yellow} [3 LF]"
		},
		{ -- Display good rolled Assassin Katanas bases (max 4os)
			codes = { "72h", "92h", "k03" },
			quality = "3-",
			stat = { index = 427, op = ">=", value = 40 },
			suffix = "{yellow}[{stat=(427)}%% Buff]"
		},
		{ -- Display perf rolled Necro Shield bases (max 4os)
			codes = { "nea", "nef", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 3, param = 18 },
			suffix = "{yellow}[+3 Summoning]"
		},
		{ -- Display decently rolled Pally Shield bases (max 4os)
			codes = { "pac", "pab", "pad", "pae", "paf" },
			quality = "3-",
            stat = { {index = 39, op = ">=", value = 35}, {index = 41, op = ">=", value = 35}, {index = 43, op = ">=", value = 35}, {index = 45, op = ">=", value = 35} },
			suffix = "{yellow} [{stat=(45)}%% All Res]"
		},
		{ -- Display good rolled Enlightened Plate bases (max 4os)
			code = "Bp3",	
			quality = "3-",
            stat = { {index = 39, op = ">=", value = 11}, {index = 41, op = ">=", value = 11}, {index = 43, op = ">=", value = 11}, {index = 45, op = ">=", value = 11} },
			suffix = "{yellow}[{stat=(45)}%% All Res]"
		},
		{ -- Display good rolled Cload/Mantle bases (max 4os)
			codes = { "Ca1", "Ca2", "Ca3" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 3, param = 49 },
			suffix = "{yellow}[+3 Shadow Disciplines]"
		},
		{ -- Display perf rolled Cload/Mantle bases (max 4os)
			codes = { "Ca1", "Ca2", "Ca3" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 4, param = 49 },
			suffix = "{yellow}[+4 Shadow Disciplines]"
		},
		{ -- Display 1 bow skills Elite Bow bases (max 6os)
			codes = { "amc", "amb" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 1, param = 0 },
			suffix = "{yellow} [+1 Bow skills]"
		},
		{ -- Display 2 bow skills Elite Bow bases (max 6os)
			codes = { "amc", "amb" },
			quality = "3-",
			stat = { index = 188, op = "==", value = 2, param = 0 },
			suffix = "{yellow} [+2 Bow skills]"
		},
		{ -- Display 2 Pala skills War Scepter, Caduceous and Divine Scepter bases
			codes = { "wsp", "7ws", "9ws" },
			quality = "3-",
			stat = { index = 83, op = "==", value = 2, param = 3 },
			suffix = "{yellow} [+2 Paladin skills]"
		},
		{ -- Display 3 Pala skills War Scepter, Caduceous and Divine Scepter bases
			codes = { "wsp", "7ws", "9ws" },
			quality = "3-",
			stat = { index = 83, op = "==", value = 3, param = 3 },
			suffix = "{yellow} [+3 Paladin skills]"
		},
		{ -- Display >=120% Summon Damage Necro Sickle bases (max 6os)
			codes = { "7mp", "9mp", "mpi" },
			quality = "3-",
			stat = { index = 281, op = ">=", value = 120 },
			suffix = "{yellow} [{stat=(281)}%% Summon Damage]"
		},
		{ -- Display >=4% Life Leech Bloodletting Sword base (max 6os)
			code = "Bf6",
			quality = "3-",
			stat = { index = 60, op = ">=", value = 4 },
			suffix = "{yellow} [{stat=(60)}%% LL]"
		},		
		
		
		
		--																	      			         	BASES - Intermediate
		
		{ -- Hides all 1 socket bases (does not include LB bases) in Normal and Nightmare when clvl is below 80 - Intermediate
			codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9" },
			quality = "3-",
			sockets = "1",
			runeword = false,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Normal,Nightmare",
			filter_levels = "4,5,6",
			pstat = { index = 12, op = "<", value = 80 },
			hide = true
		},
		{ -- Hide all normal weapons unless they are good roll of "buff duration" Superior (for CTA purposes) - Hell only, Intermediate
			codes = NOT { "j34", "jew", "qey", "g34", "xyz", "bks", "leg", "hdm", "ass", "msf", "hst", "vip", "box", "g33", "qbr", "bbb", "qhr", "qf1", "qf2", "mss", "hfh", "ice", "tr2", "BoH", "std", "B01", "B02", "B03" },
			itype = 45,
			rarity = 0,
			quality = "3-",
			difficulty = "Hell",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			runeword = false,
			filter_levels = "4,5,6",
			stat = { index = 427, op = "<", value = 18},
			hide = true
		},
		{ -- Hide all normal, not-superior armor bases - Hell only, Intermediate
			codes = NOT { "j34", "jew", "qey", "g34", "xyz", "bks", "leg", "hdm", "ass", "msf", "hst", "vip", "box", "g33", "qbr", "bbb", "qhr", "qf1", "qf2", "mss", "hfh", "ice", "tr2", "BoH", "std", "B01", "B02", "B03" },
			itype = 50,
			rarity = 0,
			quality = "2",
			difficulty = "Hell",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			runeword = false,
			filter_levels = "4,5,6",
			hide = true
		},
		
		--																	      			         	BASES - Aggressive
		
		{ -- Hides all unwanted bases (max 2os)
			codes = { "Bb3", "cap", "uhc", "utc", "uvc", "ztb", "zlb", "zmb", "zvb", "zhb", "mbl", "tbl", "vbl", "hbl", "lbl", "xlb", "lbt", "mbt", "vbt", "Ag1", "Ag3", "xlg", "mgl", "vgl", "lgl", "xap", "hlm", "skp", "xuc", "xml", "buc", "sml", "Wp2", "Gg2", "Gg1", "Wp1", "Na1", "Sa1", "Sa2", "hla", "lea", "qui", "stu", "ces", "ktr", "jav", "pil", "7dg", "7di", "9dg", "9di", "dgr", "dir", "obd", "obc", "obb", "obe", "ob8", "ob7", "ob6", "ob9", "ob4", "ob1", "ob2", "ob3", "7ta", "9ta", "tax", "7tk", "7bk", "9tk", "9bk", "bkf", "tkf", "7yw", "7bw", "7wn", "7gw", "9wn", "9gw", "9yw", "9bw", "bwn", "gwn", "wnd", "ywn" },
            quality = "3-",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide badly rolled STR% Strong and Mighty Belt bases (max 2os)
			codes = { "Bb2", "Bb1" },
			quality = "3-",
			stat = { index = 262, op = "<", value = 10 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hides leftover (non-superior) bases (max 2os)
			codes = { "umc", "ulc" },
            quality = "2",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hides all unwanted bases (max 3os)
			codes = { "utb", "7cl", "uhb", "xtb", "8ss", "6ss", "sst", "xmb", "xvb", "xhb", "tbt", "Ab1", "utg", "uhg", "xtg", "xmg", "xvg", "xhg", "hgl", "bae", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba2", "ba3", "ba1", "drd", "dr8", "dra", "dr3", "dr5", "dr1", "ulm", "urn", "uhl", "ukp", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "ne1", "ne2", "ne6", "ne7", "uuc", "xsh", "bsh", "lrg", "spk", "Na2", "Na3", "Sa3", "xla", "xui", "xea", "brs", "chn", "ltp", "rng", "scl", "7ha", "9ha", "hax", "sbw", "7sp", "spc", "clb", "9cl", "7cs", "9sp", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "k02", "k01", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9sm", "9ss", "9sb", "9fc", "flc", "sbr", "scm", "ssd", "wsd" },
            quality = "3-",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide badly rolled FRW% Bladed Boots and Combat Kicks bases (max 3os)
			codes = { "Ab3", "Ab2" },
			quality = "3-",
			stat = { index = 96, op = "<", value = 14 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled AR% Amazon Circlet Superior bases (max 3os)
			codes = { "Zc1", "Zc2", "Zc3" },
			quality = "3-",
			stat = { index = 119, op = "<", value = 29 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			code = "Ag2",
			quality = "3-",
			stat = { index = 221, op = "<", value = 5 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled FCR% Sorceress Gloves Superior bases (max 3os)
			codes = { "Vg1", "Vg2", "Vg3" },
			quality = "3-",
			stat = { index = 105, op = "<", value = 21 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = { "drb", "drf", "dr6" },
			quality = "3-",
			stat = { index = 188, op = "<", value = 3, param = 41 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = { "dre", "dr9", "dr4" },
			quality = "3-",
			stat = { index = 188, op = "<", value = 3, param = 42 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Raven Damage Druid Helmet bases (max 3os)
			codes = { "drc", "dr7", "dr2" },
			quality = "3-",
			stat = { index = 403, op = "<", value = 180 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide NOT +3 LF Amazon Javs bases (max 3os)
			codes = { "amf", "ama", "am5" },
			quality = "3-",
			stat = { index = 107, op = "<", value = 3, param = 35 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hides leftover (non-superior) bases (max 3os)
			codes = { "hbt", "tgl", "umb", "uvb", "ulb", "ci3", "ci2", "ci0", "ci1", "ulg", "uvg", "umg", "bab", "bad", "uh9", "usk", "uap" },
            quality = "2",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hides all unwanted bases with max 4os
			codes = { "pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "uml", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "tow", "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Bp2", "Bp1", "upl", "uhn", "ung", "uui", "urs", "ult", "uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl", "xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8ls", "8cs", "8bs", "bst", "cst", "lst", "bsw", "Bf4", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp" },
            quality = "3-",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide badly rolled Assassin Katanas bases (max 4os)
			codes = { "72h", "92h", "k03" },
			quality = "3-",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			stat = { index = 427, op = "<", value = 40 },
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Necro Shield bases (max 4os)
			codes = { "nea", "nef", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3" },
			quality = "3-",
			stat = { index = 188, op = "<", value = 3, param = 18 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Pala Shield bases (max 4os)
			codes = { "pac", "pab", "pad", "pae", "paf" },
			quality = "3-",
            stat = { index = 43, op = "<", value = 35 },
            stat = { index = 45, op = "<", value = 35 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Enlightened Plate Superior bases (max 4os)
			code = "Bp3",	
			quality = "3-",
            stat = { {index = 39, op = "<", value = 11}, {index = 41, op = "<", value = 11}, {index = 43, op = "<", value = 11}, {index = 45, op = "<", value = 11} },
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide badly rolled Cloak/Mantle Superior bases (max 4os)
			codes = { "Ca1", "Ca2", "Ca3" },
			quality = "3-",
			stat = { index = 188, op = "<=", value = 2, param = 49 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hides leftover (non-superior) bases (max 4os)
			codes = { "urg", "uit", "kit", "utp" },
            quality = "2",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hides all unwanted bases with max 5os
			codes = { "axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "scy", "9b8" },
            quality = "3-",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hides leftover (non-superior) bases (max 5os)
			code = "6lx",
            quality = "2",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hides all unwanted bases with max 6os
			codes = { "Bm1", "8ws", "wst", "Bm2", "Bm3", "Bf2", "Bf1", "7ga", "7bt", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "8hx", "hxb", "Bm7", "Bm8", "Bm9", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "7vo", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "6ws", "7p7", "9h9", "7wc", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "9wc", "9s8", "wsc", "7s8", "ame", "amd", "am9", "am8", "am4", "am3", "Ds1", "Ds2", "Ds3", "Bf5", "Bm4", "Bm5", "Bm6", "7gd", "7fb", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "9cr", "crs" },
            quality = "3-",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide NOT 1/2 bow skills Grand Matron Bow or Matrialchal Bow Superior bases (max 6os)
			codes = { "amc", "amb" },
			quality = "3-",
			stat = { index = 188, op = "<", value = 1, param = 0 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide NOT 2/3 Pala skills War Scepter, Caduceous and Divine Scepter bases (max 5/6os)
			codes = { "wsp", "7ws", "9ws" },
			quality = "3-",
			stat = { index = 83, op = "<", value = 2, param = 3 },
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide <120% Summon Damage Necro Sickle bases (max 6os)
			codes = { "7mp", "9mp", "mpi" },
			quality = "3-",
			stat = { index = 281, op = "<", value = 120 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide <4% Life Leech Bloodletting Sword base (max 6os)
			code = "Bf6",
			quality = "3-",
			stat = { index = 60, op = "<", value = 4 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide <15% Deadly Strike Hellforged Axe base (max 6os)
			code = "Bf3",
			quality = "3-",
			stat = { index = 141, op = "<", value = 15 },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Display >=15% Deadly Strike Hellforged Axe base (max 6os)
			code = "Bf3",
			quality = "3-",
			stat = { index = 141, op = ">=", value = 15 },
			suffix = "{yellow} [{stat=(141)}%% Deadly]"
		},
		{ -- Hides leftover (non-superior) bases (max 6os)
			codes = { "Bf3", "7wa", "72a", "6hx", "9fl", "7pa", "7cr", "7b8" },
            quality = "2",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			runeword = false,
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide all Indestructible/EtH Armor Bases (gets rid of indest/eth superior)
			codes = "allitems",
			quality = "3",
			ethereal = true,
			itype = 50,
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword = false,
			pstat = {index = 152, op = "==", value = 0},
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hides all 0 socket not superior bases (does not include LB bases) in Normal and Nightmare when clvl is below 80 - aggressive only
			codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9" },
			quality = "2",
			sockets = "0",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Normal,Nightmare",
			runeword = false,
			pstat = { index = 12, op = "<", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},

		
		--                                                                                           "Limit Broken" Bases
		
		{ -- Notify about LB bases
			codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17", "l18" },
			quality = "3-",
			notify = "LB Base: {name}"
		},
		{ -- Magic LB items - for crafting - description
			codes = { "l07", "l08", "l09", "l10", "l11", "l12" },
			quality = "4",
			location = { "onplayer", "atvendor", "equipped" },
			prefix_desc = "{orange}LB items can have more than normal max sockets (means a lot of Lems for GF)\n{red}Trash, but nice for crafting with purpose of Gold Find Items\n"
		},
		
		

		
		
		--													                                               MAGIC
		
		{ -- Hides all magic items (does not include LB bases for crafting, jewels and S/L/G charms) from clvl 30 above Normal - Intermediate and Aggressive
			codes = { "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l13", "l14", "l15", "l16", "l17", "l18" },
			quality = "4",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			pstat = { index = 12, op = ">=", value = 30 },
			filter_levels = "4,5,6,7,8,9",
			hide = true
		},
		{ -- Hide Magic Ring/Amulet at clvl 100+ in Hell (shown earlier for crafting reasons) - Intermediate
			codes = { "rin", "amu" },
			quality = "4",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			pstat = { index = 12, op = ">=", value = 100 },
			filter_levels = "4,5,6",
			hide = true
		},
		{ -- Hide Magic Ring/Amulet in Hell (shown earlier for crafting reasons) - Aggressive
			codes = { "rin", "amu" },
			quality = "4",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hides magic Large Charms, Intermediate and Aggressive
			code = "cm2",
			quality = "4",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			pstat = { index = 12, op = ">=", value = 30 },
			filter_levels = "4,5,6,7,8,9",
			hide = true
		},
	
		
		
		
		
				--													                                         RARE
		{ -- Hides all rare items, besides Jewels - Hell only, Aggressive
			codes = { "rin", "amu", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17", "l18" },
			quality = "6",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			pstat = { index = 12, op = ">=", value = 80 },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide all rare, normal rarity weapons - Hell only, Intermediate
			codes = "allitems",
			itype = 45,
			rarity = 0,
			quality = "6",
			difficulty = "Hell",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			runeword = false,
			filter_levels = "4,5,6",
			hide = true
		},
		
		
		
		
		
		--													                                                ARROWS and BOLTS
		{ -- Hides all magic and rare arrows/bolts - Hell only, Intermediate and Aggressive
			codes = { "aqv", "cqv" },
			quality = { "4", "6" },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "4,5,6,7,8,9",
			hide = true
		},
		{ -- Hides all magic arrows/bolts - NM, Aggressive
			codes = { "aqv", "cqv" },
			quality = "4",
			difficulty = "Nightmare",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "7,8,9",
			hide = true
		},
		{ -- Hide white arrows/bolts at all times - Intermediate and Aggressive
			codes = { "aqv", "cqv" },
			quality = "2",
			filter_levels = "4,5,6,7,8,9",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			hide = true
		},
		
		
		
		
		
		--													                                                 MISC and STYLES


		{ -- Hide gold drops under 10 for Normal difficulty besides first half of A1 - All Levels
			code = "gld",
            stat = { index = 14, op = "<", value = 10 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath", "Blood Moor", "Cold Plains", "Stony Field", "Dark Wood", "Den Of Evil", "Cave Level 1", "Underground Passage Level 1", "Cave Level 2", "Underground Passage Level 2", "Burial Grounds", "Crypt", "Mausoleum" },
			difficulty = "Normal",
            hide = true
        },
		{ -- Demonic Milk - onplayer
			code = "CW1",
			location = { "onplayer", "atvendor", "equipped" },
			prefix_desc = "{gray}Oh heavens, the smell...\n"
		},
		{ -- Wirt's Another Leg - onground
			code = "CW2",
			notify = "{red}Edurem{white}: Wait, there is another one?"
		},
		{ -- Wirt's Another Leg - onplayer
			code = "CW2",
			location = { "onplayer", "atvendor", "equipped" },
			prefix_desc = "{gray}Hmm, maybe there is an arm somewhere.\n"
		},
		{ -- Hide gold drops under 50 for Nightmare difficulty - Lite
			code = "gld",
            stat = { index = 14, op = "<=", value = 49 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare",
			filter_levels = "1,2,3",
            hide = true
        },
		{ -- Hide gold drops under 200 for Hell difficulty - Lite
			code = "gld",
            stat = { index = 14, op = "<=", value = 199 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "1,2,3",
            hide = true
        },
		{ -- Hide gold drops under 80 in Nightmare difficulty - Intermediate
			code = "gld",
            stat = { index = 14, op = "<=", value = 79 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare",
			filter_levels = "4,5,6",
            hide = true
        },
		{ -- Hide gold drops under 600 in Hell difficulty - Intermediate
			code = "gld",
            stat = { index = 14, op = "<=", value = 599 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "4,5,6",
            hide = true
        },
		{ -- Hide gold drops under 150 in Nightmare - Aggressive
			code = "gld",
            stat = { index = 14, op = "<=", value = 149 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare",
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide gold drops under 1000 in Hell difficulty - Aggressive
			code = "gld",
            stat = { index = 14, op = "<=", value=999 }, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "7,8,9",
            hide = true
        },
		{ -- Hide all Small Charms that aren't either +20 Life, 5% AllRes, 5% CDR or 7% MF - Nightmare + Hell - Aggressive // Thanks, Zexy
			code = "cm1",
			quality = 4,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			filter_levels = "7,8,9",
			stat = { { index = 7, op = "<", value = 20*256 }, { index = 286, op = "<", value = 5 }, { index = 80, op = "<", value = 7 }, { index = 39, op = "<", value = 5 }, { index = 41, op = "<", value = 5 }, { index = 43, op = "<", value = 5 }, { index = 45, op = "<", value = 5 } },  
			hide = true
		},
		{ -- Small charm hiding check - Part 1 - Nightmare + Hell - Aggressive
			code = "cm1",
			quality = 4,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			filter_levels = "7,8,9",
			stat = { { index = 7, op = "<", value = 20*256 }, { index = 286, op = "<", value = 5 }, { index = 80, op = "<", value = 7 }, { index = 39, op = ">=", value = 5 }, { index = 41, op = "<=", value = 1 } },
			hide = true
		},
		{ -- Small charm hiding check - Part 2 - Nightmare + Hell - Aggressive
			code = "cm1",
			quality = 4,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			filter_levels = "7,8,9",
			stat = { { index = 7, op = "<", value = 20*256 }, { index = 286, op = "<", value = 5 }, { index = 80, op = "<", value = 7 }, { index = 41, op = ">=", value = 5 }, { index = 43, op = "<=", value = 1 } },
			hide = true
		},
		{ -- Small charm hiding check - Part 3 - Nightmare + Hell - Aggressive
			code = "cm1",
			quality = 4,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			filter_levels = "7,8,9",
			stat = { { index = 7, op = "<", value = 20*256 }, { index = 286, op = "<", value = 5 }, { index = 80, op = "<", value = 7 }, { index = 43, op = ">=", value = 5 }, { index = 45, op = "<=", value = 1 } },
			hide = true
		},
		{ -- Small charm hiding check - Part 4 - Nightmare + Hell - Aggressive
			code = "cm1",
			quality = 4,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Nightmare,Hell",
			filter_levels = "7,8,9",
			stat = { { index = 7, op = "<", value = 20*256 }, { index = 286, op = "<", value = 5 }, { index = 80, op = "<", value = 7 }, { index = 45, op = ">=", value = 5 }, { index = 39, op = "<=", value = 1 } },
			hide = true
		},
		{ -- Style for Magic Jewels
			code = "jew",
			quality = "4",
			border = { 115, 115, 255, 170, 1 },
			background = { 1, 1, 17, 255 }
		},
		{ -- Style for Rare Jewels
			code = "jew",
			quality = "6",
			border = { 255, 255, 105, 190, 1 }
		},
		{ -- Style for Magic Small/Large/Grand Charms
			codes = {"cm1", "cm2", "cm3"},
			quality = "4",
			border = { 178, 0, 255, 160, 1 },
			background = { 7, 0, 12, 230 }
		},
		{ -- Display the max socket amount on items in their description
			codes = "allitems",
			location = { "onground", "onplayer", "atvendor", "equipped" },
			itype = { 45, 50, 10, 12 },
			suffix_desc = "Max Sockets: {maxsock}\n"
		},
		{ -- Notify for LB Uniques
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
			quality = 7,
            itype = { 45, 50 },
            notify = "{red}Unique LB item dropped!"
        },
        { -- Hides id/tp scroll drops at all times
            codes = { "tsc", "isc" },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Hides all potion drops besides full rejuvs from clvl 90 in Hell - Lite and Intermediate
            codes = { "hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs" },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "1,2,3,4,5,6",
			pstat = { index = 12, op = ">=", value = 90 },
            hide = true
        },
        { -- Hides all potion drops besides any rejuvs at all times- Aggressive
            codes = { "hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5" },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "7,8,9",
            hide = true
        },
        { -- Hides small rejuv drops after clvl 90 - Aggressive
            code = "rvs",
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "7,8,9",
			pstat = { index = 12, op = ">=", value = 90 },
            hide = true
        },
		{ -- Style for Unique items
            codes = "allitems",
            quality = "7",
            border = { 165, 146, 99, 220, 1 } 
        },
		{ -- Style for Set items
            codes = "allitems",
            quality = "5",
            border = { 0, 255, 0, 190, 1 } 
        },
		{ -- High Runes notification and border
            codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "{orange}High Rune Nearby: {name}",
			border = { 255, 170, 0, 230, 1 } 
        },
		{ -- Style for Item UpConverters
			codes = { "u00", "u01", "u02" },
			background_style = "VerdantBloom"
		},
		{ -- Style for Codex
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58", "a59", "a60", "a61", "a62", "a63", "a64", "a65" },
            notify = "Seven Sins: {name}",
            background_style = "SapphireSonnet"
        },
		{ -- EEE Notify
			code = "a66",
			notify = "{red}VERY {white}important item on ground!"
		},
		{ -- Ultra Runes notification and style
            codes = { "r34", "r35", "r36" },
            background_style = "OceanDrift",
            notify = "{orange}Ultra Rune Nearby: {name}",
        },
		{ -- ID/TP Tomes, Cube and Key notify and style
			codes = {"tbk", "ibk", "key", "box","y34","y35","y36","y37","y38","y39","y40"},
			notify = "{white}Are you sure you want to leave it?",
			border = { 255, 133, 255, 190, 1 },
			prefix = "{pink}"
		},
		{ -- ID/TP Tomes Style
			codes = { "tbk", "ibk" },
			location = { "onplayer", "atvendor" },
			prefix = "{pink}"
		},
		{ -- Style for Beacon of Hope
			code = "BoH",
			notify = "{yellow}Important Item: {gold}{name}\n{red}Edyrem:{white} Is that a... bacon?"
		},
		{ -- Border for Superior 0os non-eth Bases
			codes = "allitems",
			quality = "3",
			sockets = "0",
			ethereal = false,
			border = { 236, 236, 237, 180, 1 }
		},
		{ -- Border for Superior 1+os non-eth Bases
			codes = "allitems",
			quality = "3",
			sockets = "1+",
			border = { 114, 114, 114, 230, 1 }
		},
		{ -- Border for Superior eth Bases
			codes = "allitems",
			quality = "3",
			ethereal = true,
			sockets = "0",
			border = { 81, 164, 227, 180, 1 }
		},
		{ -- Scroll of Torment border
			codes = { "K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80" },
			border = { 0, 130, 0, 220, 1 }
		},
		{ -- Ramaladni's Gift, Socket Remover, Soul Shards and Gem Vein style
			codes = { "Rgx", "b64","S01", "y33" },
			border = { 7, 167, 222, 230, 1 },
			name_style = "Cotton Candy"
		},
		{ -- Style for Scroll of Triumph
			code = "a06",
			notify = "{red}???: {white}Are ya winning son?\n{gold}[Game] {red}Edyrem: {white}Yes, dad.",
			name_style = "Christmas",
			border = { 0, 35, 255, 80, 3 },
		},
		{ -- Style for Gold
			code = "gld",
			border = { 230, 255, 70, 165, 1 },
			name_override = "{white}{name}{yellow}g"
		},
		{ -- Hide all Low Runes from clvl 90, Hell - Intermediate and Aggressive
			codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11" },
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			difficulty = "Hell",
			filter_levels = "4,5,6,7,8,9",
			pstat = { index = 12, op = ">=", value = 90 },
			hide = true
		},
		{ -- Display socket count number of all socketed, identified items. onground only
			codes = "allitems",
			sockets = "1+",
			identified = true,
			suffix = "{turquoise}[{sockets}]"
        },
		{ -- Style for Demon Tempered Items
			codes = "allitems",
			quality = "9",
			border = { 117, 38, 19, 230, 2 },
			notify = "{red}Demon Tempered item on ground!"
		},
		{ -- Style for Facets
            code = "jew",
            quality = 7,
            notify = "{red}Rainbow Facet Nearby!",
            name_style = "Rainbow",
            border = { 255, 0, 0, 230, 1 } 
        },
		{ -- Style for Prismatic Facets
            code = "j00",
			index = 610,
            quality = 7,
            notify = "{red}Prismatic Facet Nearby!",
            name_style = "Rainbow",
            border = { 255, 0, 0, 230, 1 } 
        },
		{ -- Style for Premium Socket Remover
			code = "b65",
			notify = "{red}Are you sure?",
			name_override = "Premium Socket Remover",
			border = { 7, 167, 222, 170, 1 },
			name_style = "Cotton Candy"
		},
		{ -- Infinite Premium Socket Remover, name change, onground
			code = "b66",
			notify = "{red}Are you sure?",
			name_override = "Infinite Socket Remover",
			border = { 7, 167, 222, 170, 1 },
			name_style = "Cotton Candy"
		},
		{ -- Infinite Premium Socket Remover, name change and additional info, onplayer
			code = "b66",
			name_override = "{gold}Infinite Premium Socket Remover",
			prefix = "{gray}Not consumed upon use\n",
			location = { "onplayer", "atvendor", "equipped" }
		},
		{ -- Style for Uber Keys/Organs
			codes = { "pk1", "pk2", "pk3", "dhn", "bey", "mbr" },
			border = { 236, 121, 115, 215, 2 }
		},
		{ -- Style for Demon Tempering Body Parts
			codes = { "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26"," C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37" },
			background_style = "TamarilloGlow"
		},
		{ -- Display RMD "Elite Bases" with a special EB icon, to the left of item name
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ⅲ "
        },
		{ -- Change EB sign on DTs to match color of item name
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
			quality = 9,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "{dark green}"
        },
        { -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - normal bases
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
			sockets = "0",
			quality = "3-",
			ethereal = false,
            itype = { 45, 50 },
			border = { 237, 76, 76, 190, 1 },
            prefix = "{red}ⅳ{white} "
        },
		{ -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - eth bases
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
			quality = "3-",
			sockets = "0",
			ethereal = true,
            itype = { 45, 50 },
            prefix = "{red}ⅳ{turquoise} "
        },
		{ -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - socketed bases
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
			sockets = "1+",
			quality = "3-",
            itype = { 45, 50 },
            prefix = "{red}ⅳ{gray} "
        },
		{ -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - magic
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
			quality = 4,
            itype = { 45, 50 },
            prefix = "{red}ⅳ{blue} "
        },
		{ -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - unique
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
			quality = 7,
            itype = { 45, 50 },
            prefix = "{red}ⅳ{gold} "
        },
		{ -- Rename for Ultra Enhancement Crystals 1
			codes = { "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27" },
			notify = "Valuable Item: {red}Ultra Enhancement",
			background_style = "TamarilloGlow",
			name_override = "{gold}Ultra Enhancement Crystal"
		},
		{ -- Rename for Ultra Enhancement Crystals 2
			codes = { "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27" },
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Ultra Enhancement Crystal ({tan}1 Use Per Item{gold})"
		},
		{ -- Rename for High Enhancement Crystals 1
			codes = { "z00", "z01", "z02", "z03", "z04", "z05", "z06", "z07", "z08", "z09", "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "Z96", "Z97", "Z98", "Z99" },
			name_override = "{gold}High Enhancement Crystal"
		},
		{ -- Rename for High Enhancement Crystals 2
			codes = { "z00", "z01", "z02", "z03", "z04", "z05", "z06", "z07", "z08", "z09", "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "Z96", "Z97", "Z98", "Z99" },
			location = { "onplayer", "atvendor" },
			name_override = "{gold}High Enhancement Crystal ({tan}1 Use Per Item{gold})"
		},
		{ -- Rename for Mid Enhancement Crystals 1
			codes = { "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z93", "Z94", "Z95" },
			name_override = "{gold}Mid Enhancement Crystal"
		},
		{ -- Rename for Mid Enhancement Crystals 2
			codes = { "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z93", "Z94", "Z95" },
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Mid Enhancement Crystal ({tan}10 Uses Per Item{gold})"
		},
		{ -- Rename for Low Enhancement Crystals 1
			codes = { "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "Z80", "Z81", "Z82", "Z83", "Z84", "Z85", "Z86", "Z87" },
			name_override = "{gold}Low Enhancement Crystal"
		},
		{ -- Rename for Low Enhancement Crystals 2
			codes = { "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "Z80", "Z81", "Z82", "Z83", "Z84", "Z85", "Z86", "Z87" },
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Low Enhancement Crystal ({tan}Unlimited Uses{gold})"
		},
		{ -- Onground display for Amethyst Remover
			code = "Z02",
			name_override = "{purple}Amethyst {gold}Remover"
		},
        { -- Onground display for Topaz Remover
			code = "Z03",
			name_override = "{yellow}Topaz {gold}Remover"
		},
        { -- Onground display for Sapphire Remover
			code = "Z04",
			name_override = "{blue}Sapphire {gold}Remover"
		},
        { -- Onground display for Emerald Remover
			code = "Z05",
			name_override = "{green}Emerald {gold}Remover"
		},
        { -- Onground display for Ruby Remover
			code = "Z06",
			name_override = "{red}Ruby {gold}Remover"
		},
        { -- Onground display for Diamond Remover
			code = "Z07",
			name_override = "{white}Diamond {gold}Remover"
		},
        { -- Onground display for Skull Remover
			code = "Z08",
			name_override = "{gray}Skull {gold}Remover"
		},
		{ -- Unholy Commander name color fix, not identified and onground
			code = "cm3",
			index = 590,
			identified = false,
			notify = "{gold}Unique: Grand Charm",
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Unholy Commander name color fix, not identified, other locations
			code = "cm3",
			index = 590,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Blank Talent name color fix, not identified and onground
			code = "cm3",
			index = 611,
			identified = false,
			notify = "{gold}Unique: Grand Charm",
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Blank Talent name color fix, not identified, other locations
			code = "cm3",
			index = 611,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Gheed's Fortune name color fix, not identified and onground
			code = "cm3",
			index = 542,
			identified = false,
			notify = "{gold}Unique: Grand Charm",
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Gheed's Fortune name color fix, not identified other locations
			code = "cm3",
			index = 542,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Annihilus name color fix, not identified and onground
			code = "cm1",
			index = 543,
			identified = false,
			notify = "{gold}Unique: Small Charm",
			name_override = "{gold}Small Charm ({ilvl})"
		},
		{ -- Annihilus name color fix, not identified other locations
			code = "cm1",
			index = 543,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Small Charm ({ilvl})"
		},
		{ -- Cola Cube name color fix, not identified and onground
			code = "cm1",
			index = 606,
			identified = false,
			notify = "{gold}Unique: Small Charm",
			name_override = "{gold}Small Charm ({ilvl})"
		},
		{ -- Cola Cube name color fix, not identified other locations
			code = "cm1",
			index = 606,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Small Charm ({ilvl})"
		},
		{ -- Kuroneko no Himitsu name color fix, not identified and onground
			code = "cm3",
			index = 654,
			identified = false,
			notify = "{gold}Unique: Grand Charm",
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Kuroneko no Himitsu name color fix, not identified other locations
			code = "cm3",
			index = 654,
			identified = false,
			location = { "onplayer", "atvendor" },
			name_override = "{gold}Grand Charm ({ilvl})"
		},
		{ -- Healthy Breakfast notify, not identified and onground
			code = "cm1",
			index = 598,
			identified = false,
			notify = "{gold}Unique: Small Charm",
			name_override = "{gold}Small Charm ({ilvl})"
		},
		{ -- Hellfire Torch notify, not identified and onground
			code = "cm2",
			index = 556,
			identified = false,
			location = "onground",
			notify = "{gold}Unique: Large Charm",
			name_override = "{gold}Large Charm ({ilvl})"
		},
		{ -- Soul of Edyrem notify
			code = "m37",
			notify = "{red}Edyrem{white}: . . ."
		},





					--                                                                             Display very good superior rolls
		
		{ -- All Attributes - 15
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 0, op = "==", value = 15}, {index = 1, op = "==", value = 15}, {index = 2, op = "==", value = 15}, {index = 3, op = "==", value = 15} },
			suffix = " {yellow}{stat=(3)} att"
		},
		{ -- All Attributes - 14
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 0, op = "==", value = 14}, {index = 1, op = "==", value = 14}, {index = 2, op = "==", value = 14}, {index = 3, op = "==", value = 14} },
			suffix = " {yellow}{stat=(3)} att"
		},
		{ -- All Attributes - 13
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 0, op = "==", value = 13}, {index = 1, op = "==", value = 13}, {index = 2, op = "==", value = 13}, {index = 3, op = "==", value = 13} },
			suffix = " {yellow}{stat=(3)} att"
		},
		{ -- All Resistances - 10%
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 39, op = "==", value = 10}, {index = 41, op = "==", value = 10}, {index = 43, op = "==", value = 10}, {index = 45, op = "==", value = 10} },
			suffix = " {yellow}{stat=(39)}%% all res"
		},
		{ -- All Resistances - 9%
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 39, op = "==", value = 9}, {index = 41, op = "==", value = 9}, {index = 43, op = "==", value = 9}, {index = 45, op = "==", value = 9} },
			suffix = " {yellow}{stat=(39)}%% all res"
		},
		{ -- Max All Resistance
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { {index = 40, op = "==", value = 5}, {index = 42, op = "==", value = 5}, {index = 44, op = "==", value = 5}, {index = 46, op = "==", value = 5} },
			suffix = " {yellow}5%% max res"
		},
		{ -- Resistance/Immunity pierce
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = OR { { index = { 333, 334, 335, 336 }, op = ">=", value = 9 }, { index = { 187, 189, 190, 191 }, op = ">=", value = 9 } },
			suffix = " {yellow}-{stat=(333)}%%res|-{stat=(187)}%%im"
		},
		{ -- Crushing Blow
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { index = 136, op = ">=", value = 9 },
			suffix = " {yellow}{stat=(136)}%% Crushing"
		},
		{ -- Buff Duration, any weapon with max 5/6 os
			codes = "allitems",
			itype = 45,
			maxsock = "5+",
			quality = "3",
			runeword = false,
			stat = { index = 427, op = ">=", value = 18 },
			suffix = " {yellow}{stat=(427)}%% Buff Dura"
		},
		{ -- FCR
			codes = NOT { "Vg1", "Vg2", "Vg3" },
			quality = "3",
			runeword = false,
			stat = { index = 105, op = ">=", value = 14 },
			suffix = " {yellow}{stat=(105)}%%FCR"
		},
		{ -- IAS
			codes = "allitems",
			quality = "3",
			runeword = false,
			stat = { index = 93, op = ">=", value = 14 },
			suffix = " {yellow}{stat=(93)}%%IAS"
		},



			
		
		--																             Additional/missing prefixes or gameplay tips for various items
		
		{ -- SoJ Dclone note
			code = "rin",
			index = 527,
			location = { "onplayer", "atvendor", "equipped" },
			prefix = "{gray}Can be sold to any vendor in Hell to spawn Dclone{gold}\n"
		},
		{ -- Horadric Staff (credits to Wolfie, mine now hehe)
			code = "hst",
			location = { "onplayer", "equipped" },
			prefix_desc = "{yellow}0   )   []   +   >>   /_\\   0)\nTombs:\n"
		},
		{ -- Upconverter 2 and 3
			codes = { "u01", "u02" },
			location = { "onplayer", "atvendor" },
			prefix = "{red} !!!{white} For {yellow}Rare{white} and {gold}Unique{white} items only{red} !!!\n"
		},
		{ -- Sacret Relics for Demon Tempering - HUNTER
			codes = "allitems",
			quality = "7",
			identified = false,
			index = { 189, 211, 213, 217, 225, 226, 231, 246, 247, 249, 254, 262, 292, 295, 412, 413, 418, 423, 428, 433, 438, 445, 447, 453, 525, 527, 529, 532, 543, 556, 143, 281, 286, 347, 366, 369, 379, 386, 483, 6, 45, 55, 71, 299, 330, 335 },
			filter_levels = "2,3,5,6,8,9",
			location = { "onplayer", "atvendor", "onground" },
			suffix = "{yellow}[DT]"
		},
		{ -- Identify Scroll
			code = "isc",
			location = { "onplayer", "atvendor" },
			prefix = "{grey}ID Scroll + HP potion in NM/Hell = New Beacon\nUsed for re-rolling Unique/Set items\n"
		},
		{ -- Gold Bar Splitter
			code = "GBd",
			location = { "onplayer", "atvendor" },
			prefix = "{grey}Used for splitting stacked {yellow}Gold Bars{white}\n"
		},
		{ -- Token Forger
			code = "TK8",
			location = { "onplayer", "atvendor" },
			name_override = "{grey}Beacon of Hope + X (Summon lvl +1) Class Tokens = Upgraded Summon\nClass Token + Beacon of Hope = Added Soul Summon\nToken Forger + Beacon of Hope (100 Soul Shards) = Class Token{white}\nToken Forger"
		},
		{ -- Starter Pack
			code = "y66",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Visit our discord 'D2R-Modding' for any help if needed :)\n"
		},
		{ -- QoL Bag
			code = "Z01",
			location = { "onplayer", "atvendor" },
			prefix = "{gray}Warning: Jewels will be sacrificed!\nMagic/Rare Jewels, Uber Organ/Keys, Gems\nRunes, Unique/Set cores, Full Rejuvs\n{white}Can store various items such as:\n"
		},
		{ -- Horadric Cube
			code = "box",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{gray}Press Portal icon inside cube to show 'Rift' with rotating recipes/perks inside\nPress Scroll icon inside cube to show recipes and Runewords\n"
		},
		{ -- Premium Socket Remover name fix
			code = "b65",
			location = { "onplayer", "atvendor", "equipped", "onground" },
			name_override = "{gold}Premium Socket Remover"
		},
		
		
		
		
		
		--																                            Monster Body Parts and Vendor Souls
		
		{ -- Andariels Flag
			code = "C00",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Pestilence\n{gold}Used for:\n\n"
		},
		{ -- Anuburaks FLag
			code = "C01",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Baals Flag
			code = "C02",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Deddomers Flag
			code = "C03",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Famine\n{gold}Used for:\n\n"
		},
		{ -- Diablos Flag
			code = "C04",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Rain\n{gold}Used for:\n\n"
		},
		{ -- Duriels Flag
			code = "C05",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Eternity\n{gold}Used for:\n\n"
		},
		{ -- Forsaken Izuals Flag
			code = "C06",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Destruction\n{gold}Used for:\n\n"
		},
		{ -- Gurkas Flag
			code = "C07",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Alacrity\n{gold}Used for:\n\n"
		},
		{ -- Mephistos Flag
			code = "C08",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Queen Syndreds Flag
			code = "C09",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Akaras Soul
			code = "C10",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Mystery{white}, {yellow}Obsession\n{gold}Used for:\n\n"
		},
		{ -- Ancients Soul
			code = "C11",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Ancient's Pledge\n{gold}Used for:\n\n"
		},
		{ -- Baals Soul
			code = "C12",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Blood Ravens Soul
			code = "C13",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Gloom, Amity\n{gold}Used for:\n\n"
		},
		{ -- Forsaken Izuals Soul
			code = "C14",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Griswolds Soul
			code = "C15",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Fortitude\n{gold}Used for:\n\n"
		},
		{ -- Gurkas Soul
			code = "C16",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Izuals Soul
			code = "C17",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Radaments Soul
			code = "C18",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Bone\n{gold}Used for:\n\n"
		},
		{ -- Corpsefires Jawbone
			code = "C19",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Deddomers Jawbone
			code = "C20",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Limit Break II {grey}(Path of the Blacksmith)\n{gold}Used for:\n\n"
		},
		{ -- ??? Griswolds Jawbone
			code = "C21",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- ??? Mephistos Jawbone
			code = "C22",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Deception\n{gold}Used for:\n\n"
		},
		{ -- Radaments Jawbone
			code = "C23",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- ??? Thresh Sockets Jawbone
			code = "C24",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Diablos Horn
			code = "C25",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Duriels Horn
			code = "C26",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Hephastos Horn
			code = "C27",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- The Smiths Horn
			code = "C28",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Thresh Sockets Horn
			code = "C29",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Anuburaks Tail
			code = "C30",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Diablos Tail
			code = "C31",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Fangskins Tail
			code = "C32",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Forsaken Izuals Tail
			code = "C33",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Izuals Tail
			code = "C34",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{white}Runic Forging Tier 5: {yellow}Rift\n{gold}Used for:\n\n"
		},
		{ -- Andariels Fang
			code = "C35",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Fangskins Fang
			code = "C36",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Queen Syndreds Fang
			code = "C37",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Body part for {dark green}Demon Tempering\n{gold}Used for:\n\n"
		},
		{ -- Charsis Soul
			code = "C38",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Runic Forging Tier 5: {yellow}Broken Promise{white}, {yellow}Steel{white}, {yellow}Edge\n{gold}Used for:\n\n"
		},
		{ -- Faras Soul
			code = "C39",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Radiance{white}, {yellow}Myth{white}, {yellow}Voice of Reason\n{gold}Used for:\n\n"
		},
		{ -- Drognans Soul
			code = "C40",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Daylight\n{gold}Used for:\n\n"
		},
		{ -- Hratlis Soul
			code = "C41",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Envy{white}, {yellow}Passion\n{gold}Used for:\n\n"
		},
		{ -- Ormus' Soul
			code = "C42",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Lightning{white}, {yellow}Zephyr\n{gold}Used for:\n\n"
		},
		{ -- Jamellas Soul
			code = "C43",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Rhyme\n{gold}Used for:\n\n"
		},
		{ -- Halbus Soul
			code = "C44",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Oath\n{gold}Used for:\n\n"
		},
		{ -- Larzuks Soul
			code = "C45",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Crafting {green}Forsaken Pacts {grey}(list in cube recipes)\n{white}Runic Forging Tier 5: {yellow}King's Grace\n{gold}Used for:\n\n"
		},
		{ -- Malahs Soul
			code = "C46",
			location = { "onplayer", "atvendor" },
			prefix = "{white}Runic Forging Tier 5: {yellow}Lust\n{gold}Used for:\n\n"
		},




		
		--                                                                                                    Gameplay Tips
		

		{ -- Horadric Malus - Nightmare
			code = "hdm",
			location = { "onplayer", "atvendor" },
			difficulty = "Nightmare",
			prefix = "{gray}Example: Spirit in 6os Spell Blade = Jewel+Jewel+Tal+Thul+Ort+Amn\nThose {white}'Jeweled Runewords'{gray} can be made by filling excess sockets with Jewels (not gems!) {red}BEFORE{gray} Runes\n{orange}Gameplay Tip:{gray} You can make Runewords in items that have more sockets that those RWs need runes.\n"
		},
		{ -- Horadric Malus - Hell
			code = "hdm",
			location = { "onplayer", "atvendor" },
			difficulty = "Hell",
			prefix = "{gray}You will still want less MF to farm bases of course, but overall it's the best place for farming bases!\n{orange}Gameplay tip:{white} Cow Level{gray} is specifically tailored in ReMoDDeD to drop as many {white}bases{gray} as possible\n"
		},
		{ -- Horadric Malus - notify NM
			code = "hdm",
			difficulty = "Nightmare",
			notify = "{orange}New gameplay tip available! Look at description of {name}"
		},
		{ -- Horadric Malus - notify Hell
			code = "hdm",
			difficulty = "Hell",
			notify = "{orange}New gameplay tip available! Look at description of {name}"
		},
		{ -- Mephisto's Soulstone - Normal
			code = "mss",
			location = { "onplayer", "atvendor" },
			difficulty = "Normal",
			prefix = "{gray}or by holding ALT and clicking on any attribute '+' in character stats window\nYou respec by clicking recpec button in your skills window\n\ncheck the checkbox 'respec' in Launchers main window, inside 'Launch Options'\n{orange}Gameplay Tip:{gray} You can {white}infinitely respec{gray} your stats/skills if you\n"
		},
		{ -- Mephisto's Soulstone - Nightmare
			code = "mss",
			location = { "onplayer", "atvendor" },
			difficulty = "Nightmare",
			prefix = "You might need to refresh a few times for it to appear (next to jewelry)\nsockets to items, can be gold gambled from {red}Edyrem\n{orange}Gameplay Tip:{gold} Ramaladni's Gift{white}, which adds\n\n"
		},
		{ -- Mephisto's Soulstone - Hell
			code = "mss",
			location = { "onplayer", "atvendor" },
			difficulty = "Hell",
			prefix = "{gray}Entrance to levels full of Torment (Hell only)\n{orange}Gameplay Tip:{gray} The {white}Worldstone Chamber{gray} contains an\n"
		},
		{ --  Mephisto's Soul Stone - notify
			code = "mss",
			notify = "{orange}New gameplay tip available! Look at description of {name}"
		},
		{ -- Scroll of Resistance - Normal
			code = "tr2",
			location = { "onplayer", "atvendor" },
			difficulty = "Normal",
			prefix = "{orange}Gameplay Tip:{gray} QoL Options in Launcher have many useful things. Recommend to check it out!\n"
		},
		{ -- Scroll of Resistance - Nightmare
			code = "tr2",
			location = { "onplayer", "atvendor" },
			difficulty = "Nightmare",
			prefix = "{gray}However, your '- x resistance' stats do not update those numbers!\nYour '- x immunity' stats, Curses and Conviction Auras affect those numbers\n\nLauncher - Options - QoL Options - Monster HP Bar - choose any 'Advanced' option\n{orange}Gameplay Tip:{gray} You can see all enemy {white}Resistance Values{gray} if you set it in:\n"
		},
		{ -- Scroll of Resistance - Hell
			code = "tr2",
			location = { "onplayer", "atvendor" },
			difficulty = "Hell",
			prefix = "{gray}'LB' icon in item name means 'Limit Broken Base' (ilvl 103+)\n'EB' icon in item name means 'Elite Base'\n"
		},
		{ --  Scroll of Resistance - notify
			code = "tr2",
			location = { "onplayer", "atvendor" },
			notify = "{orange}New gameplay tip available! Look at description of {name}"
		},
		
		
		
		
		--                                                             SET HUNTER: Show what set x item belongs to, before identifying it. "Hunter" levels only!
		
		{ -- Aldur's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 66,
			filter_levels = "2,3,5,6,8,9",
			suffix = "{green}|Aldur's"
		},
		{ -- Aldur's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 67,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Aldur's"
		},
		{ -- Aldur's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 68,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Aldur's"
		},
		{ -- Aldur's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 69,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Aldur's"
		},
		
		{ -- Angelic Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 50,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Angelic"
		},
		{ -- Angelic Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 51,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Angelic"
		},
		{ -- Angelic Ring
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 52,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Angelic"
		},
		{ -- Angelic Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 53,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Angelic"
		},
		
		{ -- Arcanna's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 58,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arcanna's"
		},
		{ -- Arcanna's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 59,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arcanna's"
		},
		{ -- Arcanna's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 60,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arcanna's"
		},
		{ -- Arcanna's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 61,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arcanna's"
		},
		
		{ -- Arctic Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 54,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arctic"
		},
		{ -- Arctic Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 55,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arctic"
		},
		{ -- Arctic Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 56,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arctic"
		},
		{ -- Arctic Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 57,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Arctic"
		},
		
		{ -- Battlemage's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 144,
			filter_levels = "2,3,5,6,8,9",
			suffix = "{green}|Battlemage's"
		},
		{ -- Battlemage's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 145,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Battlemage's"
		},
		{ -- Battlemage's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 146,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Battlemage's"
		},
		
		{ -- Berserker's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 44,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Berserker's"
		},
		{ -- Berserker's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 45,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Berserker's"
		},
		{ -- Berserker's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 46,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Berserker's"
		},
		
		{ -- Bul-Katho's Weapon big
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 115,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Bul-Katho's"
		},
		{ -- Bul-Katho's Weapon smol
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 116,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Bul-Katho's"
		},
		
		{ -- Cathan's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 25,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cathan's"
		},
		{ -- Cathan's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 26,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cathan's"
		},
		{ -- Cathan's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 27,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cathan's"
		},
		{ -- Cathan's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 28,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cathan's"
		},
		{ -- Cathan's Ring
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 29,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cathan's"
		},
		
		{ -- Civerb's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 0,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Civerb's"
		},
		{ -- Civerb's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 1,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Civerb's"
		},
		{ -- Civerb's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 2,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Civerb's"
		},
		
		{ -- Cleglaw's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 6,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cleglaw's"
		},
		{ -- Cleglaw's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 7,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cleglaw's"
		},
		{ -- Cleglaw's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 8,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cleglaw's"
		},
		
		{ -- Cow King's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 117,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cow King's"
		},
		{ -- Cow King's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 118,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cow King's"
		},
		{ -- Cow King's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 119,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cow King's"
		},
		
		{ -- Death's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 47,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Death's"
		},
		{ -- Death's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 48,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Death's"
		},
		{ -- Death's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 49,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Death's"
		},
		
		{ -- Glacial Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 147,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Glacial"
		},
		{ -- Glacial Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 148,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Glacial"
		},
		{ -- Glacial Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 149,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Glacial"
		},
		
		{ -- Griswold's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 81,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Griswold's"
		},
		{ -- Griswold's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 82,
			filter_levels = "2,3,5,6,8,9",
			suffix = "{green}|Griswold's"
		},
		{ -- Griswold's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 83,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Griswold's"
		},
		{ -- Griswold's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 84,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Griswold's"
		},
		
		{ -- Heaven's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 100,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Heaven's"
		},
		{ -- Heaven's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 101,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Heaven's"
		},
		{ -- Heaven's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 102,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Heaven's"
		},
		{ -- Heaven's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 103,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Heaven's"
		},
		
		{ -- Hsarus' Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 3,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hsarus'"
		},
		{ -- Hsarus' Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 4,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hsarus'"
		},
		{ -- Hsarus' Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 5,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hsarus'"
		},
		
		{ -- Hwanin's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 108,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hwanin's"
		},
		{ -- Hwanin's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 109,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hwanin's"
		},
		{ -- Hwanin's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 110,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hwanin's"
		},
		{ -- Hwanin's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 111,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hwanin's"
		},
		
		{ -- IK Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 70,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|IK"
		},
		{ -- IK Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 71,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|IK"
		},
		{ -- IK Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 72,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|IK"
		},
		{ -- IK Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 73,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|IK"
		},
		{ -- IK Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 74,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|IK"
		},
		{ -- IK Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 75,
			filter_levels = "2,3,5,6,8,9",
			suffix = "{green}|IK"
		},
		
		{ -- Infernal Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 41,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Infernal"
		},
		{ -- Infernal Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 42,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Infernal"
		},
		{ -- Infernal Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 43,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Infernal"
		},
		
		{ -- Iratha's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 9,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Iratha's"
		},
		{ -- Iratha's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 10,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Iratha's"
		},
		{ -- Iratha's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 11,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Iratha's"
		},
		{ -- Iratha's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 12,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Iratha's"
		},
		
		{ -- Isenhart's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 13,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Isenhart's"
		},
		{ -- Isenhart's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 14,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Isenhart's"
		},
		{ -- Isenhart's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 15,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Isenhart's"
		},
		{ -- Isenhart's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 16,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Isenhart's"
		},
		
		{ -- Kreigur's Will
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 156,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Kreigur's W"
		},
		{ -- Kreigur's Judgement
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 157,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Kreigur's J"
		},
		
		{ -- Majestic Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 131,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Majestic"
		},
		{ -- Majestic Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 132,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Majestic"
		},
		{ -- Majestic Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 133,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Majestic"
		},
		
		{ -- M'avina's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 90,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|M'avina's"
		},
		{ -- M'avina's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 91,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|M'avina's"
		},
		{ -- M'avina's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 92,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|M'avina's"
		},
		{ -- M'avina's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 93,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|M'avina's"
		},
		{ -- M'avina's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 94,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|M'avina's"
		},
		
		{ -- Sander's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 123,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sander's"
		},
		{ -- Sander's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 124,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sander's"
		},
		{ -- Sander's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 125,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sander's"
		},
		{ -- Sander's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 126,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sander's"
		},
		
		{ -- Milabrega's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 21,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Milabrega's"
		},
		{ -- Milabrega's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 22,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Milabrega's"
		},
		{ -- Milabrega's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 23,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Milabrega's"
		},
		{ -- Milabrega's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 24,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Milabrega's"
		},
		
		{ -- Naj's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 120,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Naj's"
		},
		{ -- Naj's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 121,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Naj's"
		},
		{ -- Naj's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 122,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Naj's"
		},
		
		{ -- Natalya's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 62,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Natalya's"
		},
		{ -- Natalya's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 63,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Natalya's"
		},
		{ -- Natalya's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 64,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Natalya's"
		},
		{ -- Natalya's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 65,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Natalya's"
		},
		
		{ -- Orphan's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 104,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Orphan's"
		},
		{ -- Orphan's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 105,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Orphan's"
		},
		{ -- Orphan's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 106,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Orphan's"
		},
		{ -- Orphan's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 107,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Orphan's"
		},
		
		{ -- Rathma's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 150,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Rathma's"
		},
		{ -- Rathma's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 151,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Rathma's"
		},
		{ -- Rathma's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 152,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Rathma's"
		},
		{ -- Rathma's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 153,
			filter_levels = "2,3,5,6,8,9",
			suffix = "{green}|Rathma's"
		},
		
		{ -- Sazabi's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 112,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sazabi's"
		},
		{ -- Sazabi's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 113,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sazabi's"
		},
		{ -- Sazabi's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 114,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sazabi's"
		},
		
		{ -- Sigon's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 35,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		{ -- Sigon's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 36,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		{ -- Sigon's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 37,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		{ -- Sigon's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 38,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		{ -- Sigon's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 39,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		{ -- Sigon's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 40,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Sigon's"
		},
		
		{ -- Skovos's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 134,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Skovos's"
		},
		{ -- Skovos's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 135,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Skovos's"
		},
		{ -- Skovos's Arrows
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 136,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Skovos's"
		},
		
		{ -- Stacatomamba's Sigil
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 154,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Stacato Sigil"
		},
		{ -- Stacatomamba's Circle
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 155,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Mamba Circle"
		},
		
		{ -- Sukami's Kami
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 158,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|(su)Kami"
		},
		{ -- Sukami's Su
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 159,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Su(kami)"
		},
		
		{ -- Tal Rasha's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 76,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tal Rasha's"
		},
		{ -- Tal Rasha's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 77,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tal Rasha's"
		},
		{ -- Tal Rasha's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 78,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tal Rasha's"
		},
		{ -- Tal Rasha's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 79,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tal Rasha's"
		},
		{ -- Tal Rasha's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 80,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tal Rasha's"
		},
		
		{ -- Tancred's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 30,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tancred's"
		},
		{ -- Tancred's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 31,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tancred's"
		},
		{ -- Tancred's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 32,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tancred's"
		},
		{ -- Tancred's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 33,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tancred's"
		},
		{ -- Tancred's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 34,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Tancred's"
		},
		
		{ -- The Disciple's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 95,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Disciple's"
		},
		{ -- The Disciple's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 96,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Disciple's"
		},
		{ -- The Disciple's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 97,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Disciple's"
		},
		{ -- The Disciple's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 98,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Disciple's"
		},
		{ -- The Disciple's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 99,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Disciple's"
		},
		
		{ -- Trang-Oul's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 85,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Trang-Oul's"
		},
		{ -- Trang-Oul's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 86,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Trang-Oul's"
		},
		{ -- Trang-Oul's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 87,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Trang-Oul's"
		},
		{ -- Trang-Oul's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 88,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Trang-Oul's"
		},
		{ -- Trang-Oul's Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 89,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Trang-Oul's"
		},
		
		{ -- Vessel's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 127,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vessel's"
		},
		{ -- Vessel's Shield
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 128,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vessel's"
		},
		{ -- Vessel's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 129,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vessel's"
		},
		{ -- Vessel's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 130,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vessel's"
		},
		
		{ -- Vidala's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 17,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vidala's"
		},
		{ -- Vidala's Boots
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 18,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vidala's"
		},
		{ -- Vidala's Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 19,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vidala's"
		},
		{ -- Vidala's Amulet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 20,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vidala's"
		},
		
		{ -- Vizjerei's Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 141,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vizjerei's"
		},
		{ -- Vizjerei's Weapon
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 142,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vizjerei's"
		},
		{ -- Vizjerei's Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 143,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Vizjerei's"
		},
		
		{ -- Wonderous Belt
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 137,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Wonderous"
		},
		{ -- Wonderous Helmet
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 138,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Wonderous"
		},
		{ -- Wonderous Torso
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 139,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Wonderous"
		},
		{ -- Wonderous Gloves
			codes = "allitems",
			quality = "5",
			identified = false,
			index = 140,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Wonderous"
		},
		
		
		

		--                                                         UNIQUE HUNTER: Show what good (of my personal choice) unique jewelry and all Unique Charms are before identifying them
		
		{ -- Stone of Jordan
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 527,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|SoJ"
		},
		{ -- Bul-Kathos' Wedding Band
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 528,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|BK"
		},
		{ -- Life Everlasting
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 588,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Life Ev"
		},
		{ -- Hunter's Mark
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 589,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Hunt Mark"
		},
		{ -- Constricting Ring
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 541,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Constr",
			notify = "Valuable Ring nearby!"
		},
		{ -- Quintessence Amulet
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 587,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Quintessence",
			notify = "{red}Edyrem: {white}Now that's a rare find."
		},
		{ -- Mara's Kaleidoscope Amulet
			codes = "allitems",
			quality = "7",
			identified = false,
			index = 532,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Mara's",
			notify = "Valuable Amulet nearby!"
		},
		{ -- Cola Cube Small Charm
			code = "cm1",
			quality = "7",
			index = 606,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Cola"
		},
		{ -- Healthy Breakfast Small Charm
			code = "cm1",
			quality = "7",
			index = 598,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|HB"
		},
		{ -- Gheed's Fortune Grand Charm
			code = "cm3",
			quality = "7",
			index = 542,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Gheed's"
		},
		{ -- Unholy Commander Grand Charm
			code = "cm3",
			quality = "7",
			index = 590,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Unholy"
		},
		{ -- Blank Talent Grand Charm
			code = "cm3",
			quality = "7",
			index = 611,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Blank"
		},
		{ -- Kuroneko no Himitsu Grand Charm
			code = "cm3",
			quality = "7",
			index = 654,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			suffix = "|Kuro"
		},
		
		
		
		--                                                                                             HUNTER: Random
		
		
		{ -- All Res Small Charms
			code = "cm1",
			quality = 4,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
			stat = { {index = 39, op = "==", value = 5}, {index = 41, op = "==", value = 5}, {index = 43, op = "==", value = 5}, {index = 45, op = "==", value = 5} },
			suffix = "{yellow} [5%% All Res]"
		},
		{ -- CDR Small Charms
			code = "cm1",
			quality = 4,
			identified = false,
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
            stat = { index = 286, op = "==", value = 5 },
			suffix = "{yellow} [5%% CDR]"
		},
		{ -- MF Small Charms
			code = "cm1",
			quality = 4,
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
			identified = false,
            stat = { index = 80, op = "==", value = 7 },
			suffix = "{yellow} [{stat=(80)}%% MF]"
		},
		{ -- +20 Life Small Charms
			code = "cm1",
			quality = 4,
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
			identified = false,
			stat = { index = 7, op = "==", value = 20*256 },
			suffix = "{yellow} [20 Life]"
		},
		{ -- High ED% magic/rare Jewels
			code = "jew",
			quality = "4,6",
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
			identified = false,
            stat = {{ index = 93, op = "<", value = 1 }, { index = 17, op = ">=", value = 35 }},
			suffix = "{yellow} [{stat=(17)}%% ED]"
		},
		{ -- 15% IAS and any ED% magic/rare Jewels
			code = "jew",
			quality = "4,6",
			filter_levels = "2,3,5,6,8,9",
			location = { "onground", "onplayer" },
			identified = false,
            stat = {{ index = 93, op = "==", value = 15 }, { index = 17, op = ">=", value = 1 }},
			suffix = "{yellow} [15%% IAS, {stat=(17)}%% ED]"
		},
		


		
		
		
		--                                                                                             Treasure Chests
		
		
		{ -- Style for Treasure Chests
            codes = { "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32" },
            notify = "{purple}Treasure! {purple}ヽ({red}♡{purple}‿{red}♡{purple})ノ",
            background_style = "SapphireSonnet"
        },
		{ -- Treasure Chests - Armor - 25
			code = "y09",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Armor\n"
		},
		{ -- Treasure Chests - Armor - 50
			code = "y10",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Armor\n"
		},
		{ -- Treasure Chests - Armor - 70
			code = "y11",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Armor\n"
		},
		{ -- Treasure Chests - Armor - 90
			code = "y12",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Armor\n"
		},
		{ -- Treasure Chests - Weapons - 25
			code = "y13",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Weapons\n"
		},
		{ -- Treasure Chests - Weapons - 50
			code = "y14",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Weapons\n"
		},
		{ -- Treasure Chests - Weapons - 70
			code = "y15",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Weapons\n"
		},
		{ -- Treasure Chests - Weapons - 90
			code = "y16",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Weapons\n"
		},
		{ -- Treasure Chests - Rings - 25
			code = "y17",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Rings\n"
		},
		{ -- Treasure Chests - Rings - 50
			code = "y18",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Rings\n"
		},
		{ -- Treasure Chests - Rings - 70
			code = "y19",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Rings\n"
		},
		{ -- Treasure Chests - Rings - 90
			code = "y20",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Rings\n"
		},
		{ -- Treasure Chests - Amulets - 25
			code = "y21",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Amulets\n"
		},
		{ -- Treasure Chests - Amulets - 50
			code = "y22",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Amulets\n"
		},
		{ -- Treasure Chests - Amulets - 70
			code = "y23",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Amulets\n"
		},
		{ -- Treasure Chests - Amulets - 90
			code = "y24",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Amulets\n"
		},
		{ -- Treasure Chests - Arrows - 25
			code = "y25",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Arrows\n"
		},
		{ -- Treasure Chests - Arrows - 50
			code = "y26",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Arrows\n"
		},
		{ -- Treasure Chests - Arrows - 70
			code = "y27",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Arrows\n"
		},
		{ -- Treasure Chests - Arrows - 90
			code = "y28",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Arrows\n"
		},
		{ -- Treasure Chests - Runes - 25
			code = "y29",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}25\n{white}Contains: {gold}Runes\n"
		},
		{ -- Treasure Chests - Runes - 50
			code = "y30",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}50\n{white}Contains: {gold}Runes\n"
		},
		{ -- Treasure Chests - Runes - 70
			code = "y31",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}70\n{white}Contains: {gold}Runes\n"
		},
		{ -- Treasure Chests - Runes - 90
			code = "y32",
			location = { "onplayer", "atvendor" },
			prefix_desc = "{white}Item Level: {orange}90\n{white}Contains: {gold}Runes\n"
		},
		
		
		

		
			

		--                                                                                             Audio
		{ -- Audio for Ultra Runes
			codes = { "r34", "r35", "r36" },
			audio = "HR_Drop_Loud.mp3"
		},
		{ -- Audio for Dye Bottles
			codes = { "Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73" },
			audio = "DyeBottleCharsi.mp3"
		},
		{ -- Audio for Codex
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58", "a59", "a60", "a61", "a62", "a63", "a64", "a65" },
			audio = "BookCharsi.wav"
        },
		{ -- Audio for Demon Tempering Body Parts and Ultra Enhancement Crystals
			codes = { "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37", "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27" },
			audio = "Ding1Charsi.mp3"
		},
		{ -- Audio for Rainbow Facets
			code = "jew",
			quality = 7,
			identified = false,
			audio = "Ding1Charsi.mp3"
		},
		{ -- Audio for Ramaladni's Gift, Socket Removers and Gem Vein
			codes = { "b64", "b65", "Rgx", "y33" },
			audio = "DropCharsi.mp3"
		},
		{ -- Audio for Grail Tracker Finder
			codes = NOT { "j34", "jew", "qey", "g34", "xyz", "bks", "leg", "hdm", "ass", "msf", "hst", "vip", "box", "g33", "qbr", "bbb", "qhr", "qf1", "qf2", "mss", "hfh", "ice", "tr2", "BoH", "std", "B01", "B02", "B03" },
			quality = "5,7",
			grail = false,
			filter_levels = "3,6,9",
			audio = "GrailDingCharsi.wav"
		},
		{ -- Audio for Candy Corn and Cornucopia
			codes = { "Ev11", "Ev12" },
			audio = "EventItemCharsi.mp3"
		},
		
		
		

		--                                                                                     Quest item notifies
		
		{ -- Khalim's Eye
			code = "qey",
			notify = "{red}???: {white}A group of aspiring heroes, I see. I hope you know what you are getting yourself into.\n{red}Edyrem: {white}Who was that?"
		},
		{ -- Khalim's Brain
			code = "qbr",
			notify = "{red}???: {white}You proved yourself determined enough... Fine, I will aid you. Find my heart, I can feel it deep beneath Kurast."
		},
		{ -- Khalim's Heart
			code = "qhr",
			notify = "{red}???: {white}Completely filled with hatred, what an irony. It's time to meet with old friends in Travincal"
		},
		{ -- Khalim's Flail
			code = "qf1",
			notify = "{red}???: {white}A fine piece of weaponry it once was, now only a memory. Assemble my scattered will, Nephalem."
		},
		{ -- Khalim's Will
			code = "qf2",
			location = "equipped",
			notify = "{red}Khalim: {white}I SHALL HAVE MY VENGEANCE, DEMON! Even if it's not me that delivers it.\n{red}Edyrem: {white}Your deed is done, priest. It's time to join us."
		},
		{ -- Horadric Scroll
			code = "tr1",
			notify = "{red}Edyrem: {white}A true heroes they were."
		},
		{ -- Staff of Kings
			code = "msf",
			notify = "{red}Edyrem: {white}King of Staffs."
		},
		{ -- Amulet of the Viper
			code = "vip",
			notify = "{red}Edyrem: {white}Clouds only block the sunshine temporarily. The sun always returns."
		},
		{ -- Wirt's Leg
			code = "leg",
			notify = "{red}Edyrem: {white}Ooooh Who lives in a pineapple under the sea..."
		},
		{ -- Book of Skill
			code = "ass",
			notify = "{red}Edyrem: {white}My precious~~"
		},
		{ -- Horadric Staff
			code = "hst",
			notify = "{red}Edyrem: {white}Why would you do that?"
		},
		{ -- A Jade Figurine onground
			code = "j34",
			notify = "{red}Edyrem: {white}Is that an Anime Figurine?"
		},
		{ -- A Jade Figurine onplayer
			code = "j34",
			location = "onplayer",
			prefix = "{gray}It is in fact, not an Anime Figurine :v\n"
		},
		{ -- Golden Bird
			code = "g34",
			location = "onplayer",
			notify = "{red}Edyrem: {white}Pfff, what a waste of Gold. Could have been made into a Gold Bar..."
		},
		{ -- Lam Esen's Tome - normal
			code = "bbb",
			difficulty = "Normal",
			notify = "{red}Edyrem: {white}MY PIZZA RECIPE! So that's where I put it..."
		},
		{ -- Lam Esen's Tome - nightmare
			code = "bbb",
			difficulty = "Nightmare",
			notify = "{red}Edyrem: {white}MY PIZZA RECIPE! So tha... Didn't I find it already? A Deja vu?"
		},
		{ -- Lam Esen's Tome - hell
			code = "bbb",
			difficulty = "Hell",
			notify = "{red}Edyrem: {white}MY PIZZA R... Hold on, what's going on in here? Who is doing it?"
		},
		{ -- Potion of life
			code = "xyz",
			location = "onplayer",
			notify = "{red}Edyrem: {white}If only we could mass produce that D:"
		},
		{ -- Hellforge Hammer
			code = "hfh",
			notify = "{red}Edyrem: {white}We have a bad feeling about this -_-"
		},
		
		
		
		
		
		--                                                                                        Grail Tracker
		{ -- Grail Tracker Finder
			codes = NOT { "j00", "j34", "jew", "qey", "g34", "xyz", "bks", "leg", "hdm", "ass", "msf", "hst", "vip", "box", "g33", "qbr", "bbb", "qhr", "qf1", "qf2", "mss", "hfh", "ice", "tr2", "BoH", "std", "B01", "B02", "B03" },
			quality = "5,7",
			grail = false,
			notify = "{yellow}Grail Tracker: {white}New item has appeared!",
			suffix = " \n{yellow}! Grail !",
			filter_levels = "3,6,9"
		},
		
		
		
		--                                                                                           EVENTS
		{ -- Event Boxes
            code = "Ev03",
            notify = "{purple}Event Box!",
			name_override = "Gamba Box!",
			background = { 46, 47, 67, 230 },
			border = { 7, 10, 92, 230, 2 },
			notify = "{red}Edyrem: {white}Is for me?",
            name_style = "Rainbow"
        },
		{ -- Stocking Stuffer
			code = "Ev04",
			notify = "{orange}Stocking Stuffer  (o_O) !"
		},
		{ -- Milk&Cookies
			codes = { "Ev05", "Ev06", "Ev07", "Ev08", "Ev09", "Ev10" },
			notify = "{red}Edyrem{white}: Mmmmm, tasty Milk and Cookies"
		},
		{ -- Candy Corn
			code = "Ev11",
			border = { 0, 35, 255, 130, 2 },
			notify = "{orange}Candy Corn ヽ(°〇°)ﾉ"
		},
		{ -- Cornucopia
			code = "Ev12",
			border = { 0, 35, 255, 130, 2 },
			notify = "{red}Edyrem{white}: That's a LOT of candy!"
		},
		{ -- Faceted Memory name fix, identified
			code = "j00",
			index =  NOT { 610 },
			identified = true,
			location = { "onground", "onplayer", "equipped", "atvendor" },
			name_style = "ToxicFog",
			name_override = "{gold}Jewel\nFaceted Memory ({ilvl})"
		},
		{ -- Faceted Memory notify, unidentified onground
			code = "j00",
			index =  NOT { 610 },
			identified = false,
			name_style = "ToxicFog",
			notify = "{orange}That Jewel looks a bit special!"
		},
		{ -- Faceted Memory notify, unidentified in eq
			code = "j00",
			index =  NOT { 610 },
			identified = false,
			location = { "onplayer", "equipped", "atvendor" },
			name_style = "ToxicFog"
		},
		
		
		

		--                                                                                           Evil Barrier Questing System
		
		{ -- Evil Barrier drop notify - unidentified
			code = "B01",
			identified = false,
			notify = "{red}Edyrem:{white} Hmm, interesting find."
		},
		{ -- The Gnasher
			code = "hax",
			index = 6,
			quality = 7,
			difficulty = "Normal",
			area = "Stony Field",
			identified = false,
			notify = "{red}Edyrem: {white}Hey! You need that {gold}Hand Axe{white} for {purple}Evil Barrier{white} I think."
		},
		{ -- The Gidbinn
			code = "g33",
			difficulty = "Normal",
			notify = "{red}Edyrem: {white}Hey, don't give that to Ormus right away! You need that for {purple}Evil Barrier{white} I think."
		},
		{ -- Ramaladni's Gift
			code = "Rgx",
			difficulty = "Normal",
			area = "Chaos Sanctuary",
			notify = "{red}Edyrem: {white}Hey! You need that Gift for {purple}Evil Barrier{white} I think."
		},
		{ -- Hexfire
			code = "9sb",
			index = 113,
			quality = 7,
			difficulty = "Nightmare",
			area = "Stony Field",
			identified = false,
			notify = "{red}Edyrem: {white}Hey! You need that {gold}Shamshir{white} for {purple}Evil Barrier{white} I think."
		},
		{ -- Color Dye Bottle (Crystal Blue)
			code = "Z55",
			difficulty = "Nightmare",
			area = "Halls Of The Dead Level 3",
			notify = "{red}Edyrem: {white}Hey! You need that Dye Bottle for {purple}Evil Barrier{white} I think."
		},
		{ -- Skin of the Vipermagi
			code = "xea",
			index = 351,
			quality = 7,
			difficulty = "Nightmare",
			area = "Claw Viper Temple Level 2",
			identified = false,
			notify = "{red}Edyrem: {white}Hey! You need that {gold}Serpentskin Armor{white} for {purple}Evil Barrier{white} I think."
		},
		{ -- Arm of King Leoric
			code = "9bw",
			index = 98,
			quality = 7,
			difficulty = "Nightmare",
			area = "Disused Reliquary",
			identified = false,
			notify = "{red}Edyrem: {white}Hey! You need {gold}Tomb Wand{white} that for {purple}Evil Barrier{white} I think."
		},
		{ -- Gem Vein
			code = "y33",
			difficulty = "Nightmare",
			area = "Plains Of Despair",
			notify = "{red}Edyrem: {white}Hey! You need that Gem Vein for {purple}Evil Barrier{white} I think."
		},
		{ -- Soul Shard
			code = "S01",
			difficulty = "Nightmare",
			area = "Chaos Sanctuary",
			notify = "{red}Edyrem: {white}Hey! You need 1 of those Soul Shards for {purple}Evil Barrier{white} I think."
		},
		{ -- Unrelenting Will
			code = "9ts",
			index = 137,
			quality = 7,
			difficulty = "Nightmare",
			area = "Abaddon",
			identified = false,
			notify = "{red}Edyrem: {white}Hey! You need that {gold}Harpoon{white} for {purple}Evil Barrier{white} I think."
		},
		{ -- Socket Remover
			code = "b64",
			difficulty = "Nightmare",
			area = "Halls Of Vaught",
			notify = "{red}Edyrem: {white}Hey! You need that Socket Remover for {purple}Evil Barrier{white} I think."
		},
		{ -- Parchment of Proof 1
			code = "Bt01",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 1\n"
		},
		{ -- Parchment of Proof 2
			code = "Bt02",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 2\n"
		},
		{ -- Parchment of Proof 3
			code = "Bt03",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 3\n"
		},
		{ -- Parchment of Proof 4
			code = "Bt04",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 4\n"
		},
		{ -- Parchment of Proof 5
			code = "Bt05",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 5\n"
		},
		{ -- Parchment of Proof 6
			code = "Bt06",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 6\n"
		},
		{ -- Parchment of Proof 7
			code = "Bt07",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 7\n"
		},
		{ -- Parchment of Proof 8
			code = "Bt08",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 8\n"
		},
		{ -- Parchment of Proof 9
			code = "Bt09",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 9\n"
		},
		{ -- Parchment of Proof 10
			code = "Bt10",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 10\n"
		},
		{ -- Parchment of Proof 11
			code = "Bt11",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 11\n"
		},
		{ -- Parchment of Proof 12
			code = "Bt12",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 12\n"
		},
		{ -- Parchment of Proof 13
			code = "Bt13",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 13\n"
		},
		{ -- Parchment of Proof 14
			code = "Bt14",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 14\n"
		},
		{ -- Parchment of Proof 15
			code = "Bt15",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 15\n"
		},
		{ -- Parchment of Proof 16
			code = "Bt16",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 16\n"
		},
		{ -- Parchment of Proof 17
			code = "Bt17",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 17\n"
		},
		{ -- Parchment of Proof 18
			code = "Bt18",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 18\n"
		},
		{ -- Parchment of Proof 19
			code = "Bt19",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 19\n"
		},
		{ -- Parchment of Proof 20
			code = "Bt20",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 20\n"
		},
		{ -- Parchment of Proof 21
			code = "Bt21",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 21\n"
		},
		{ -- Parchment of Proof 22
			code = "Bt22",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 22\n"
		},
		{ -- Parchment of Proof 23
			code = "Bt23",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 23\n"
		},
		{ -- Parchment of Proof 24
			code = "Bt24",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 24\n"
		},
		{ -- Parchment of Proof 25
			code = "Bt25",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 25\n"
		},
		{ -- Parchment of Proof 26
			code = "Bt26",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 26\n"
		},
		{ -- Parchment of Proof 27
			code = "Bt27",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 27\n"
		},
		{ -- Parchment of Proof 28
			code = "Bt28",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 28\n"
		},
		{ -- Parchment of Proof 29
			code = "Bt29",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 29\n"
		},
		{ -- Parchment of Proof 30
			code = "Bt30",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 30\n"
		},
		{ -- Parchment of Proof 31
			code = "Bt31",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 31\n"
		},
		{ -- Parchment of Proof 32
			code = "Bt32",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 32\n"
		},
		{ -- Parchment of Proof 33
			code = "Bt33",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 33\n"
		},
		{ -- Parchment of Proof 34
			code = "Bt34",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 34\n"
		},
		{ -- Parchment of Proof 35
			code = "Bt35",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 35\n"
		},
		{ -- Parchment of Proof 36
			code = "Bt36",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 36\n"
		},
		{ -- Parchment of Proof 37
			code = "Bt37",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 37\n"
		},
		{ -- Parchment of Proof 38
			code = "Bt38",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 38\n"
		},
		{ -- Parchment of Proof 39
			code = "Bt39",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 39\n"
		},
		{ -- Parchment of Proof 40
			code = "Bt40",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 40\n"
		},
		{ -- Parchment of Proof 41
			code = "Bt41",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 41\n"
		},
		{ -- Parchment of Proof 42
			code = "Bt42",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 42\n"
		},
		{ -- Parchment of Proof 43
			code = "Bt43",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 43\n"
		},
		{ -- Parchment of Proof 44
			code = "Bt44",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 44\n"
		},
		{ -- Parchment of Proof 45
			code = "Bt45",
			location = { "onplayer", "atvendor" },
			prefix = "Quest: 45\n"
		},
		{ -- Evil Barrier notify - identified
			code = "B01",
			identified = true,
			notify = "{red}Important item on ground!"
		},


		
		
		
		--                                                                                            Color Dyes
		
		
		{ -- Color Dyed: White
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 1 },
			prefix_desc = "{lilac}Color Dyed: {white}White\n"
		},
		{ -- Color Dyed: Light Grey
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 2 },
			prefix_desc = "{lilac}Color Dyed: {grey}Light Grey\n"
		},
		{ -- Color Dyed: Dark Grey
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 3 },
			prefix_desc = "{lilac}Color Dyed: {grey}Dark Grey\n"
		},
		{ -- Color Dyed: Black
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 4 },
			prefix_desc = "{lilac}Color Dyed: {grey}Black\n"
		},
		{ -- Color Dyed: Light Blue
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 5 },
			prefix_desc = "{lilac}Color Dyed: {blue}Bright White\n"
		},
		{ -- Color Dyed: Dark Blue
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 6 },
			prefix_desc = "{lilac}Color Dyed: {blue}Dark Blue\n"
		},
		{ -- Color Dyed: Crystal Blue
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 7 },
			prefix_desc = "{lilac}Color Dyed: {blue}Crystal Blue\n"
		},
		{ -- Color Dyed: Light Red
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 8 },
			prefix_desc = "{lilac}Color Dyed: {red}Light Red\n"
		},
		{ -- Color Dyed: Dark Red
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 9 },
			prefix_desc = "{lilac}Color Dyed: {red}Dark Red\n"
		},
		{ -- Color Dyed: Crystal Red
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 10 },
			prefix_desc = "{lilac}Color Dyed: {red}Crystal Red\n"
		},
		{ -- Color Dyed: Light Green
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 11 },
			prefix_desc = "{lilac}Color Dyed: {green}Light Green\n"
		},
		{ -- Color Dyed: Dark Green
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 12 },
			prefix_desc = "{lilac}Color Dyed: {green}Dark Green\n"
		},
		{ -- Color Dyed: Crystal Green
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 13 },
			prefix_desc = "{lilac}Color Dyed: {green}Crystal Green\n"
		},
		{ -- Color Dyed: Light Yellow
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 14 },
			prefix_desc = "{lilac}Color Dyed: {yellow}Light Yellow\n"
		},
		{ -- Color Dyed: Dark Yellow
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 15 },
			prefix_desc = "{lilac}Color Dyed: {yellow}Dark Yellow\n"
		},
		{ -- Color Dyed: Light Gold
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 16 },
			prefix_desc = "{lilac}Color Dyed: {gold}Light Gold\n"
		},
		{ -- Color Dyed: Dark Gold
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 17 },
			prefix_desc = "{lilac}Color Dyed: {gold}Dark Gold\n"
		},
		{ -- Color Dyed: Light Purple
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 18 },
			prefix_desc = "{lilac}Color Dyed: {purple}Light Purple\n"
		},
		{ -- Color Dyed: Dark Purple
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 19 },
			prefix_desc = "{lilac}Color Dyed: {purple}Dark Purple\n"
		},
		{ -- Color Dyed: Orange
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 20 },
			prefix_desc = "{lilac}Color Dyed: {orange}Orange\n"
		},
		{ -- Color Dyed: Bright White
			codes = "allitems",
			location = { "onplayer", "equipped", "atvendor" },
			stat = { index = 433, op = "==", value = 22 },
			prefix_desc = "{lilac}Color Dyed: {white}Bright White\n"
		},
		{ -- Dye Bottles notification and style
			codes = { "Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73" },
			notify = "{yellow}Dye Bottle!",
			border = { 10, 14, 92, 255, 2 },
			name_style = "RainbowStatic"
		}
    }
}
