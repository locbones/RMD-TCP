--- Filter Title: Sick of Junk v .1
--- Filter Type: (Generic base filter)
--- Filter Description: This filter hides anything that isnt end game. Not crafting friendly.
return {
    rules = {
			--Rule Zero: Hides All Inferior Items    
		{ 
             codes = "allitems",
             quality = "1",
             hide = true,
			 area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
			 
        },
			--Rule One: Hides Normal Items    
		{ 
             codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "7qs"},
             quality = "2",
             hide = true,
			 area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
			 
        },
			--Rule Two: Hides Magic Items    
		{ 
             codes = {"cap", "amu", "rin", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "7qs"},
             quality = "4",
             hide = true,
			 area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
			 
        },
		    --Rule Three: Hide gold piles under 5000 at level 90
		{
            code = "gld",
            stat = { index = 14, op = "<=", value = 5000 },  --hides gold under 5000
            pstat = { index = 12, op = ">=", value = 90 }, -- Char Level is >= 90
            hide = true, 
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" }
		},
			--Rule Four: Hide >Rare+ Arrows
        {  
            code = "aqv",
            quality = "4-", -- to show magic, change to "3-"
            hide = true
		},
			--Rule Five: Hide Scroll, Pot, Lesser Juv
        {
            codes = { "mp1", "mp2", "mp3", "mp4", "mp5", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc", "rvs"},
            hide = true
        },	
			--Rule Six: Hide Large Charms
        {   
            code = "cm2",
            quality = "4",
            hide = true
        },
			--Rule Seven: Highlights Treasure Chests
        {  
            codes = {"y09","y10","y11","y12","y13","y14","y15","y16","y17","y18","y19","y20","y21","y22","y23","y24","y25","y26","y27","y28","y29","y30","y31","y32"},
            hide = false,
            notify = "Lootbox Dropped",
            prefix = "{Yellow} [",
            suffix = "{Yellow}] "
        },
			--Rule Eight: Highlights Rama Gifts
        {   
            code = "Rgx",
            notify = "Hole Puncher Located",
            prefix = "{Red}| ",
            suffix = "{Red} |",
            background = {255, 255, 255, 255}
        },
			--Rule Nine: Highlights ultra runes
        {  
            codes = {"r34", "r35", "r36"},
            notify = "ÿc1**          ULTRA Rune Dropped*:", 
            prefix = "{Red}|          ",
            suffix = "{Red}          |",
            background = {255, 255, 255, 255}
        },
			--Rule Ten: Highlights high runes Mal-Zod
        {
            codes = {"r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
            notify = "ÿc@*High Rune Dropped*:",
            prefix = "|     ",
            suffix = "     |",
            background = {255, 255, 255, 255}
        },
			--Rule Eleven: Hides Med or lower runes when clvl=80+
        {
            codes = {"r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11", "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22"},
            pstat = { index = 12, op = ">=", value = 80 },  --playerstat = index 12 (12 = player lvl), operation = greater than or equal too (>=), value selected = 80 (plvl >=80)
            hide = true
        },
			--Rule Twelve: Hides Grand Charms until clvl=44
        {
            code = "cm3",
            pstat = { index = 12, op = "<=", value = 44 },
            hide = true,
            quality = "4"
        },
			--Rule Thirteen: Highlight Unique items with bases that are contested for a good unique (no ID spoilers)
        {
            codes = {"vgl", "utp", "6ls", "rin", "amu", "aqv"},
            quality = "7",
            notify = "ÿcO Unique Base Drop",
            prefix = "[   ",
            suffix = "   ]"
        },
			--Rule Fourteen: Highlights rare rings and amulets specifically when clvl is <= 90
        {
            codes = {"rin", "amu"}, --add codes here to expand highlight list
            quality = "6",
            notify = "ÿcO Rare Jewelery Located",
            prefix = "{red}** ",
            suffix = "{red}  **",
            pstat = { index = 12, op = "<=", value = 90 }		
		}
	}
}
