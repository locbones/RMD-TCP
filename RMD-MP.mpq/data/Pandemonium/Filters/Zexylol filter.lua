--- Filter Title: Zexylol's Hardfilter v1.02
--- Filter Type: (Hardconfig filter)
--- Filter Description: \nIf you like seeing loot alot of loot, DO NOT USE THIS FILTER. \nYou will see Set, Unique, rare(amu/ring/jewels), Magic (Charms). \nAs for bases..... ONLY PERFECT ROLLED SUPERIORS.... \nMight be some items ive missed to hide or add to notify.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Zexylol%20filter.lua
return {
    reload = "{pink} Zexylol's Hardconfig Filter {pink}Reloaded",
    --debug = true,
	filter_level = 3,
	filter_titles = {"1", "2", "3",},
	allowOverrides = true,
	rules = {
		--Rule Debugg.
		{
			--codes = "allitems",
			--location = {"onground", "onplayer"},
			--prefix = " [{index}]",
			--prefix = " [{code}] [{rarity}]",
			--suffix = " [{quality}]",
			--suffix = " [{rarity}]",
			--suffix = " [{index}]",
			--suffix = "[{ilvl}]",
			--filter_levels = "1,2,3"
		},
--[[				Rule 1-9 shows sockets, runewords, tempered, crafted, low/mid/hi/ultra runes, tempering souls.
]]--	

		--Rule 1, Shows Sockets.
        { --Display socket count in gray to the right of item name, [x]
            codes = "allitems",
            sockets = "1+",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            suffix = " {gray}[{sockets}]",
			filter_levels = "1,2,3"
        },
		--Rule 2, Shows Runewords tag.
		{
			codes = "allitems",

			runeword = true,
			suffix = "\n{red}Runeword",
			location = { "onground", "onplayer", "equipped", "atvendor" },
			hide = false,
			filter_levels = "1,2,3"
		},
						
		--Rule 3, Shows Temepered tag.
		{
			codes = "allitems",
			quality = "tempered",
			suffix = "\n{red}Temepered",
            location = { "onground", "onplayer", "equipped", "atvendor" },
			hide = false,
			filter_levels = "1,2,3"
		},
		--Rule 4, Shows Crafted tag.
		{
			codes = "allitems",
			quality = "crafted",
			suffix = "\n{red} Crafted",
			hide = false,
			filter_levels = "1,2,3"
		},
		--Rule 5, Low rune name.
		{
			codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11"},
			suffix = "\n{gray} Low Points Rune",
			--notify = "{gray} Low Rune Points!{orange}{link}", --Disabled, remove -- in fron of notify to activate.				
			hide = false,
			filter_levels = "1,2,3"
		},
		--Rule 6, Mid rune name.
		{
			codes = { "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22"},
			suffix = "\n{green} Mid Points Rune",
			--notify = "{green} Mid Rune Points!{orange}{link}", --Disabled, remove -- in fron of notify to activate.		
			hide = false,
			filter_levels = "1,2,3"
		},
		--Rule 7, High rune name with notify.
		{
			codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
			suffix = "\n{red} High Points Rune",
			notify = "{red} High Rune Points!{orange}{link}",
			hide = false,
			filter_levels = "1,2,3"
		},		
		--Rule 8, Ultra rune name with notify.
		{
			codes = { "r34", "r35", "r36"},
			name_style = "Rainbow",
			suffix = "\n Ultra Points Rune",
			notify = "{pink} Ultra Rune Points!{orange}{link}",
			hide = false,
			filter_levels = "1,2,3"
		},
		--Rule 9, DemonTempering name with notify.
		{
			codes = { "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", 
			"C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", 
			"C34", "C35", "C36", "C37"},
			name_style = "Toxic Fog",
			suffix = "\n Temepered Mats!",
			notify = "{pink} Tempered Material!{red}{link}",
			filter_levels = "1,2,3"
		},
		
--[[				Rule 10-11 Hide Gold.
]]--	
	
		--Rule 10, Hide Gold level 50-98
		{
			code = "gld",
			stat = { index = 14, op = "<=", value = 1000 }, --Goldstack under 1000 is hidden.
			pstat = { index = 12, op = ">=", value = 50 }, -- Level above 50.
			location = "onground",
			name_override = "G",
			hide = true, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "2,3"
		},		
		--Rule 11, Hide Gold level 99+
		{
			code = "gld",
			stat = { index = 14, op = "<=", value = 5000 }, --Goldstack under 5000 is hidden.
			pstat = { index = 12, op = ">=", value = 99 }, -- Level above 99.
			location = "onground",
			hide = true, 
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "3"
		},
--[[				Rule 12-17 Hide all Inferior and normal types of weapons.
]]--
		--Rule 12, hide all Inferior, Normal Weapons
		{
			codes = { "rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
			"mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
			"tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
			"clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
			"kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
			"bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
			"hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
			quality = "1",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 13, hide all Inferior, Exceptional Weapons
		{
			codes = { "8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
			"9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
			"9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
			"9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
			"8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
			"9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
			"9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
			quality = "1",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"			
		},		
		--Rule 14, hide all Inferior, Elite Weapons	
		{
			codes = { "l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
			"7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
			"7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
			"6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
			"7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
			"7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
			"7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
			quality = "1",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"	
		},
		--Rule 15, hide all Normal, Normal Weapons
		{
			codes = { "rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
			"mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
			"tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
			"clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
			"kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
			"bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
			"hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
			quality = "2",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 16, hide all Normal, Exceptional Weapons
		{
			codes = { "8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
			"9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
			"9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
			"9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
			"8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
			"9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
			"9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
			quality = "2",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"			
		},
		--Rule 17, hide all Normal, Elite Weapons	 
		{
			codes = { "7sp", "7ts", "7o7", "Ss2", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
			"7bs", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
			"7gw", "7sr", "7vo", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
			"6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
			"7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
			"7b7", "7wc", "Ss4", "6l7", "6rx", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
			"7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1", "l13", "l17", "l14", "l15", "l16"},
			quality = "2",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},		
		
--[[				Rule 18-19 Hides Superior Weapons that is Normal och Exceptional Rarity.

					Disabled due to low level req might be needed.

		--Rule 18, Hide all Superior, Normal Weapons
		{
			codes = { "rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
			"mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
			"tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
			"clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
			"kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
			"bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
			"hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
			quality = "3",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},		
		--Rule 19, Hide all Superior, Exceptional Weapons
		{
			codes = { "8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
			"9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
			"9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
			"9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
			"8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
			"9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
			"9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
			quality = "3",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"			
		},
]]--

--[[				Rule 20-25 Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.
]]--
		
		--Rule 20, hide all Magic, Normal Weapons
		{
			codes = { "rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
			"mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
			"tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
			"clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
			"kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
			"bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
			"hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
			quality = "4",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 21, hide all Magic, Exceptional Weapons
		{
			codes = { "8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
			"9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
			"9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
			"9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
			"8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
			"9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
			"9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
			quality = "4",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},		
		--Rule 22, hide all Magic, Elite Weapons	
		{
			codes = { "l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
			"7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
			"7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
			"6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
			"7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
			"7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
			"7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
			quality = "4",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"			
		},
		--Rule 23, hide all Rare, Normal Weapons
		{
			codes = { "rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
			"mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
			"tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
			"clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
			"kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
			"bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
			"hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
			quality = "6",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 24, hide all Rare, Exceptional Weapons
		{
			codes = { "8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
			"9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
			"9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
			"9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
			"8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
			"9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
			"9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
			quality = "6",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"		
		},		
		--Rule 25, hide all Rare, Elite Weapons	
		{
			codes = { "l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
			"7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
			"7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
			"6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
			"7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
			"7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
			"7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
			quality = "6",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},

--[[				Rule 26-31 Hide all Inferior and normal types of Armors.
]]--
		--Rule 26, hide all Inferior, Normal Armors
		{
			codes = { "dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
			"bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
			"ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
			"dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
			"buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
			"hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
			quality = "1",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 27, hide all Inferior, Exceptional Armors
		{
			codes = { "xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
			"ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
			"pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
			"Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
			"nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
			quality = "1",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"	
		},		
		--Rule 28, hide all Inferior, Elite Armors	
		{
			codes = { "nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
			"ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
			"pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
			"Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
			"uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
			"umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
			"Oa3"},
			quality = "1",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},		
		--Rule 29, hide all Normal, Normal Armors
		{
			codes = { "dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
			"bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
			"ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
			"dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
			"buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
			"hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
			quality = "2",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 30, hide all Normal, Exceptional Armors
		{
			codes = { "xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
			"ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
			"pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
			"Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
			"nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
			quality = "2",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "1,2,3"
		},		
		--Rule 31, hide all Normal, Elite Armors	 
		{
			codes = { "nef", "utc", "paf", "pab", "uul", "l04", "Bp6", "pae", "utp", "utg", "baf", "ulc", 
			"ci3", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
			"pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", 
			"Ag6", "Sa6", "bab", "urg", "ult", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
			"uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
			"umc", "dre", "Ab6", "Zc3", "ulb", "uml", "Bb6", "Bb3", "ulg", "uth", "Bp3", "bad", "urs", "Wp3", "uuc", 
			"Oa3", "l01", "l03", "l09", "l08", "l12", "l11", "l06", "l02", "l07", "l10", "l05"},
			quality = "2",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },	
			filter_levels = "1,2,3"
		},	

--[[				Rule 32-33 Hides Superior Armors that is Normal och Exceptional Rarity.

					Disabled due to low level req might be needed.

		--Rule 32, Hide all Superior, Normal Armors
		{
			codes = { "dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
			"bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
			"ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
			"dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
			"buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
			"hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
			quality = "3",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 33, Hide all superior, Exceptional Armors
		{
			codes = { "xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
			"ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
			"pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
			"Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
			"nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
			quality = "3",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "1,2,3"
		},
]]--

--[[				Rule 34-39 Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.
]]--

		--Rule 34, hide all Magic, Normal Armors
		{
			codes = { "dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
			"bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
			"ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
			"dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
			"buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
			"hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
			quality = "4",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 35, hide all Magic, Exceptional Armors
		{
			codes = { "xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
			"ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
			"pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
			"Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
			"nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
			quality = "4",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "1,2,3"
		},		
		--Rule 36, hide all Magic, Elite Armors	
		{
			codes = { "nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
			"ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
			"pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
			"Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
			"uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
			"umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
			"Oa3"},
			quality = "4",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },	
			filter_levels = "1,2,3"
		},
		--Rule 37, hide all Rare, Normal Armors
		{
			codes = { "dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
			"bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
			"ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
			"dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
			"buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
			"hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
			quality = "6",
			rarity = "0",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 38, hide all Rare, Exceptional Armors
		{
			codes = { "xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
			"ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
			"pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
			"Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
			"nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
			quality = "6",
			rarity = "1",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "1,2,3"
		},		
		--Rule 39, hide all Rare, Elite Armors	
		{
			codes = { "nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
			"ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
			"pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
			"Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
			"uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
			"umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
			"Oa3"},
			quality = "6",
			rarity = "2",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },	
			filter_levels = "1,2,3"
		},

--[[				Rule 40-41 Hide Arrows that are Inferior, Normal, Superior, Magic and Rare.
]]--

		--Rule 40, Arrows who?
		{
			code = "aqv",
			quality = "4-",
			rarity = "2-",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },	
			filter_levels = "1,2,3"
		},
		--Rule 41, rare Arrows who? 
		{
			code = "aqv",
			quality = "6",
			rarity = "2-",
			runeword = false,
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "2,3"
		},				

--[[				Rule 42-43 Hide all Gems.
]]--		

		--Rule 42, Hide all low Gems.
		{
			codes = { "gcr", "gcy", "gcb", "gsy", "gfv", "gfw", "gfy", "gfb", "skf", "gfg", "gsg", "sku", "gsr", "gsv", "gsw", "gfr", "gsb", "glb", "glw", "gzv", "glg", "skl", "glr", "skc", "gly"},
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },			
			filter_levels = "2,3"
		},
		--Rule 43, Hide all high Gems. DISABLE THIS IF YOU NEED GEMS.
		{
			codes = { "gpv", "skz", "gpr", "gpg", "gpb", "gpy", "gpw"},
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },		
			filter_levels = "3"			
		},
		
--[[				Rule 44-47, Hide Bases that dont have 0 or MAX socket count for that base.
]]--

		-- Rule 44, Hide bases that don't roll their maximum of 3 sockets. 
		{
		codes = { "xla", "xui", "xea", "brs", "chn", "ltp", "scl", "rng", "9cl", "clb", "7cl", "7ha", "9ha", "hax",
		"sbw", "7sp", "9sp", "spc", "7cs", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar",
		"9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "amf", "ama", "am5", "7s7", "7ja", "7pi", "9pi", "9s9",
		"9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac",
		"mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "6ss", "8ss", "sst",
		"k01", "k02", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9ss", "9sm", "9sb", "9fc", "flc", "sbr", "ssd", 
		"scm", "wsd", "ne6", "ne7", "ne1", "ne2", "uuc", "xsh", "bsh", "lrg", "spk", "dr9", "dr1", "bab", "bae", "bad", 
		"bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba1", "ba2", "ba3", "drb", "drf", "drd", "dre", 
		"drc", "dr6", "dr7", "dr8", "dra", "dr3", "dr4", "dr2", "dr5", "ulm", "uh9", "urn", "usk", "uhl", "ukp", "uap", 
		"uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", 
		"Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "ci0", "ci1", "ci2", "ci3", "ulb", "uvb", "umb", "utb", 
		"uhb", "xvb", "xmb", "xtb", "xhb", "hbt", "tbt", "Ab1", "Ab4", "Ab2", "Ab5", "Ab3", "Ab6", "l11", "Ag2", "Ag4", 
		"Ag5", "Ag6", "uvg", "xvg", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "ulg", "utg", "uhg", "umg", "xmg", "xtg", 
		"xhg", "tgl", "hgl", "l10" , "l08", "l09"},
		quality = "3-",
		sockets = "1, 2",
		runeword = false,
		hide = true,
		area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
		filter_levels = "2,3"
		},
		-- Rule 45, Hide bases that don't roll their maximum of 4 sockets. 
		{ 
		codes = { "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Bp3", "Bp6", "Bp1", 
		"Bp4", "Bp2", "Bp5", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "utp", "upl", "uhn", "ung", "uui", "urs", "ult",
		"uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl",
		"xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "Ca1", "Ca4", "Ca5", "Ca2", "Ca6", "Ca3",
		"Ss3", "Ss4", "Bf4", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls",
		"8cs", "8bs", "8ls", "bst", "cst", "lst", "bsw", "k03", "72h", "92h", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs",
		"bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp", "nef", "neg", "neb", "ned", "nee",
		"ne9", "nea", "ne8", "ne5", "ne4", "ne3", "pad", "pac", "pab", "paf", "pae", "pa7", "pa6", "pa9", "pa8", "paa", 
		"pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "urg", "uml", "uit", "ush", "uts", "xts", "xpk", "xit", "xow",
		"xrg", "gts", "kit", "tow", "l12", "l01", "l02", "l03", "l04", "l05", "l06" },
		quality = "3-",
		sockets = "1, 2, 3",
		runeword = false,
		hide = true,
		area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
		filter_levels = "2,3"
		},
		-- Rule 46, Hide bases that don't roll their maximum of 5 sockets.
		{ 
		codes = { "axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx",
		"6mx", "6lx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8" },
		quality = "3-",
		sockets = "1, 2, 3, 4",
		runeword = false,
		hide = true,
		area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
		filter_levels = "2,3"
		},
		-- Rule 48, Hide bases that don't roll their maximum of 6 sockets. 
		{
		codes = { "Ss1", "7s8", "7fb", "Ss2", "9mp", "mpi", "7mp", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7",
		"Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf5", "Bf6", "7wa", "7ga", "7bt", "72a", "7la", "7gi", "7ba", "7ax", "9gi",
		"9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amc", "amb", "am6", "am7", "6l7",
		"6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "6hx", "8hx", "hxb",
		"7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "9fl", "7vo", "7pa", "7st", "7h7", "7sr",
		"7br", "7o7", "7tr", "7p7", "9h9", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt",
		"7ws", "9ws", "7mp", "7wc", "9wc", "9s8", "mpi", "wsc", "amd", "ame", "am8", "am9", "am3", "am4", "Ds4", "Ds5",
		"Ds6", "6ws", "8ws", "wst", "7gd", "7gd", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "7cr", "9cr",
		"crs", "7b8", "l13", "l14", "l15", "l16", "l17"  },
		quality = "3-",
		sockets = "1, 2, 3, 4, 5",
		runeword = false,
		hide = true,
		area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
		filter_levels = "2,3"
		},
		
--[[				Rule 49-53 Shows all SUPERIOR ITEMS with max suffix stat and border + notify
]]--

		-- Rule 49, 
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = 	{
			{ index = 0, op = "==", value = 15 }, --MAX STR = MAX ATTR!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} Attribute!",	
			filter_levels = "1,2,3"			
		},
		
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 39, op = "==", value = 10 }, --MAX FIRE RESS = MAX ALL RES!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} All Res!",		
			filter_levels = "1,2,3"
		},

		{
			codes = { "Bp4", "Bp5"},
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 39, op = "==", value = 25 }, --MAX FIRE RESS = MAX ALL RES!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} All Res!",		
			filter_levels = "1,2,3"
		},

		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 40, op = "==", value = 5 }, --MAX MAXFIRERESS = MAX RES!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} Max res!",		
			filter_levels = "1,2,3"
		},		
		
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 136, op = "==", value = 10 }, --MAX CRUSHING BLOW!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} CB/AR!",		
			filter_levels = "1,2,3"
		},

		{
			code = { "Bm7", "Bm9"},
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 136, op = "==", value = 30 }, --MAX CRUSHING BLOW!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} CB/AR!",		
			filter_levels = "1,2,3"
		},
		
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 96, op = "==", value = 15 }, --MAX RUN SPEED!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} Run Speed!",		
			filter_levels = "1,2,3"
		},
		
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 333, op = "==", value = 10 }, --MAX -ENEMY RES!
			{ index = 187, op = "==", value = 10 }, --MAX -IMMUNITY!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} -Res/Immune!",		
			filter_levels = "1,2,3"
		},	
		
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 93, op = "==", value = 15 }, --MAX ATTACKSPEED!
			{ index = 105, op = "==", value = 15 }, --MAX CASTSPEED!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} Atkspd/FCR!",		
			filter_levels = "1,2,3"
		},	
		
		
		-- Rule 50,
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 85, op = "==", value = 10 }, --MAX EXPERIENCE GAINED!
			{ index = 60, op = "==", value = 5 }, --MAX LIFE STOLEN PER HIT!
			{ index = 62, op = "==", value = 5 }, --MAX MANA STOLEN PER HIT!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} Exp/Life/Mana!",		
			filter_levels = "1,2,3"
		},		
		-- Rule 51,
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = {
			{ index = 286, op = "==", value = 15 }, --MAX COOLDOWN!
			{ index = 427, op = "==", value = 20 }, --MAX BUFF DURATION!
					},
			border = { 255, 128, 0, 230 },
			--notify = "Maxed Superior!",
			--name_style = "Rainbow",
			suffix = "\n {red} CD/Buff!",	
			filter_levels = "1,2,3"
		},
		-- Rule 52, Hides Supperior items by checking between the stats.
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = OR 	{
			{ index = 0, op = "between", value = {1,14 }, }, --MAX STR = MAX ATTR!
			{ index = 39, op = "between", value = {1,9 }, }, --MAX FIRE RESS = MAX ALL RES!
			{ index = 40, op = "between", value = {1,4, }, }, --MAX MAXFIRERESS = MAX RES!
			{ index = 136, op = "between", value = {1,9, }, }, --MAX CRUSHING BLOW!
			{ index = 96, op = "between", value = {1,14, }, }, --MAX RUN SPEED!
			{ index = 333, op = "between", value = {1,9, }, }, --MAX -ENEMY RES! / IMMUNITY!
			{ index = 187, op = "between", value = {1,9, }, }, --MAX -ENEMY RES! / IMMUNITY!
			{ index = 93, op = "between", value = {1,14}, }, --MAX ATTACKSPEED! / CASTSPEED
			{ index = 105, op = "between", value = {1,14}, }, --MAX ATTACKSPEED! / CASTSPEED
			{ index = 85, op = "between", value = {1,9, }, }, --MAX EXPERIENCE GAINED!
			{ index = 60, op = "between", value = {1,4, }, }, --MAX LIFE STOLEN PER HIT!
			{ index = 62, op = "between", value = {1,4, }, }, --MAX MANA STOLEN PER HIT!
			{ index = 286, op = "between", value = {1,14, }, }, --MAX COOLDOWN!
			{ index = 427, op = "between", value = {1,19, }, }, --MAX BUFF DURATION!
						},
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "2,3"
		},

		-- Rule 53, Shows Indestructible Superior items.
		{
			codes = "allitems",
			quality = "3",
			runeword = false,
			location = "onground",
			stat = { index = 152, op = "==", value = 1 },
			suffix = "{grey}\n Indestructible",
			filter_levels = "1,2,3"
		},
		
