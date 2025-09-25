--- Filter Title: WolfieeifloW's Filter v1.13
--- Filter Type: Relaxed, non-strict
--- Filter Description: Adding some QoL to the game while maintaining a very LoD-like style.\n\nHides small gold piles, Magic items that can be gambled instead for crafting, and in the later character levels it hides useless & non max-socket bases; everything else is shown.\nNotifies and adds borders to good items and new RMD items.\nFilter is very non-strict. For those who are collectors or those who like to still see loot.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/wolfiefilter.lua

-- For notification messages and some items I use the following color scheme:
-- +--------------------------+
-- | Purple   : highest value |
-- | Red      : high value    |
-- | Yellow   : medium value  |
-- | Green    : low value     |
-- +--------------------------+
-- Think of it as a standard traffic light.
-- Top (highest) color is red, then yellow, than green at the bottom (lowest).
--
-- All items are only hidden OUTSIDE of towns.
-- All items will be shown in towns for muling and other purposes.
--
-- TODO:
-- - Add "+3 Passive And Magic OR +3 Javelin And Spear Skills" rule to filter out non-+3 Javs at higher CLVL
-- - Filter more Magic items that are 'bad' bases
-- - Filter more Base items that are 'bad' bases

return {
    reload = "WolfieeifloW's Filter v1.13: {green}reloaded",
    allowOverrides = true,
    rules = {
        -- +-------------------------+
        -- | GOLD                    |
        -- +-------------------------+
        { -- Rule 1: Hide 100 gold and less if Character Level 20+
            code = "gld",
            stat = { index = 14, op = "<=", value = 100 },
            pstat = { index = 12, op = ">=", value = 20 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 2: Hide 125 gold and less if Character Level 40+
            code = "gld",
            stat = { index = 14, op = "<=", value = 125 },
            pstat = { index = 12, op = ">=", value = 40 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 3: Hide 150 gold and less if Character Level 60+
            code = "gld",
            stat = { index = 14, op = "<=", value = 150 },
            pstat = { index = 12, op = ">=", value = 60 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 4: Hide 175 gold and less if Character Level 80+
            code = "gld",
            stat = { index = 14, op = "<=", value = 175 },
            pstat = { index = 12, op = ">=", value = 80 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 5: Hide 200 gold and less if Character Level 99+
            code = "gld",
            stat = { index = 14, op = "<=", value = 200 },
            pstat = { index = 12, op = ">=", value = 99 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | RMD STARTER ITEMS       |
        -- +-------------------------+
        { -- Rule 6: Reminder to pick up Horadric Cube so it doesn't get left behind
            code = "box",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 7: Reminder to pick up Town Portal Book so it doesn't get left behind
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            notify = "{blue}DON'T FORGET ME! {link}",
            border = { 110, 110, 255, 255, 5 }
        },
        { -- Rule 8: Reminder to pick up Identify Book so it doesn't get left behind
            code = "ibk",
            name_override = "{red}Book of Insight",
            notify = "{red}DON'T FORGET ME! {link}",
            border = { 255, 77, 77, 255, 5 }
        },
        { -- Rule 9: Overriding Tome of Town Portal name to the cooler name
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            location = "onplayer"
        },
        { -- Rule 10: Overriding Tome of Identify name to the cooler name
            code = "ibk",
            name_override = "{red}Book of Insight",
            location = "onplayer"
        },
        { -- Rule 11: Reminder to pick up Key so it doesn't get left behind
            code = "key",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 12: Reminder to pick up The Statue of Mythos Soul Tracker so it doesn't get left behind
            codes = { "y01", "y02", "y03", "y04", "y05", "y06", "y07", "y08", "y34", "y35", "y36", "y37", "y38", "y39", "y40" },
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 13: Reminder to pick up Storage Bag so it doesn't get left behind
            code = "Z01",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 14: Fixing Storage Bag helper info
            code = "Z01",
            prefix = "",
            prefix_desc = "{purple}------------------\nÿcU(Cube with item to store it)\n",
            location = "onplayer"
        },
        { -- Rule 15: Reminder to pick up Starter's Cube of Endless Convenience so it doesn't get left behind
            code = "y66",
            notify = "ÿcNDON'T FORGET ME! {link}",
            border = { 6, 165, 221, 255, 5 }
        },
        -- +-------------------------+
        -- | RMD NEW ITEMS           |
        -- +-------------------------+
        { -- Rule 16: Notify and medium border for all Codexes
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58" },
            notify = "{purple}Codex Drop {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 17: Notify and medium border for all Blood Contracts
            codes = { "a00", "A00", "a01", "A01", "a02", "A02", "a03", "A03", "a04", "A04", "a05", "A05", "A06", "a07", "A07", "a08", "A08", "a09", "A09", "A10", "A11", "A12", "A13", "A14", "A15", "A16", "A17", "A18", "A19", "A20", "A21", "A22", "A23", "A24", "A25", "A26", "A27", "A28", "A29", "A30", "A31", "A32", "A33", "A34", "A35", "A36", "A37", "A38", "A39", "A40", "A41", "A42", "A43", "A44", "A45", "A46", "A47", "A48", "A49", "A50", "A51", "A52", "A53", "A54", "A55", "A56", "A57", "A58", "A59", "A60", "A61", "A62", "A63", "A64", "A65", "A66", "a67", "A67", "a68", "A68", "a69", "A69", "a70", "A70", "a71", "A71", "a72", "A72", "a73", "A73", "a74", "A74", "a75", "A75", "a76", "A76", "a77", "A77", "a78", "A78", "a79", "A79", "a80", "A80", "a81", "A81", "a82", "A82", "a83", "A83", "a84", "A84", "a85", "A85", "a86", "A86", "a87", "A87", "a88", "A88", "a89", "A89", "a90", "A90", "a91", "A91", "a92", "A92", "a93", "A93", "a94", "A94", "a95", "A95", "a96", "A96", "a97", "A97", "a98", "A98", "a99", "A99", "b00", "b01", "b02", "b03", "b04", "b05", "b06", "b07", "b08", "b09", "b10", "b11", "b12", "b13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "b22", "b23", "b24", "b25", "b26", "b27", "b28", "b29", "b30", "b31", "b32", "b33", "b34", "b35", "b36", "b37", "b38", "b39", "b40", "b41", "b42", "b43", "b44", "b45", "b46", "b47", "b48", "b49", "b50", "b51", "b52", "b53", "b54", "b55", "b56", "b57", "b58", "b59", "b60", "b61", "b62", "b63" },
            notify = "{purple}RMD Item {orange}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 18: Random RMD items that have gold names (used to match chat color brackets for notify)
            codes = { "a06", "b64", "b65", "BoH", "luv", "m27", "m32", "m33", "m34", "m35", "m36", "Rgx", "TK0", "TK8", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "z00", "z01", "z02", "Z02", "z03", "Z03", "z04", "Z04", "z05", "Z05", "z06", "Z06", "z07", "Z07", "z08", "Z08", "z09", "Z09", "z10", "Z10", "z11", "Z11", "z12", "Z12", "z13", "Z13", "z14", "Z14", "z15", "Z15", "z16", "Z16", "z17", "Z17", "z18", "Z18", "Z19", "Z20", "Z21", "Z22", "Z23", "Z24", "Z25", "Z26", "Z27", "Z28", "Z29", "Z30", "Z31", "Z32", "Z33", "Z34", "Z35", "Z36", "Z37", "Z38", "Z39", "Z40", "Z41", "Z42", "Z43", "Z44", "Z45", "Z46", "Z47", "Z48", "Z49", "Z50", "Z51", "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "z80", "Z80", "z81", "Z81", "z82", "Z82", "z83", "Z83", "z84", "Z84", "Z85", "Z86", "Z87", "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z94", "Z95", "Z96", "Z97", "Z98", "Z99" },
            notify = "{purple}RMD Item {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 19: Random RMD items that have red names (used to match chat color brackets for notify)
            codes = { "hpf", "hpo", "rpl", "rps", "y67" },
            notify = "{purple}RMD Item {red}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 20: Random RMD items that have blue names (used to match chat color brackets for notify)
            codes = { "m00", "m01", "m02", "m03", "m04", "m05", "m06", "m07", "m08", "m09", "m10", "m11", "m12", "m13", "m14", "m15", "m16", "m17", "m18", "m19", "m20", "m21", "m22", "m23", "m24", "m25", "m26" },
            notify = "{purple}RMD Item {blue}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 21: Random RMD items that have white names (used to match chat color brackets for notify)
            codes = { "0sc", "bpl", "bps", "brz", "elx", "eyz", "flg", "fng", "GBd", "hrn", "hrt", "jaw", "m28", "m29", "m30", "m31", "mpf", "mpo", "scz", "sol", "spe", "tal", "tch", "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31", "z32", "z33", "z34", "z35", "z36", "z37", "z38", "z39", "z40", "z41", "z42", "z43", "z44", "z45", "z46", "z47", "z48", "z49", "z50", "z51", "z52", "z53", "z54", "z55", "z56", "z57", "z58", "z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73", "z74", "z75", "z76", "z77" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 22: Random RMD items that have pink names (used to match chat color brackets for notify)
            codes = { "y33" },
            notify = "{purple}RMD Item {pink}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 23: Random RMD items that I'm unsure what color their name is (recoloring them white for now)
            codes = { "Bbp", "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37", "Cr1", "Cr2", "Cr3", "Cr4", "Cr5", "Cr6", "D06", "D07", "D10", "D18", "D22", "D32", "Ebp", "EcW", "Ev0", "Ev1", "Ev2", "Ev3", "Ev4", "Ev5", "Ev6", "Ev7", "Ev8", "Gu1", "Gu2", "Gu3", "Gu4", "Gu5", "IN1", "IN2", "IN3", "IN4", "IN5", "IN6", "IN7", "K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80", "L00", "L01", "L02", "L03", "L04", "L05", "L06", "L07", "L08", "L09", "L10", "L11", "L12", "L13", "L14", "L15", "L16", "L17", "L18", "L19", "L20", "L21", "L22", "L23", "L24", "L25", "L26", "L27", "L28", "L29", "L30", "L31", "L32", "L33", "L34", "L35", "L36", "L37", "L38", "L39", "L40", "L41", "L42", "L43", "L44", "L45", "L46", "L47", "L48", "L49", "L50", "L51", "L52", "L53", "L54", "L55", "L56", "L57", "L58", "L59", "L60", "L61", "L62", "L63", "L64", "L65", "L66", "L67", "L68", "L69", "L70", "L71", "L72", "L73", "L74", "L75", "L76", "L77", "L78", "L79", "L80", "L81", "L82", "L83", "L84", "L85", "L86", "L87", "L88", "L89", "L90", "L91", "L92", "L93", "L94", "L95", "L96", "L97", "L98", "L99", "S01", "TK1", "TK2", "TK3", "TK4", "TK5", "TK6", "TK7", "UCR", "Xbp", "Y20", "Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        -- +-------------------------+
        -- | QUEST ITEMS             |
        -- +-------------------------+
        { -- Rule 24: Notify and medium border all quest items
            codes = { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            notify = "Quest Item {link}",
            border = { 199, 179, 119, 255, 3 }
        },
        -- +-------------------------+
        -- | ESSENCES & TOKEN        |
        -- +-------------------------+
        { -- Rule 25: Notify and small border on essences and tokens
            codes = { "tes", "ceh", "bet", "fed", "toa" },
            notify = "Essence Drop {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        -- +-------------------------+
        -- | UBER ITEMS              |
        -- +-------------------------+
        { -- Rule 26: Notify and small border on Uber items
            codes = { "pk1", "pk2", "pk3", "mbr", "dhn", "bey" },
            notify = "{orange}Ubers Item {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 27: Notify and small border on Standard of Heroes
            code = "std",
            notify = "Ubers Item {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        -- +-------------------------+
        -- | RUNES                   |
        -- +-------------------------+
        { -- Rule 28: Always give runes a small border (will be overridden by other borders below)
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11", "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33", "r34", "r35", "r36" },
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 29: Notify until Character Level 25 and small border for Low Runes
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11" },
            pstat = { index = 12, op = "<=", value = 25 },
            notify = "{green}Low Rune {orange}{link}"
        },
        { -- Rule 30: Notify until Character Level 75 and medium border for Mid Runes
            codes = { "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22" },
            pstat = { index = 12, op = "<=", value = 75 },
            notify = "{yellow}Mid Rune {orange}{link}",
            border = { 255, 168, 0, 255, 3 }
        },
        { -- Rule 31: Notify and large border for High Runes
            codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "{red}High Rune {orange}{link}",
            border = { 255, 168, 0, 255, 5 }
        },
        { -- Rule 32: Notify and extra large border for Ultra Runes
            codes = { "r34", "r35", "r36" },
            notify = "{purple}Ultra Rune {orange}{link}",
            border = { 255, 168, 0, 255, 7 }
        },
        -- +-------------------------+
        -- | MAGIC ITEMS             |
        -- +-------------------------+
        { -- Rule 33: Hide all non-RMD magic items at Character Level 75+ (Magic items can be gambled for crafting)
            codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7ws", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9qs", "9s8", "9s9", "9sb", "9sc", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xf", "9yw", "aar", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pik", "pil", "plt", "qui", "rng", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb" },
            quality = "4",
            -- rarity = "1-", -- uncomment this line to hide ONLY Normal & Exceptional tier items
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 34: Hide all magic Amulets, Rings, & Quivers at Character Level 75+ (Magic items can be gambled for crafting)
            codes = { "amu", "rin", "aqv", "cqv" },
            quality = "4",
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | SET ITEMS               |
        -- +-------------------------+
        { -- Rule 35: Notify and small border for all Set items
            codes = "allitems",
            quality = "5",
            notify = "{green}Set Drop {link}",
            border = { 0, 206, 0, 255, 1 },
        },
        { -- Rule 36: Civerb's Vestments Set items
            codes = "allitems",
            quality = "5",
            index = { 0, 1, 2 },
            location = "onplayer",
            prefix_desc = "{green}Mirrored Flames\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 37: Hsarus' Defense Set items
            codes = "allitems",
            quality = "5",
            index = { 3, 4, 5 },
            location = "onplayer",
            prefix_desc = "{green}Mangala's Teachings\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 38: Cleglaw's Brace Set items
            codes = "allitems",
            quality = "5",
            index = { 6, 7, 8 },
            location = "onplayer",
            prefix_desc = "{green}Mikael's Toxicity\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 39: Iratha's Finery Set items
            codes = "allitems",
            quality = "5",
            index = { 9, 10, 11, 12 },
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 40: Isenhart's Armory Set items
            codes = "allitems",
            quality = "5",
            index = { 13, 14, 15, 16 },
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 41: Vidala's Rig Set items
            codes = "allitems",
            quality = "5",
            index = { 17, 18, 19, 20 },
            location = "onplayer",
            prefix_desc = "{green}Blessing of Artemis\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 42: Milabrega's Regalia Set items
            codes = "allitems",
            quality = "5",
            index = { 21, 22, 23, 24 },
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 43: Cathan's Traps Set items
            codes = "allitems",
            quality = "5",
            index = { 25, 26, 27, 28, 29 },
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 44: Tancred's Battlegear Set items
            codes = "allitems",
            quality = "5",
            index = { 30, 31, 32, 33, 34 },
            location = "onplayer",
            prefix_desc = "{green}Underworld Unrest\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 45: Sigon's Complete Steel Set items
            codes = "allitems",
            quality = "5",
            index = { 35, 36, 37, 38, 39, 40 },
            location = "onplayer",
            prefix_desc = "{green}Blacklight (Paladin)\nBlacklight (Barbarian)\nPulsing Presence\nJustitia's Divinity\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 46: Infernal Tools Set items
            codes = "allitems",
            quality = "5",
            index = { 41, 42, 43 },
            location = "onplayer",
            prefix_desc = "{green}Warrior's Wrath\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 47: Berserker's Arsenal Set items
            codes = "allitems",
            quality = "5",
            index = { 44, 45, 46 },
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force\nArtio's Calling\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 48: Death's Disguise Set items
            codes = "allitems",
            quality = "5",
            index = { 47, 48, 49 },
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force\nMemento Mori\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 49: Angelic Raiment Set items
            codes = "allitems",
            quality = "5",
            index = { 50, 51, 52, 53 },
            location = "onplayer",
            prefix_desc = "{green}Pulsing Presence\nCelestial Caress\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Arctic Gear Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 54, 55, 56, 57 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 50: Arcanna's Tricks Set items
            codes = "allitems",
            quality = "5",
            index = { 58, 59, 60, 61 },
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 51: Natalya's Odium Set items
            codes = "allitems",
            quality = "5",
            index = { 62, 63, 64, 65 },
            location = "onplayer",
            prefix_desc = "{green}Path of the Vortex (Barbarian)\nPath of the Vortex (Assassin)\nSilhouette of Silence\nMangala's Teachings\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 52: Aldur's Watchtower Set items
            codes = "allitems",
            quality = "5",
            index = { 66, 67, 68, 69 },
            location = "onplayer",
            prefix_desc = "{green}Warrior's Wrath\nMirrored Flames\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 53: Immortal King Set items
            codes = "allitems",
            quality = "5",
            index = { 70, 71, 72, 73, 74, 75 },
            location = "onplayer",
            prefix_desc = "{green}Blacklight (Paladin)\nBlacklight (Barbarian)\nWarrior's Wrath\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 54: Tal Rasha's Wrappings Set items
            codes = "allitems",
            quality = "5",
            index = { 76, 77, 78, 79, 80 },
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 55: Griswold's Legacy Set items
            codes = "allitems",
            quality = "5",
            index = { 81, 82, 83, 84 },
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 56: Trang-Oul's Avatar Set items
            codes = "allitems",
            quality = "5",
            index = { 85, 86, 87, 88, 89 },
            location = "onplayer",
            prefix_desc = "{green}Underworld Unrest\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 57: M'avina's Battle Hymn Set items
            codes = "allitems",
            quality = "5",
            index = { 90, 91, 92, 93, 94 },
            location = "onplayer",
            prefix_desc = "{green}Blessing of Artemis\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 58: The Disciple Set items
            codes = "allitems",
            quality = "5",
            index = { 95, 96, 97, 98, 99 },
            location = "onplayer",
            prefix_desc = "{green}Celestial Caress\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 59: Heaven's Brethren Set items
            codes = "allitems",
            quality = "5",
            index = { 100, 101, 102, 103 },
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion\nPulsing Presence\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 60: Orphan's Call Set items
            codes = "allitems",
            quality = "5",
            index = { 104, 105, 106, 107 },
            location = "onplayer",
            prefix_desc = "{green}Justitia's Divinity\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Hwanin's Majesty Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 108, 109, 110, 111 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 61: Sazabi's Grand Tribute Set items
            codes = "allitems",
            quality = "5",
            index = { 112, 113, 114 },
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 62: Bul-Kathos' Children Set items
            codes = "allitems",
            quality = "5",
            index = { 115, 116 },
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force\nBlessing of Artemis\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 63: Cow King's Leathers Set items
            codes = "allitems",
            quality = "5",
            index = { 117, 118, 119 },
            location = "onplayer",
            prefix_desc = "{green}Artio's Calling\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 64: Naj's Ancient Vestige Set items
            codes = "allitems",
            quality = "5",
            index = { 120, 121, 122 },
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Sander's Folly Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 123, 124, 125, 126 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 65: Holy Vessel Set items
            codes = "allitems",
            quality = "5",
            index = { 127, 128, 129, 130 },
            location = "onplayer",
            prefix_desc = "{green}Celestial Caress\nBreaker of Chains\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 66: Majestic Lancer Set items
            codes = "allitems",
            quality = "5",
            index = { 131, 132, 133 },
            location = "onplayer",
            prefix_desc = "{green}Breaker of Chains\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Skovos Storm Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 134, 135, 136 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 67: Wonder Wear Set items
            codes = "allitems",
            quality = "5",
            index = { 137, 138, 139, 140 },
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 68: Vizjerei Vocation Set items
            codes = "allitems",
            quality = "5",
            index = { 141, 142, 143 },
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 69: Beyond Battlemage Set items
            codes = "allitems",
            quality = "5",
            index = { 144, 145, 146 },
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 70: Glacial Plains Set items
            codes = "allitems",
            quality = "5",
            index = { 147, 148, 149 },
            location = "onplayer",
            prefix_desc = "{green}Black Tempest\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 71: Rathma's Calling Set items
            codes = "allitems",
            quality = "5",
            index = { 150, 151, 152, 153 },
            location = "onplayer",
            prefix_desc = "{green}Mikael's Toxicity\nMemento Mori\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 72: Stacatomamba's Guidance Set items
            codes = "allitems",
            quality = "5",
            index = { 154, 155 },
            location = "onplayer",
            prefix_desc = "{green}Mangala's Teachings\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 73: Kreigur's Mastery Set items
            codes = "allitems",
            quality = "5",
            index = { 156, 157 },
            location = "onplayer",
            prefix_desc = "{green}Silhouette of Silence\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Scarlet Sukami Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 158, 159 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 74: Mirrored Flames Set items
            codes = "allitems",
            quality = "5",
            index = { 160, 161, 162 },
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 75: Unstoppable Force Set items
            codes = "allitems",
            quality = "5",
            index = { 163, 164 },
            location = "onplayer",
            prefix_desc = "{green}Path of the Vortex (Barbarian)\nPath of the Vortex (Assassin)\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Underworld's Unrest Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 165, 166, 167 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 76: Elemental Blueprints Set items
            codes = "allitems",
            quality = "5",
            index = { 168, 169, 170 },
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Raijin's Rebellion Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 171, 172, 173 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Mikael's Toxicity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 174, 175, 176 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Warrior's Path Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 177, 178 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 77: Blessings of Artemis Set items
            codes = "allitems",
            quality = "5",
            index = { 179, 180 },
            location = "onplayer",
            prefix_desc = "{green}Black Tempest\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 78: Artio's Calling Set items
            codes = "allitems",
            quality = "5",
            index = { 181, 182, 183 },
            location = "onplayer",
            prefix_desc = "{green}Memento Mori\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        -- { -- Rule xx: Justitia's Divinity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 184, 185 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Pulsing Presence Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 186, 187, 188 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Celestial Caress Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 189, 190, 191 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Breaker of Chains Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 192, 193 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Silhouette of Silence Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 194, 195, 196 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Mangala's Teachings Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 197, 198 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Sacrificial Trinity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 199, 200, 201 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Plates of Protection Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 202, 203, 204 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Black Tempest Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 205, 206, 207 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Memento Mori Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 208, 209, 210 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Cascading Caldera Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 211, 212, 213 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Path of the Vortex (Assassin) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 214, 215 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Path of the Vortex (Barbarian) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 216, 217 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Blacklight (Barbarian) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 218, 219 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- { -- Rule xx: Blacklight (Paladin) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",i
        --     index = { 220, 221 },
        --     location = "onplayer",
        --     prefix_desc = "{green}xx\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        -- +-------------------------+
        -- | FORSAKEN PACTS HELPERS  |
        -- +-------------------------+
        { -- Rule 79: Civerb's Vestments Forsaken Pact
            code = "L00",
            location = "onplayer",
            prefix_desc = "{green}Mirrored Flames {gray}({green}Civerb's + Aldur's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 80: Hsarus' Defense Forsaken Pact
            code = "L01",
            location = "onplayer",
            prefix_desc = "{green}Mangala's Teachings {gray}({green}Hsarus' + Natalya's + Stacatomamba's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 81: Cleglaw's Brace Forsaken Pact
            code = "L02",
            location = "onplayer",
            prefix_desc = "{green}Mikael's Toxicity {gray}({green}Cleglaw's + Rathma's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 82: Iratha's Finery Forsaken Pact
            code = "L03",
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints {gray}({green}Iratha's + Arcanna's + Naj's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 83: Isenhart's Armory Forsaken Pact
            code = "L04",
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection {gray}({green}Isenhart's + Sazabi's + Wonder Wear{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 84: Vidala's Rig Forsaken Pact
            code = "L05",
            location = "onplayer",
            prefix_desc = "{green}Blessing of Artemis {gray}({green}Vidala's + M'avina's + Bul-Kathos'{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 85: Milabrega's Regalia Forsaken Pact
            code = "L06",
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion {gray}({green}Milabrega's + Cathan's + Heaven's Brethren{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 86: Cathan's Traps Forsaken Pact
            code = "L07",
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion {gray}({green}Milabrega's + Cathan's + Heaven's Brethren{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 87: Tancred's Battlegear Forsaken Pact
            code = "L08",
            location = "onplayer",
            prefix_desc = "{green}Underworld Unrest {gray}({green}Trang-Oul's + Tancred's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 88: Sigon's Complete Steel Forsaken Pact
            code = "L09",
            location = "onplayer",
            prefix_desc = "{green}Blacklight (Paladin) {gray}({green}Sigon's + Immortal King{gray})\n{green}Blacklight (Barbarian) {gray}({green}Sigon's + Immortal King{gray})\n{green}Pulsing Presence {gray}({green}Sigon's + Angelic + Heaven's Brethren{gray})\n{green}Justitia's Divinity {gray}({green}Sigon's + Orphan's Call{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 89: Infernal Tools Forsaken Pact
            code = "L10",
            location = "onplayer",
            prefix_desc = "{green}Warrior's Wrath {gray}({green}Immortal King + Aldur's + Infernal{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 90: Berserker's Arsenal Forsaken Pact
            code = "L11",
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force {gray}({green}Bul-Kathos' + Berserker's + Death's{gray})\n{green}Artio's Calling {gray}({green}Berserker's + Cow King's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 91: Death's Disguise Forsaken Pact
            code = "L12",
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force {gray}({green}Bul-Kathos' + Berserker's + Death's{gray})\n{green}Memento Mori {gray}({green}Rathma's + Artio's Calling + Death's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 92: Angelic Raiment Forsaken Pact
            code = "L13",
            location = "onplayer",
            prefix_desc = "{green}Pulsing Presence {gray}({green}Sigon's + Angelic + Heaven's Brethren{gray})\n{green}Celestial Caress {gray}({green}Angelic + Disciple + Holy Vessel's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 93: Arctic Gear Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L14",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 94: Arcanna's Tricks Forsaken Pact
            code = "L15",
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints {gray}({green}Iratha's + Arcanna's + Naj's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 95: Natalya's Odium Forsaken Pact
            code = "L16",
            location = "onplayer",
            prefix_desc = "{green}Path of the Vortex (Barbarian) {gray}({green}Unstoppable Force + Natalya's{gray})\n{green}Path of the Vortex (Assassin) {gray}({green}Unstoppable Force + Natalya's{gray})\n{green}Silhouette of Silence {gray}({green}Natalya's + Kreigur's{gray})\n{green}Mangala's Teachings {gray}({green}Hsarus' + Natalya's + Stacatomamba's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 96: Aldur's Watchtower Forsaken Pact
            code = "L17",
            location = "onplayer",
            prefix_desc = "{green}Warrior's Wrath {gray}({green}Immortal King + Aldur's + Infernal{gray})\n{green}Mirrored Flames {gray}({green}Civerb's + Aldur's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 97: Immortal King Forsaken Pact
            code = "L18",
            location = "onplayer",
            prefix_desc = "{green}Blacklight (Paladin) {gray}({green}Sigon's + Immortal King{gray})\n{green}Blacklight (Barbarian) {gray}({green}Sigon's + Immortal King{gray})\n{green}Warrior's Wrath {gray}({green}Immortal King + Aldur's + Infernal{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 98: Tal Rasha's Wrappings Forsaken Pact
            code = "L19",
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute {gray}({green}Tal Rasha's + Griswold's + Mirrored Flames{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 99: Griswold's Legacy Forsaken Pact
            code = "L20",
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute {gray}({green}Tal Rasha's + Griswold's + Mirrored Flames{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 100: Trang-Oul's Avatar Forsaken Pact
            code = "L21",
            location = "onplayer",
            prefix_desc = "{green}Underworld Unrest {gray}({green}Trang-Oul's + Tancred's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 101: M'avina's Battle Hymn Forsaken Pact
            code = "L22",
            location = "onplayer",
            prefix_desc = "{green}Blessing of Artemis {gray}({green}Vidala's + M'avina's + Bul-Kathos'{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 102: The Disciple Forsaken Pact
            code = "L23",
            location = "onplayer",
            prefix_desc = "{green}Celestial Caress {gray}({green}Angelic + Disciple + Holy Vessel's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 103: Heaven's Brethren Forsaken Pact
            code = "L24",
            location = "onplayer",
            prefix_desc = "{green}Raijin's Rebellion {gray}({green}Milabrega's + Cathan's + Heaven's Brethren{gray})\n{green}Pulsing Presence {gray}({green}Sigon's + Angelic + Heaven's Brethren{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 104: Orphan's Call Forsaken Pact
            code = "L25",
            location = "onplayer",
            prefix_desc = "{green}Justitia's Divinity {gray}({green}Sigon's + Orphan's Call{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 105: Hwanin's Majesty Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L26",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 106: Sazabi's Grand Tribute Forsaken Pact
            code = "L27",
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection {gray}({green}Isenhart's + Sazabi's + Wonder Wear{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 107: Bul-Kathos' Children Forsaken Pact
            code = "L28",
            location = "onplayer",
            prefix_desc = "{green}Unstoppable Force {gray}({green}Bul-Kathos' + Berserker's + Death's{gray})\n{green}Blessing of Artemis {gray}({green}Vidala's + M'avina's + Bul-Kathos'{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 108: Cow King's Leathers Forsaken Pact
            code = "L29",
            location = "onplayer",
            prefix_desc = "{green}Artio's Calling {gray}({green}Berserker's + Cow King's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 109: Naj's Ancient Vestige Forsaken Pact
            code = "L30",
            location = "onplayer",
            prefix_desc = "{green}Elemental Blueprints {gray}({green}Iratha's + Arcanna's + Naj's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 110: Sander's Folly Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L31",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 111: Holy Vessel Forsaken Pact
            code = "L32",
            location = "onplayer",
            prefix_desc = "{green}Celestial Caress {gray}({green}Angelic + Disciple + Holy Vessel's{gray})\n{green}Breaker of Chains {gray}({green}Holy Vessel's + Majestic Lancer's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 112: Majestic Lancer Forsaken Pact
            code = "L33",
            location = "onplayer",
            prefix_desc = "{green}Breaker of Chains {gray}({green}Holy Vessel's + Majestic Lancer's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 113: Skovos Storm Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L34",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 114: Wonder Wear Forsaken Pact
            code = "L35",
            location = "onplayer",
            prefix_desc = "{green}Plates of Protection {gray}({green}Isenhart's + Sazabi's + Wonder Wear{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 115: Vizjerei Vocation Forsaken Pact
            code = "L36",
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera {gray}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 116: Beyond Battlemage Forsaken Pact
            code = "L37",
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera {gray}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 117: Glacial Plains Forsaken Pact
            code = "L38",
            location = "onplayer",
            prefix_desc = "{green}Black Tempest {gray}({green}Glacial Plains + Blessings of Artemis{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 118: Rathma's Calling Forsaken Pact
            code = "L39",
            location = "onplayer",
            prefix_desc = "{green}Mikael's Toxicity {gray}({green}Cleglaw's + Rathma's{gray})\n{green}Memento Mori {gray}({green}Rathma's + Artio's Calling + Death's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 119: Stacatomamba's Guidance Forsaken Pact
            code = "L40",
            location = "onplayer",
            prefix_desc = "{green}Mangala's Teachings {gray}({green}Hsarus' + Natalya's + Stacatomamba's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 120: Kreigur's Mastery Forsaken Pact
            code = "L41",
            location = "onplayer",
            prefix_desc = "{green}Silhouette of Silence {gray}({green}Natalya's + Kreigur's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 121: Scarlet Sukami Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L42",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 122: Mirrored Flames Forsaken Pact
            code = "L43",
            location = "onplayer",
            prefix_desc = "{green}Sacrificial Tribute {gray}({green}Tal Rasha's + Griswold's + Mirrored Flames{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 123: Unstoppable Force Forsaken Pact
            code = "L44",
            location = "onplayer",
            prefix_desc = "{green}Path of the Vortex (Barbarian) {gray}({green}Unstoppable Force + Natalya's{gray})\n{green}Path of the Vortex (Assassin) {gray}({green}Unstoppable Force + Natalya's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 124: Underworld's Unrest Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L45",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 125: Elemental Blueprints Forsaken Pact
            code = "L46",
            location = "onplayer",
            prefix_desc = "{green}Cascading Caldera {gray}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 126: Raijin's Rebellion Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L47",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 127: Mikael's Toxicity Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L48",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 128: Warrior's Wrath Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L49",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 129: Blessings of Artemis Forsaken Pact
            code = "L50",
            location = "onplayer",
            prefix_desc = "{green}Black Tempest {gray}({green}Glacial Plains + Blessings of Artemis{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 130: Artio's Calling Forsaken Pact
            code = "L51",
            location = "onplayer",
            prefix_desc = "{green}Memento Mori {gray}({green}Rathma's + Artio's Calling + Death's{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        },
        { -- Rule 131: Justitia's Divinity Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L52",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 132: Pulsing Presence Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L53",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 133: Celestial Caress Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L54",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 134: Breaker of Chains Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L55",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 135: Silhouette of Silence Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L56",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        { -- Rule 136: Mangala's Teachings Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L57",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        -- { -- Rule xx: xx Forsaken Pact
        --     code = "L58",
        --     location = "onplayer",
        --     prefix_desc = "{green}xx {gray}({green}xx{gray})\n{gold}Used in {green}Forsaken Pacts{gold}:\n"
        -- },
        { -- Rule 137: Plates of Protection Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L59",
            location = "onplayer",
            prefix_desc = "{gold}Not used in any {green}Forsaken Pacts{gold} currently\n"
        },
        -- +-------------------------+
        -- | RARE ITEMS              |
        -- +-------------------------+
        { -- Rule 138: Small border on Rare Amulets, Rings, and Jewels
            codes = { "amu", "rin", "jew" },
            quality = "6",
            border = { 255, 255, 100, 255, 1 }
        },
        -- +-------------------------+
        -- | UNIQUE ITEMS            |
        -- +-------------------------+
        { -- Rule 139: Notify and small border for all Unique items
            codes = "allitems",
            quality = "7",
            notify = "Unique Drop {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        -- +-------------------------+
        -- | CRAFTED ITEMS           |
        -- +-------------------------+
        { -- Rule 140: Reminder to pick up Crafted items so they don't get left behind
            codes = "allitems",
            quality = "8",
            notify = "{orange}DON'T FORGET ME! {link}"
        },
        -- +-------------------------+
        -- | TEMPERED ITEMS          |
        -- +-------------------------+
        { -- Rule 141: Reminder to pick up Tempered items so they don't get left behind
            codes = "allitems",
            quality = "9",
            notify = "{green}DON'T FORGET ME! {link}"
        },
        -- +-------------------------+
        -- | POTIONS                 |
        -- +-------------------------+
        { -- Rule 142: Hides all non-large Potions & Scrolls after Normal Difficulty
            codes = { "mp1", "mp2", "mp3", "hp1", "hp2", "hp3", "isc", "tsc", "rvs"},
            difficulty = "1+",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | BASE ITEMS              |
        -- +-------------------------+
        { -- Rule 143: Reminder to pick up Runeword items so they don't get left behind
            codes = "allitems",
            runeword = true,
            notify = "{gray}DON'T FORGET ME! {gold}{link}",
            border = { 199, 179, 119, 255, 3 }
        },
        { -- Rule 144: Hiding Inferior items at Character Level 10+
            codes = "allitems",
            quality = "1",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 145: Hiding Normal quivers at Character Level 10+
            codes = { "aqv", "cqv" },
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 146: Hides all 1 socket Inferior, Normal, and Superior items at Character Level 25+
            codes = "allitems",
            sockets = "1",
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 25 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 147: Hides non-Superior bases that have 0 sockets at Character Level 25+
            codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7o7", "7p7", "7pa", "7pi", "7qr", "7s7", "7s8", "7sb", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9s8", "9s9", "9sb", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9xf", "9yw", "aar", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pik", "pil", "plt", "qui", "rng", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb" },
            quality = "2-",
            sockets = "0",
            pstat = { index = 12, op = ">=", value = 25 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 148: Hides all +0 to Paladin Skill Levels Scepters at Character Level 50+
            codes = { "scp", "gsc", "wsp", "7sc", "7qs", "7ws", "9sc", "9qs", "9ws" },
            quality = "4-",
            runeword = false,
            stat = { index = 83, op = "<=", value = 0, param = 3 },
            pstat = { index = 12, op = ">=", value = 50 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 149: Hides bases that don't roll their maximum of 3 sockets at Character Level 80+
            codes = "allitems",
            quality = "3-",
            sockets = "1, 2",
            maxsock = "3",
            ilvl = "41+",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 150: Hides bases that don't roll their maximum of 4 sockets at Character Level 80+
            codes = "allitems",
            quality = "3-",
            sockets = "1, 2, 3",
            maxsock = "4",
            ilvl = "41+",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 151: Hides bases that don't roll their maximum of 5 sockets at Character Level 80+
            codes = "allitems",
            quality = "3-",
            sockets = "1, 2, 3, 4",
            maxsock = "5",
            ilvl = "41+",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 152: Hides bases that don't roll their maximum of 6 sockets at Character Level 80+
            codes = "allitems",
            quality = "3-",
            sockets = "1, 2, 3, 4, 5",
            maxsock = "6",
            ilvl = "41+",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        -- +-------------------------+
        -- | TAGS & GENERIC RULES    |
        -- +-------------------------+
        { -- Rule 153: Adding item level to appropriate items (Rings, Amulets, Weapons, Armors, Jewels, and Small/Large/Grand Charms)
            codes = "allitems",
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            location = { "onplayer", "equipped" , "onground", "dropping", "atvendor" },
            suffix = " ({ilvl})"
        },
        { -- Rule 154: Adding [Eth] tag to items
            codes = "allitems",
            ethereal = true,
            suffix = " {gray}[Eth]"
        },
        { -- Rule 155: Adding socket number tag to Ethereal items
            codes = "allitems",
            ethereal = true,
            sockets = "1+",
            prefix = "ÿcI",
            suffix = "{gray}[{sockets}]"
        },
        { -- Rule 156: Adding socket number tag to Non-Ethereal items
            codes = "allitems",
            ethereal = false,
            sockets = "1+",
            suffix = " {gray}[{sockets}]"
            -- This second rule makes [Eth] and socket number ([#]) beside each other
        },
        { -- Rule 157: Adding superscript "1" in front of Normal tier items names
            codes = "allitems",
            rarity = 0,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "¹"
        },
        { -- Rule 158: Adding superscript "2" in front of Exceptional tier items names
            codes = "allitems",
            rarity = 1,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "²"
        },
        { -- Rule 159: Adding superscript "EB 3" in front of Elite tier items names
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17" },
            rarity = 2,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅲ ³"
        },
        { -- Rule 160: Adding superscript "LB 3" in front of Elite tier Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17" },
            rarity = 2,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅳ ³"
            -- prefix = "⁴"
        },
        -- +-------------------------+
        -- | ITEM HELPER TEXT        |
        -- +-------------------------+
        { -- Rule 161: Scroll of Inifuss
            code = "bks",
            location = "onplayer",
            prefix_desc = "{gold}in Act 1\nTalk to Akara\n"
        },
        { -- Rule 162: Scroll of Inifuss, deciphered
            code = "bkd",
            location = "onplayer",
            prefix_desc = "{gold}Go to Act 1: Stony Field\n"
        },
        { -- Rule 163: Wirt's Leg
            code = "leg",
            location = "onplayer",
            prefix_desc = "{gold}Act 1 to open Cow Level\nCube w/ Tome of Town Portal in\n"
        },
        { -- Rule 164: Horadric Malus
            code = "hdm",
            location = "onplayer",
            prefix_desc = "{gold}Give to Charsi in Act 1\n"
        },
        { -- Rule 165: Book of Skill
            code = "ass",
            location = "onplayer",
            prefix_desc = "{gold}+1 Skill Point\nRight click for \n"
        },
        { -- Rule 166: Horadric Staff
            code = "hst",
            location = "onplayer",
            prefix_desc = "{red}0  )  []  +  >>  /\\  0)\nTombs:\n{gold}Act 2: Tal Rashas Tomb\nPlace in Tomb Orifice in\n"
        },
        { -- Rule 167: Amulet of the Viper
            code = "vip",
            location = "onplayer",
            prefix_desc = "{orange}Staff of Kings {gold}(Act 2 Maggot Lair)\nCube with:\n"
        },
        { -- Rule 168: Staff of Kings
            code = "msf",
            location = "onplayer",
            prefix_desc = "{orange}Amulet of the Viper {gold}(Act 2: Claw Viper Temple)\nCube with:\n"
        },
        { -- Rule 169: A Jade Figurine
            code = "j34",
            location = "onplayer",
            prefix_desc = "{gold}in Act 3\nGive to Meshif\n"
        },
        { -- Rule 170: The Golden Bird
            code = "g34",
            location = "onplayer",
            prefix_desc = "{gold}in Act 3\nGive to Alkor\n"
        },
        { -- Rule 171: Potion of Life
            code = "xyz",
            location = "onplayer",
            prefix_desc = "{gold}permanent +20 to Life\nRight click for a\n"
        },
        { -- Rule 172: Gidbinn
            code = "g33",
            location = "onplayer",
            prefix_desc = "{gold}Give to Ormus in Act 3\n"
        },
        { -- Rule 173: Khalim's Eye
            code = "qey",
            location = "onplayer",
            prefix_desc = "{orange}Khalim's Flail {gold}(Act 3: Travincal)\n{orange}Khalim's Heart {gold}(Act 3: Kurast Sewers)\n{orange}Khalim's Brain {gold}(Act 3: Flayer Dungeon)\nCube with:\n\nDrops in Act 3: Spider Cavern\n"
        },
        { -- Rule 174: Khalim's Brain
            code = "qbr",
            location = "onplayer",
            prefix_desc = "{orange}Khalim's Flail {gold}(Act 3: Travincal)\n{orange}Khalim's Heart {gold}(Act 3: Kurast Sewers)\n{orange}Khalim's Eye {gold}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Flayer Dungeon\n"
        },
        { -- Rule 175: Khalim's Heart
            code = "qhr",
            location = "onplayer",
            prefix_desc = "{orange}Khalim's Flail {gold}(Act 3: Travincal)\n{orange}Khalim's Brain {gold}(Act 3: Flayer Dungeon)\n{orange}Khalim's Eye {gold}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Kurast Sewers\n"
        },
        { -- Rule 176: Khalim's Flail
            code = "qf1",
            location = "onplayer",
            prefix_desc = "{orange}Khalim's Heart {gold}(Act 3: Kurast Sewers)\n{orange}Khalim's Brain {gold}(Act 3: Flayer Dungeon)\n{orange}Khalim's Eye {gold}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Travincal\n"
        },
        { -- Rule 177: Khalim's Will
            code = "qf2",
            location = "onplayer",
            prefix_desc = "{gold}Attack Compelling Orb in Act 3: Travincal\n"
        },
        { -- Rule 178: Lam Esen's Tome
            code = "bbb",
            location = "onplayer",
            prefix_desc = "{gold}+5 Stat Points\nGive to Alkor for\n"
        },
        { -- Rule 179: Mephisto's Soulstone
            code = "mss",
            location = "onplayer",
            prefix_desc = "{gold}Act 4: River of Flame\nTake to the Hellforge in\n"
        },
        { -- Rule 180: Hellforge Hammer
            code = "hfh",
            location = "onplayer",
            prefix_desc = "{gold}Attack Hellforge in Act 4: River of Flame\n"
        },
        { -- Rule 181: Malah's Potion
            code = "ice",
            location = "onplayer",
            prefix_desc = "{gold}Act 5: Frozen River\nTouch Anya in\n"
        },
        { -- Rule 182: Scroll of Resistance
            code = "tr2",
            location = "onplayer",
            prefix_desc = "{gold}All Resistances +10\nRight click for a permanent\n"
        },
        { -- Rule 183: Twisted Essence of Suffering
            code = "tes",
            location = "onplayer",
            prefix_desc = "{gold}Cube with 1x of each essence for a Socket Remover\n\nCube with Storage Bag for +(4-7) Gems\nDrops from Hell Andariel\n{orange}",
            filter_levels = 2
        },
        { -- Rule 184: Charged Essence of Hatred
            code = "ceh",
            location = "onplayer",
            prefix_desc = "{gold}Cube with 1x of each essence for a Socket Remover\n\nCube with Storage Bag for +(1-3) High Rune Points\nDrops from Hell Mephisto\n{orange}"
        },
        { -- Rule 185: Burning Essence of Terror
            code = "bet",
            location = "onplayer",
            prefix_desc = "{gold}Cube with 1x of each essence for a Socket Remover\n\nCube with Storage Bag for +(3-6) Set Cores\nDrops from Hell Diablo\n{orange}"
        },
        { -- Rule 186: Festering Essence of Destruction
            code = "fed",
            location = "onplayer",
            prefix_desc = "{gold}Cube with 1x of each essence for a Socket Remover\n\nCube with Storage Bag for +(3-6) Unique Cores\nDrops from Hell Baal\n{orange}"
        },
        { -- Rule 187: Key of Terror
            code = "pk1",
            location = "onplayer",
            prefix_desc = "{gold}Cube 2x {orange}Key of Terror {gold}to get 1x {orange}Key of Hate\n\n{orange}Key of Destruction {gold}(Hell Nihlathak)\n{orange}Key of Hate {gold}(Hell Summoner)\nOpen Mini-Uber portal by cubing in Act 5 with:\nDrops from Hell Countess\n{orange}"
        },
        { -- Rule 188: Key of Hate
            code = "pk2",
            location = "onplayer",
            prefix_desc = "{gold}Cube 2x {orange}Key of Hate {gold}to get 1x {orange}Key of Destruction\n\n{orange}Key of Destruction {gold}(Hell Nihlathak)\n{orange}Key of Terror {gold}(Hell Countess)\nOpen Mini-Uber portal by cubing in Act 5 with:\nDrops from Hell Summoner\n{orange}"
        },
        { -- Rule 189: Key of Destruction
            code = "pk3",
            location = "onplayer",
            prefix_desc = "{gold}Cube 2x {orange}Key of Destruction {gold}to get 1x {orange}Key of Terror\n\n{orange}Key of Hate {gold}(Hell Summoner)\n{orange}Key of Terror {gold}(Hell Countess)\nOpen Mini-Uber portal by cubing in Act 5 with:\nDrops from Hell Nihlathak\n{orange}"
        },
        { -- Rule 190: Mephisto's Brain
            code = "mbr",
            location = "onplayer",
            prefix_desc = "{orange}Baal's Eye {gold}(Forgotten Sands: Uber Duriel)\n{orange}Diablo's Horn {gold}(Matron's Den: Lilith)\nOpen Uber Tristram portal by cubing in Act 5 with:\nDrops from Furance of Pain: Uber Izual\n{orange}"
        },
        { -- Rule 191: Diablo's Horn
            code = "dhn",
            location = "onplayer",
            prefix_desc = "{orange}Baal's Eye {gold}(Forgotten Sands: Uber Duriel)\n{orange}Mephisto's Brain {gold}(Furance of Pain: Uber Izual)\nOpen Uber Tristram portal by cubing in Act 5 with:\nDrops from Matron's Den: Lilith\n{orange}"
        },
        { -- Rule 192: Baal's Eye
            code = "bey",
            location = "onplayer",
            prefix_desc = "{orange}Diablo's Horn {gold}(Matron's Den: Lilith)\n{orange}Mephisto's Brain {gold}(Furance of Pain: Uber Izual)\nOpen Uber Tristram portal by cubing in Act 5 with:\nDrops from Forgotten Sands: Uber Duriel\n{orange}"
        },
        { -- Rule 193: Standard of Heroes
            code = "std",
            location = "onplayer",
            prefix_desc = "{gold}Can be sold to vendors to spawn Über Diablo\n"
        },
        { -- Rule 194: Amethyst gems
            codes = "allitems",
            itype = 96,
            location = "onplayer",
            prefix = "{gold}Used in Caster crafting\n"
        },
        { -- Rule 195: Diamond gems
            codes = "allitems",
            itype = 97,
            location = "onplayer",
            prefix = "{gold}Used in Legion crafting\n{white}"
        },
        { -- Rule 196: Emerald gems
            codes = "allitems",
            itype = 98,
            location = "onplayer",
            prefix = "{gold}Used in Safety crafting\n"
        },
        { -- Rule 197: Ruby gems
            codes = "allitems",
            itype = 99,
            location = "onplayer",
            prefix = "{gold}Used in Blood crafting\n"
        },
        { -- Rule 198: Sapphire gems
            codes = "allitems",
            itype = 100,
            location = "onplayer",
            prefix = "{gold}Used in Hit Power crafting\n"
        },
        { -- Rule 199: Topaz gems
            codes = "allitems",
            itype = 101,
            location = "onplayer",
            prefix = "{gold}Used in Disarm crafting\n"
        },
        { -- Rule 200: Amethyst Remover
            code = "Z02",
            location = "onplayer",
            prefix = "{gold}Used in Caster crafting\n"
        },
        { -- Rule 201: Topaz Remover
            code = "Z03",
            location = "onplayer",
            prefix = "{gold}Used in Disarm crafting\n"
        },
        { -- Rule 202: Sapphire Remover
            code = "Z04",
            location = "onplayer",
            prefix = "{gold}Used in Hit Power crafting\n"
        },
        { -- Rule 203: Emerald Remover
            code = "Z05",
            location = "onplayer",
            prefix = "{gold}Used in Safety crafting\n"
        },
        { -- Rule 204: Ruby Remover
            code = "Z06",
            location = "onplayer",
            prefix = "{gold}Used in Blood crafting\n"
        },
        { -- Rule 205: Diamond Remover
            code = "Z07",
            location = "onplayer",
            prefix = "{gold}Used in Legion crafting\n{white}"
        },
        { -- Rule 206: Skull Remover
            code = "Z08",
            location = "onplayer",
        },
        { -- Rule 207: Normal Unique Armor upgrade recipe
            codes = "allitems",
            itype = 50,
            quality = 7,
            rarity = 0,
            location = "onplayer",
            prefix_desc = "{gold}Shael Rune, & Diamond\nCube w/ Tal Rune,\n{orange}Upgrade Recipe:\n{gold}"
        },
        { -- Rule 208: Exceptional Unique Armor upgrade recipe
            codes = "allitems",
            itype = 50,
            quality = 7,
            rarity = 1,
            location = "onplayer",
            prefix_desc = "{gold}Lem Rune, & Diamond\nCube w/ Ko Rune,\n{orange}Upgrade Recipe:\n{gold}"
        },
        { -- Rule 209: Normal Unique Weapon upgrade recipe
            codes = NOT { "hst", "hdm", "msf", "g33", "qf1", "qf2", "hfh" },
            itype = 45,
            quality = 7,
            rarity = 0,
            location = "onplayer",
            prefix_desc = "{gold}Sol Rune, & Emerald\nCube w/ Ral Rune,\n{orange}Upgrade Recipe:\n{gold}"
        },
        { -- Rule 210: Exceptional Unique Weapon upgrade recipe
            codes = "allitems",
            itype = 45,
            quality = 7,
            rarity = 1,
            location = "onplayer",
            prefix_desc = "{gold}Pul Rune, & Emerald\nCube w/ Lum Rune,\n{orange}Upgrade Recipe:\n{gold}"
        },
        { -- Rule 211: Socket Remover
            code = "b64",
            location = "onplayer",
            prefix_desc = "{gold}Socket Remover (keeps Runes/Jewels)\nCube 10x together for a Premium\n"
        },
        { -- Rule 212: Magic Jewels
            code = "jew",
            quality = 4,
            location = "onplayer",
            prefix_desc = "{gold}Cube 10x {blue}Magic Jewels {gold}for 1x {yellow}Rare Jewel\n{blue}"
        },
        { -- Rule 213: Rainbow Facets
            code = "jew",
            quality = 7,
            location = "onplayer",
            prefix_desc = "{gold}(30 total; 5x {red}Fire{gold}, 5x {yellow}Lightning{gold}, 5x {blue}Cold{gold}, 5x {green}Poison{gold}, 5x Physical, 5x {orange}Magic{gold})\nCube 5x of each Element for a {yellow}P{blue}r{red}i{green}s{gold}m{yellow}a{blue}t{red}i{green}c {yellow}F{blue}a{red}c{green}e{gold}t\n"
        },
        -- +-------------------------+
        -- | TESTING                 |
        -- +-------------------------+
        -- { -- Rule 214: For testing, adds a bunch of info to item
        --     codes = "allitems",
        --     location = { "onplayer", "equipped", "onground", "dropping", "atvendor" },
        --     suffix = " \n{gray}[Code: {orange}{code}{gray}]\n[Quality: {orange}{quality}{gray}]\n[Rarity: {orange}{rarity}{gray}]\n[Index: {orange}{index}{gray}]"
        -- },
    }
}