--[[				Rule 54-   MISC OR THINGS I FORGOT.
]]--		
		
		--Rule 54, Treasures Notify
		{
		    codes = { "Rgx","Ev0", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "y33" },
            notify = "ÿc;Treasure Nearby",
			filter_levels = "1,2,3"
		},

		--Rule 56, Hide Magic Rings/Amulet, if you want to get Magic rings/Amulet, change: hide = true, to: false, .
		{
			codes = {"rin", "amu"},
			quality = "4",
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "2,3"
		},
		--Rule 57, Scrolls of Torment.
		{
			codes = { "K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", 
			"K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", 
			"K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80"},
			name_style = "Frost Wave",
			suffix = "\n Trial Portal",
			notify = "{pink} Trial Portal!{red}{link}",
			filter_levels = "1,2,3"
		},
		--Rule 58, Hide Magic Jewels, if you want to get Magic Jewels, change: hide = true, to: false, .
		{
			code = "jew",
			quality = "4",
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "2,3"
		},
		--Rule 59, Charms, to hide Magic charms, change: hide = false, to: true, .
		{
			codes = { "cm1", "cm2", "cm3"},
			quality = "4",
			hide = false,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 60, Weird items to hide.
		{
			codes = { "Ag2", "Ag5", "Na5", "Na2", "Sa2", "Sa5"},
			quality = { "1", "2", "4", "6"},
			rarity = "2-",
			location = "onground",
			hide = true,
			area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
			filter_levels = "1,2,3"
		},
		--Rule 61, Hide pots, Minor/major HP / MP, small Rejuvs.
		{
			codes = { "hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs"},
			location = "onground",
			hide = true,
			filter_levels = "2,3"
		},

		
        { --Display item levels for weapons, armors, charms, jewels, rings and amulets in white, to the right of item name, (x)
            codes = "allitems",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            suffix = " {white}({ilvl})",
			filter_levels = "1,2,3"
        },

        { --Display RMD "Elite Bases" with a special EB icon in RMD Red, to the right of item name
            codes = "allitems",
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            suffix = " {tan}ⅲ",
			filter_levels = "1,2,3"
        },
        { --Display RMD "Limit Broken Bases" with a special LB icon in RMD Red, to the right of item name
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            ilvl = "103+",
            suffix = " {tan}ⅳ",
			filter_levels = "1,2,3"
        },
        { --Display gold values normally, without ilvls
            codes = "gld",
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = 4,
            name_override = "{name} Gold",
			filter_levels = "1,2,3"
        },
	}
}
		
--[[
		qualityMap = { [1] = "Inferior", [2] = "Normal", [3] = "Superior", [4] = "Magic", [5] = "Set", [6] = "Rare", [7] = "Unique", [8] = "Crafted", [9] = "Tempered" }
		rarityMap = { [0] = "Normal", [1] = "Exceptional", [2] = "Elite" }
		difficultyMap = { [0] = "Normal", [1] = "Nightmare", [2] = "Hell" }
		locationMap = { onplayer = 0, equipped = 1 , onground = 3, dropping = 5 }
		colorMap = { white = "ÿc0", red = "ÿc1", green = "ÿc2", blue = "ÿc3", gold = "ÿc4", grey = "ÿc5", gray = "ÿc5", black = "ÿc6", tan = "ÿc7", orange = "ÿc8", yellow = "ÿc9", purple = "ÿc;", ["dark green"] = "ÿcA", turquoise = "ÿcN", pink = "ÿcO" }
		colorMapLink = { white = "0", red = "1", green = "2", blue = "3", gold = "4", grey = "5", gray = "5", black = "6", tan = "7", orange = "8", yellow = "9", purple = ";", ["dark green"] = "A", turquoise = "N", pink = "O" }
		ColorsOfTheRainbow = { "ÿc1", "ÿc2", "ÿc3", "ÿc4", "ÿc5", "ÿc7", "ÿc8", "ÿc9", "ÿc;", "ÿcA", "ÿcN", "ÿcO" }
		FlameColors = { "ÿc1", "ÿc8", "ÿc5", "ÿcU" }
		CandyColors = { "ÿcN", "ÿc3", "ÿc;", "ÿcO" }
		OceanColors = { "ÿcN", "ÿc3", "ÿcT", "ÿcP" }
		ToxicColors = { "ÿc2", "ÿcA", "ÿc0" }
]]--
--[[		

Index for: stat = { index = 

0 -- strength
1 -- energy
2 -- dexterity
3 -- vitality
4 -- statpts
5 -- newskills
6 -- hitpoints
7 -- maxhp
8 -- mana
9 -- maxmana
10 -- stamina
11 -- maxstamina
12 -- level
13 -- experience
14 -- gold
15 -- Gold bank
16 -- item_armor_percent
17 -- item_maxdamage_percent
18 -- item_mindamage_percent
19 -- tohit
20 -- toblock
21 -- mindamage
22 -- maxdamage
23 -- secondary_mindamage
24 -- secondary_maxdamage
25 -- damagepercent
26 -- manarecovery
27 -- manarecoverybonus
28 -- staminarecoverybonus
29 -- lastexp
30 -- nextexp
31 -- armorclass
32 -- armorclass_vs_missile
33 -- armorclass_vs_hth
34 -- normal_damage_reduction
35 -- magic_damage_reduction
36 -- damageresist
37 -- magicresist
38 -- maxmagicresist
39 -- fireresist
40 -- maxfireresist
41 -- lightresist
42 -- maxlightresist
43 -- coldresist
44 -- maxcoldresist
45 -- poisonresist
46 -- maxpoisonresist
47 -- damageaura
48 -- firemindam
49 -- firemaxdam
50 -- lightmindam
51 -- lightmaxdam
52 -- magicmindam
53 -- magicmaxdam
54 -- coldmindam
55 -- coldmaxdam
56 -- coldlength
57 -- poisonmindam
58 -- poisonmaxdam
59 -- poisonlength
60 -- lifedrainmindam
61 -- lifedrainmaxdam
62 -- manadrainmindam
63 -- manadrainmaxdam
64 -- stamdrainmindam
65 -- stamdrainmaxdam
66 -- stunlength
67 -- velocitypercent
68 -- attackrate
69 -- other_animrate
70 -- quantity
71 -- value
72 -- durability
73 -- maxdurability
74 -- hpregen
75 -- item_maxdurability_percent
76 -- item_maxhp_percent
77 -- item_maxmana_percent
78 -- item_attackertakesdamage
79 -- item_goldbonus
80 -- item_magicbonus
81 -- item_knockback
82 -- item_timeduration
83 -- item_addclassskills
84 -- unsentparam1
85 -- item_addexperience
86 -- item_healafterkill
87 -- item_reducedprices
88 -- item_doubleherbduration
89 -- item_lightradius
90 -- item_lightcolor
91 -- item_req_percent
92 -- item_levelreq
93 -- item_fasterattackrate
94 -- item_levelreqpct
95 -- lastblockframe
96 -- item_fastermovevelocity
97 -- item_nonclassskill
98 -- state
99 -- item_fastergethitrate
100 -- monster_playercount
101 -- skill_poison_override_length
102 -- item_fasterblockrate
103 -- skill_bypass_undead
104 -- skill_bypass_demons
105 -- item_fastercastrate
106 -- skill_bypass_beasts
107 -- item_singleskill
108 -- item_restinpeace
109 -- curse_resistance
110 -- item_poisonlengthresist
111 -- item_normaldamage
112 -- item_howl
113 -- item_stupidity
114 -- item_damagetomana
115 -- item_ignoretargetac
116 -- item_fractionaltargetac
117 -- item_preventheal
118 -- item_halffreezeduration
119 -- item_tohit_percent
120 -- item_damagetargetac
121 -- item_demondamage_percent
122 -- item_undeaddamage_percent
123 -- item_demon_tohit
124 -- item_undead_tohit
125 -- item_throwable
126 -- item_elemskill
127 -- item_allskills
128 -- item_attackertakeslightdamage
129 -- ironmaiden_level
130 -- lifetap_level
131 -- thorns_percent
132 -- bonearmor
133 -- bonearmormax
134 -- item_freeze
135 -- item_openwounds
136 -- item_crushingblow
137 -- item_kickdamage
138 -- item_manaafterkill
139 -- item_healafterdemonkill
140 -- item_extrablood
141 -- item_deadlystrike
142 -- item_absorbfire_percent
143 -- item_absorbfire
144 -- item_absorblight_percent
145 -- item_absorblight
146 -- item_absorbmagic_percent
147 -- item_absorbmagic
148 -- item_absorbcold_percent
149 -- item_absorbcold
150 -- item_slow
151 -- item_aura
152 -- item_indesctructible
153 -- item_cannotbefrozen
154 -- item_staminadrainpct
155 -- item_reanimate
156 -- item_pierce
157 -- item_magicarrow
158 -- item_explosivearrow
159 -- item_throw_mindamage
160 -- item_throw_maxdamage
161 -- skill_handofathena
162 -- skill_staminapercent
163 -- skill_passive_staminapercent
164 -- skill_concentration
165 -- skill_enchant
166 -- skill_pierce
167 -- skill_conviction
168 -- skill_chillingarmor
169 -- skill_frenzy
170 -- skill_decrepify
171 -- skill_armor_percent
172 -- alignment
173 -- target0
174 -- target1
175 -- goldlost
176 -- conversion_level
177 -- conversion_maxhp
178 -- unit_dooverlay
179 -- attack_vs_montype
180 -- damage_vs_montype
181 -- fade
182 -- armor_override_percent
183 -- killtrack
184 -- deathtrack
185 -- bonus_mindamage
186 -- bonus_maxdamage
187 -- item_pierce_cold_immunity
188 -- item_addskill_tab
189 -- item_pierce_fire_immunity
190 -- item_pierce_light_immunity
191 -- item_pierce_poison_immunity
192 -- item_pierce_damage_immunity
193 -- item_pierce_magic_immunity
194 -- item_numsockets
195 -- item_skillonattack
196 -- item_skillonkill
197 -- item_skillondeath
198 -- item_skillonhit
199 -- item_skillonlevelup
200 -- item_charge_noconsume
201 -- item_skillongethit
202 -- modifierlist_castid
203 -- unused203
204 -- item_charged_skill
205 -- item_noconsume
206 -- passive_mastery_noconsume
207 -- passive_mastery_replenish_oncrit
208 -- Item_Enhanced
209 -- pali_killtrack
210 -- unused210
211 -- unused211
212 -- passive_mastery_gethit_rate
213 -- passive_mastery_attack_speed
214 -- item_armor_perlevel
215 -- item_armorpercent_perlevel
216 -- item_hp_perlevel
217 -- item_mana_perlevel
218 -- item_maxdamage_perlevel
219 -- item_maxdamage_percent_perlevel
220 -- item_strength_perlevel
221 -- item_dexterity_perlevel
222 -- item_energy_perlevel
223 -- item_vitality_perlevel
224 -- item_tohit_perlevel
225 -- item_tohitpercent_perlevel
226 -- item_cold_damagemax_perlevel
227 -- item_fire_damagemax_perlevel
228 -- item_ltng_damagemax_perlevel
229 -- item_pois_damagemax_perlevel
230 -- item_resist_cold_perlevel
231 -- item_resist_fire_perlevel
232 -- item_resist_ltng_perlevel
233 -- item_resist_pois_perlevel
234 -- item_absorb_cold_perlevel
235 -- item_absorb_fire_perlevel
236 -- item_absorb_ltng_perlevel
237 -- item_absorb_mag_perlevel
238 -- item_thorns_perlevel
239 -- item_find_gold_perlevel
240 -- item_find_magic_perlevel
241 -- item_regenstamina_perlevel
242 -- item_stamina_perlevel
243 -- item_damage_demon_perlevel
244 -- item_damage_undead_perlevel
245 -- item_tohit_demon_perlevel
246 -- item_tohit_undead_perlevel
247 -- item_crushingblow_perlevel
248 -- item_openwounds_perlevel
249 -- item_kick_damage_perlevel
250 -- item_deadlystrike_perlevel
251 -- item_find_gems_perlevel
252 -- item_replenish_durability
253 -- item_replenish_quantity
254 -- item_extra_stack
255 -- item_find_item
256 -- item_openwounds_perstr
257 -- item_deadlystrike_perdex
258 -- item_deadlystrike_perstr
259 -- item_armor_perstr
260 -- item_fastercastrate_perenr
261 -- item_crushingblow_perstr
262 -- item_strength_percent
263 -- item_dexterity_percent
264 -- item_vitality_percent
265 -- item_energy_percent
266 -- item_splash
267 -- item_skillonmisshit
268 -- skill_freezesyn
269 -- skill_chillsyn
270 -- cheatcheck
271 -- item_attackertakesfiredamage
272 -- dont_use_me_272
273 -- dont_use_me_273
274 -- mana_per_gethit
275 -- life_per_gethit
276 -- ex_missiles
277 -- item_attackertakescolddamage
278 -- ex_attacks
279 -- map_quality
280 -- curse_resistance_perenr
281 -- sum_dmg_perc
282 -- sum_speed
283 -- sum_ex
284 -- sum_hp_perc
285 -- sum_cr
286 -- item_cooldownreduction
287 -- item_pierce_perdex
288 -- skill_bonesyn
289 -- skill_rage
290 -- skill_focus
291 -- GB_Total
292 -- RB_Low
293 -- RB_Mid
294 -- RB_High
295 -- KB_Terror
296 -- KB_Hate
297 -- KB_Dest
298 -- OB_Diablo
299 -- OB_Baal
300 -- OB_Meph
301 -- unused301
302 -- relic_tracker
303 -- oskill_display
151 -- aura_display
305 -- item_pierce_cold
306 -- item_pierce_fire
307 -- item_pierce_ltng
308 -- item_pierce_pois
309 -- item_damage_vs_monster
310 -- item_damage_percent_vs_monster
311 -- item_tohit_vs_monster
312 -- item_tohit_percent_vs_monster
313 -- item_ac_vs_monster
314 -- item_ac_percent_vs_monster
315 -- firelength
316 -- burningmin
317 -- burningmax
318 -- progressive_damage
319 -- progressive_steal
320 -- progressive_other
321 -- progressive_fire
322 -- progressive_cold
323 -- progressive_lightning
324 -- item_extra_charges
325 -- progressive_tohit
326 -- poison_count
327 -- damage_framerate
328 -- pierce_idx
329 -- passive_fire_mastery
330 -- passive_ltng_mastery
331 -- passive_cold_mastery
332 -- passive_pois_mastery
333 -- passive_fire_pierce
334 -- passive_ltng_pierce
335 -- passive_cold_pierce
336 -- passive_pois_pierce
337 -- passive_critical_strike
338 -- passive_dodge
339 -- passive_avoid
340 -- passive_evade
341 -- passive_warmth
342 -- passive_mastery_melee_th
343 -- passive_mastery_melee_dmg
344 -- passive_mastery_melee_crit
345 -- passive_mastery_throw_th
346 -- passive_mastery_throw_dmg
347 -- passive_mastery_throw_crit
348 -- passive_weaponblock
349 -- passive_summon_resist
350 -- modifierlist_skill
351 -- modifierlist_level
352 -- last_sent_hp_pct
353 -- source_unit_type
354 -- source_unit_id
355 -- shortparam1
356 -- questitemdifficulty
357 -- passive_mag_mastery
358 -- passive_mag_pierce
359 -- skill_cooldown
360 -- skill_missile_damage_scale
361 -- CD_White
362 -- CD_Black
363 -- CD_Blue
364 -- CD_Red
365 -- CD_Green
366 -- CD_Yellow
367 -- CD_Purple
368 -- CD_Tracker
369 -- score_tracker
370 -- Soul_Ama
371 -- Soul_Sor
372 -- Soul_Nec
373 -- Soul_Pal
374 -- Soul_Bar
375 -- Soul_Dru
376 -- Soul_Ass
377 -- RW_Tracker
378 -- Celestial_Aid
379 -- boneadded
380 -- vitality_hidden
381 -- hsbonus
382 -- item_slow_perdex
383 -- chest_treasure
384 -- enhance_low
385 -- enhance_high
386 -- ucore_tracker
387 -- portals_unlock
388 -- smite
389 -- kill_dummy
390 -- kill_display
391 -- item_killregister
392 -- death_dummy
393 -- death_display
394 -- item_deathregister
395 -- sorceress
396 -- mana_per_hit
397 -- life_per_hit
398 -- body_level
399 -- unused399
400 -- incant_duration
401 -- incant_radius
402 -- demontemper_check
403 -- item_ravendamage
404 -- item_maulsteal
405 -- item_feralsteal
406 -- Soul_Tracker
407 -- item_fireskill
408 -- item_lightskill
409 -- item_coldskill
410 -- item_poisskill
411 -- item_magskill
412 -- Soul_Level
413 -- item_openwounds_perdex
414 -- Weight_Tracker
415 -- Weight_Capacity
416 -- Weight_CapacityBase
417 -- hitpoints_hidden
418 -- fireball_radius
419 -- JB_Rare
420 -- PB_Rejuv
421 -- KillBonus
422 -- KillBonus_Dummy
423 -- KillBonus_Display
424 -- item_fasterattackrate_perstr
425 -- item_tohit_perenr
426 -- item_fasterattackrate_perenr
427 -- buff_length_modifier
428 -- skel_commander
429 -- Weight_Dummy
430 -- Weight_Display
431 -- Freeze_HalfToFull
432 -- map_e_defper
433 -- map_e_hpper
434 -- map_e_level
435 -- map_e_dmgres
436 -- map_e_magres
437 -- map_e_fireres
438 -- map_e_lightres
439 -- map_e_coldres
440 -- map_e_psnres
441 -- map_e_speeda
442 -- map_e_speedm
443 -- map_e_cnbf
444 -- map_e_allskills
445 -- map_e_crush
446 -- map_p_defper
447 -- map_p_hpper
448 -- map_p_dmgres
449 -- map_p_magres
450 -- map_p_fireres
451 -- map_p_lightres
452 -- map_p_coldres
453 -- map_p_psnres
454 -- map_p_speedm
455 -- map_p_speeda
456 -- map_p_speedc
457 -- map_p_cnbf
458 -- map_p_demon
459 -- map_p_undead
460 -- map_p_maek
461 -- map_p_haek
462 -- map_p_gold
463 -- map_p_magic
464 -- map_p_exp
465 -- map_p_itd
466 -- map_p_cdr
467 -- map_p_crush
468 -- item_reanimate_display
469 -- item_skillonhit_noctc
470 -- item_skillonhit_hidden
471 -- item_skillongethit_hidden
472 -- item_numsockets_percent
473 -- energy_hidden
474 -- RW_Tier
475 -- RW_TierDisplay
476 -- RB_Ultra
477 -- item_skillonhit_sweeping
478 -- item_skillonhit_cleaving
479 -- item_skillonhit_piercing
480 -- item_skillonmondeath
481 -- xp_hidden
482 -- LB_Unlock
483 -- LB_One
484 -- LB_Two
485 -- LB_Three
]]--
