--- Filter Title: WolfieeifloW's Filter v1.4
--- Filter Type: Relaxed, non-strict
--- Filter Description: Adding some QoL to the game while maintaining a very LoD-like style.\n\nHides small gold piles, Magic items that can be gambled instead for crafting, and in the later character levels it hides useless bases; everything else is shown.\nNotifies and adds borders to good items and new RMD items.\nFilter is very non-strict. For those who are collectors or those who like to still see loot.

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
    reload = "WolfieeifloW's Filter v1.4: {green}reloaded",
    rules = {
        -- +-------------------------+
        -- | GOLD                    |
        -- +-------------------------+
        { -- Rule 1: Hide 200 gold and less if Character Level 20+
            code = "gld",
            stat = { index = 14, op = "<=", value = 200 },
            pstat = { index = 12, op = ">=", value = 20 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 2: Hide 300 gold and less if Character Level 30+
            code = "gld",
            stat = { index = 14, op = "<=", value = 500 },
            pstat = { index = 12, op = ">=", value = 30 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 3: Hide 500 gold and less if Character Level 40+
            code = "gld",
            stat = { index = 14, op = "<=", value = 500 },
            pstat = { index = 12, op = ">=", value = 40 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 4: Hide 1000 gold and less if Character Level 50+
            code = "gld",
            stat = { index = 14, op = "<=", value = 1000 },
            pstat = { index = 12, op = ">=", value = 50 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | RMD STARTER ITEMS       |
        -- +-------------------------+
        { -- Rule 5: Reminder to pick up Horadric Cube so it doesn't get left behind
            code = "box",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 6: Reminder to pick up Town Portal Book so it doesn't get left behind
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            notify = "{blue}DON'T FORGET ME! {link}",
            border = { 110, 110, 255, 255, 5 }
        },
        { -- Rule 7: Reminder to pick up Identify Book so it doesn't get left behind
            code = "ibk",
            name_override = "{red}Book of Insight",
            notify = "{red}DON'T FORGET ME! {link}",
            border = { 255, 77, 77, 255, 5 }
        },
        { -- Rule 8: Overriding Tome of Town Portal name to the cooler name
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            location = "onplayer"
        },
        { -- Rule 9: Overriding Tome of Identify name to the cooler name
            code = "ibk",
            name_override = "{red}Book of Insight",
            location = "onplayer"
        },
        { -- Rule 10: Reminder to pick up Key so it doesn't get left behind
            code = "key",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 11: Reminder to pick up The Statue of Mythos Soul Tracker so it doesn't get left behind
            codes = { "y01", "y02", "y03", "y04", "y05", "y06", "y07", "y08", "y34", "y35", "y36", "y37", "y38", "y39", "y40" },
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 12: Reminder to pick up Storage Bag so it doesn't get left behind
            code = "Z01",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 13: Reminder to pick up Starter's Cube of Endless Convenience so it doesn't get left behind
            code = "y66",
            notify = "ÿcNDON'T FORGET ME! {link}",
            border = { 6, 165, 221, 255, 5 }
        },
        -- +-------------------------+
        -- | RMD NEW ITEMS           |
        -- +-------------------------+
        { -- Rule 14: Notify and medium border for all Codexes
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58" },
            notify = "{purple}Codex Drop {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 15: Notify and medium border for all Blood Contracts
            codes = { "a00", "A00", "a01", "A01", "a02", "A02", "a03", "A03", "a04", "A04", "a05", "A05", "A06", "a07", "A07", "a08", "A08", "a09", "A09", "A10", "A11", "A12", "A13", "A14", "A15", "A16", "A17", "A18", "A19", "A20", "A21", "A22", "A23", "A24", "A25", "A26", "A27", "A28", "A29", "A30", "A31", "A32", "A33", "A34", "A35", "A36", "A37", "A38", "A39", "A40", "A41", "A42", "A43", "A44", "A45", "A46", "A47", "A48", "A49", "A50", "A51", "A52", "A53", "A54", "A55", "A56", "A57", "A58", "A59", "A60", "A61", "A62", "A63", "A64", "A65", "A66", "a67", "A67", "a68", "A68", "a69", "A69", "a70", "A70", "a71", "A71", "a72", "A72", "a73", "A73", "a74", "A74", "a75", "A75", "a76", "A76", "a77", "A77", "a78", "A78", "a79", "A79", "a80", "A80", "a81", "A81", "a82", "A82", "a83", "A83", "a84", "A84", "a85", "A85", "a86", "A86", "a87", "A87", "a88", "A88", "a89", "A89", "a90", "A90", "a91", "A91", "a92", "A92", "a93", "A93", "a94", "A94", "a95", "A95", "a96", "A96", "a97", "A97", "a98", "A98", "a99", "A99", "b00", "b01", "b02", "b03", "b04", "b05", "b06", "b07", "b08", "b09", "b10", "b11", "b12", "b13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "b22", "b23", "b24", "b25", "b26", "b27", "b28", "b29", "b30", "b31", "b32", "b33", "b34", "b35", "b36", "b37", "b38", "b39", "b40", "b41", "b42", "b43", "b44", "b45", "b46", "b47", "b48", "b49", "b50", "b51", "b52", "b53", "b54", "b55", "b56", "b57", "b58", "b59", "b60", "b61", "b62", "b63" },
            notify = "{purple}RMD Item {orange}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 16: Random RMD items that have gold names (used to match chat color brackets for notify)
            codes = { "a06", "b64", "b65", "BoH", "luv", "m27", "m32", "m33", "m34", "m35", "m36", "Rgx", "TK0", "TK8", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "z00", "z01", "z02", "Z02", "z03", "Z03", "z04", "Z04", "z05", "Z05", "z06", "Z06", "z07", "Z07", "z08", "Z08", "z09", "Z09", "z10", "Z10", "z11", "Z11", "z12", "Z12", "z13", "Z13", "z14", "Z14", "z15", "Z15", "z16", "Z16", "z17", "Z17", "z18", "Z18", "Z19", "Z20", "Z21", "Z22", "Z23", "Z24", "Z25", "Z26", "Z27", "Z28", "Z29", "Z30", "Z31", "Z32", "Z33", "Z34", "Z35", "Z36", "Z37", "Z38", "Z39", "Z40", "Z41", "Z42", "Z43", "Z44", "Z45", "Z46", "Z47", "Z48", "Z49", "Z50", "Z51", "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "z80", "Z80", "z81", "Z81", "z82", "Z82", "z83", "Z83", "z84", "Z84", "Z85", "Z86", "Z87", "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z94", "Z95", "Z96", "Z97", "Z98", "Z99" },
            notify = "{purple}RMD Item {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 17: Random RMD items that have red names (used to match chat color brackets for notify)
            codes = { "hpf", "hpo", "rpl", "rps", "y67" },
            notify = "{purple}RMD Item {red}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 18: Random RMD items that have blue names (used to match chat color brackets for notify)
            codes = { "m00", "m01", "m02", "m03", "m04", "m05", "m06", "m07", "m08", "m09", "m10", "m11", "m12", "m13", "m14", "m15", "m16", "m17", "m18", "m19", "m20", "m21", "m22", "m23", "m24", "m25", "m26" },
            notify = "{purple}RMD Item {blue}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 19: Random RMD items that have white names (used to match chat color brackets for notify)
            codes = { "0sc", "bpl", "bps", "brz", "elx", "eyz", "flg", "fng", "GBd", "hrn", "hrt", "jaw", "m28", "m29", "m30", "m31", "mpf", "mpo", "scz", "sol", "spe", "tal", "tch", "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31", "z32", "z33", "z34", "z35", "z36", "z37", "z38", "z39", "z40", "z41", "z42", "z43", "z44", "z45", "z46", "z47", "z48", "z49", "z50", "z51", "z52", "z53", "z54", "z55", "z56", "z57", "z58", "z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73", "z74", "z75", "z76", "z77" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 20: Random RMD items that have pink names (used to match chat color brackets for notify)
            codes = { "y33" },
            notify = "{purple}RMD Item {pink}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 21: Random RMD items that I'm unsure what color their name is (recoloring them white for now)
            codes = { "Bbp", "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37", "Cr1", "Cr2", "Cr3", "Cr4", "Cr5", "Cr6", "D06", "D07", "D10", "D18", "D22", "D32", "Ebp", "EcW", "Ev0", "Ev1", "Ev2", "Ev3", "Ev4", "Ev5", "Ev6", "Ev7", "Ev8", "Gu1", "Gu2", "Gu3", "Gu4", "Gu5", "IN1", "IN2", "IN3", "IN4", "IN5", "IN6", "IN7", "K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80", "L00", "L01", "L02", "L03", "L04", "L05", "L06", "L07", "L08", "L09", "L10", "L11", "L12", "L13", "L14", "L15", "L16", "L17", "L18", "L19", "L20", "L21", "L22", "L23", "L24", "L25", "L26", "L27", "L28", "L29", "L30", "L31", "L32", "L33", "L34", "L35", "L36", "L37", "L38", "L39", "L40", "L41", "L42", "L43", "L44", "L45", "L46", "L47", "L48", "L49", "L50", "L51", "L52", "L53", "L54", "L55", "L56", "L57", "L58", "L59", "L60", "L61", "L62", "L63", "L64", "L65", "L66", "L67", "L68", "L69", "L70", "L71", "L72", "L73", "L74", "L75", "L76", "L77", "L78", "L79", "L80", "L81", "L82", "L83", "L84", "L85", "L86", "L87", "L88", "L89", "L90", "L91", "L92", "L93", "L94", "L95", "L96", "L97", "L98", "L99", "S01", "TK1", "TK2", "TK3", "TK4", "TK5", "TK6", "TK7", "UCR", "Xbp", "Y20", "Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        -- +-------------------------+
        -- | QUEST ITEMS             |
        -- +-------------------------+
        { -- Rule 22: Notify and medium border all quest items
            codes = { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            notify = "Quest Item {link}",
            border = { 199, 179, 119, 255, 3 }
        },
        -- +-------------------------+
        -- | ESSENCES & TOKEN        |
        -- +-------------------------+
        { -- Rule 23: Notify and small border on essences and tokens
            codes = { "tes", "ceh", "bet", "fed", "toa" },
            notify = "Essence Drop {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        -- +-------------------------+
        -- | UBER ITEMS              |
        -- +-------------------------+
        { -- Rule 24: Notify and small border on Uber items
            codes = { "pk1", "pk2", "pk3", "mbr", "dhn", "bey" },
            notify = "{orange}Ubers Item {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 25: Notify and small border on Standard of Heroes
            code = "std",
            notify = "Ubers Item {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        -- +-------------------------+
        -- | RUNES                   |
        -- +-------------------------+
        { -- Rule 26: Always give runes a small border (will be overridden by other borders below)
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11", "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22", "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33", "r34", "r35", "r36" },
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 27: Notify until Character Level 25 and small border for Low Runes
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11" },
            pstat = { index = 12, op = "<=", value = 25 },
            notify = "{green}Low Rune {orange}{link}"
        },
        { -- Rule 28: Notify until Character Level 75 and medium border for Mid Runes
            codes = { "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22" },
            pstat = { index = 12, op = "<=", value = 75 },
            notify = "{yellow}Mid Rune {orange}{link}",
            border = { 255, 168, 0, 255, 3 }
        },
        { -- Rule 29: Notify and large border for High Runes
            codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "{red}High Rune {orange}{link}",
            border = { 255, 168, 0, 255, 5 }
        },
        { -- Rule 30: Notify and extra large border for Ultra Runes
            codes = { "r34", "r35", "r36" },
            notify = "{purple}Ultra Rune {orange}{link}",
            border = { 255, 168, 0, 255, 7 }
        },
        -- +-------------------------+
        -- | MAGIC ITEMS             |
        -- +-------------------------+
        { -- Rule 31: Hide all non-RMD magic items at Character Level 75+ (Magic items can be gambled for crafting)
            codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7ws", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9qs", "9s8", "9s9", "9sb", "9sc", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xf", "9yw", "aar", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pik", "pil", "plt", "qui", "rng", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb" },
            quality = "4",
            -- rarity = "1-", -- uncomment this line to hide ONLY Normal & Exceptional tier items
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 32: Hide all magic Amulets, Rings, & Quivers at Character Level 75+ (Magic items can be gambled for crafting)
            codes = { "amu", "rin", "aqv", "cqv" },
            quality = "4",
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | SET ITEMS               |
        -- +-------------------------+
        { -- Rule 33: Notify and small border for all Set items
            codes = "allitems",
            quality = "5",
            notify = "{green}Set Drop {link}",
            border = { 0, 206, 0, 255, 1 }
        },
        -- +-------------------------+
        -- | RARE ITEMS              |
        -- +-------------------------+
        { -- Rule 34: Small border on Rare Amulets, Rings, and Jewels
            codes = { "amu", "rin", "jew" },
            quality = "6",
            border = { 255, 255, 100, 255, 1 }
        },
        -- +-------------------------+
        -- | UNIQUE ITEMS            |
        -- +-------------------------+
        { -- Rule 35: Notify and small border for all Unique items
            codes = "allitems",
            quality = "7",
            notify = "Unique Drop {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        -- +-------------------------+
        -- | CRAFTED ITEMS           |
        -- +-------------------------+
        { -- Rule 36: Reminder to pick up Crafted items so they don't get left behind
            codes = "allitems",
            quality = "8",
            notify = "{orange}DON'T FORGET ME! {link}"
        },
        -- +-------------------------+
        -- | TEMPERED ITEMS          |
        -- +-------------------------+
        { -- Rule 37: Reminder to pick up Tempered items so they don't get left behind
            codes = "allitems",
            quality = "9",
            notify = "{green}DON'T FORGET ME! {link}"
        },
        -- +-------------------------+
        -- | POTIONS                 |
        -- +-------------------------+
        { -- Rule 38: Hides all non-large Potions & Scrolls after Normal Difficulty
            codes = { "mp1", "mp2", "mp3", "hp1", "hp2", "hp3", "isc", "tsc", "rvs"},
            difficulty = "1+",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | BASE ITEMS              |
        -- +-------------------------+
        { -- Rule 39: Reminder to pick up Runeword items so they don't get left behind
            codes = "allitems",
            runeword = true,
            notify = "{gray}DON'T FORGET ME! {gold}{link}",
            border = { 199, 179, 119, 255, 3 }
        },
        { -- Rule 40: Hiding Inferior items at Character Level 10+
            codes = "allitems",
            quality = "1",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 41: Hiding Normal quivers at Character Level 10+
            codes = { "aqv", "cqv" },
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 42: Hides all 1 socket Inferior, Normal, and Superior items at Character Level 25+
            codes = "allitems",
            sockets = "1",
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 25 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 43: Hides non-Superior bases that have 0 sockets at Character Level 25+
            codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7o7", "7p7", "7pa", "7pi", "7qr", "7s7", "7s8", "7sb", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9s8", "9s9", "9sb", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9xf", "9yw", "aar", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pik", "pil", "plt", "qui", "rng", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb" },
            quality = "2-",
            sockets = "0",
            pstat = { index = 12, op = ">=", value = 25 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 44: Hides all +0 to Paladin Skill Levels Scepters at Character Level 50+
            codes = { "scp", "gsc", "wsp", "7sc", "7qs", "7ws", "9sc", "9qs", "9ws" },
            quality = "4-",
            runeword = false,
            stat = { index = 83, op = "<=", value = 0, param = 3 },
            pstat = { index = 12, op = ">=", value = 50 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 45: Hides bases that don't roll their maximum of 3 sockets at Character Level 80+
            codes = { "xla", "xui", "xea", "brs", "chn", "ltp", "scl", "rng", "9cl", "clb", "7cl", "7ha", "9ha", "hax", "sbw", "7sp", "9sp", "spc", "7cs", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "amf", "ama", "am5", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "6ss", "8ss", "sst", "k01", "k02", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9ss", "9sm", "9sb", "9fc", "flc", "sbr", "ssd", "scm", "wsd", "ne6", "ne7", "ne1", "ne2", "uuc", "xsh", "bsh", "lrg", "spk", "dr9", "dr1", "bab", "bae", "bad", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba1", "ba2", "ba3", "drb", "drf", "drd", "dre", "drc", "dr6", "dr7", "dr8", "dra", "dr3", "dr4", "dr2", "dr5", "ulm", "uh9", "urn", "usk", "uhl", "ukp", "uap", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "l08", "l09", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "ci0", "ci1", "ci2", "ci3", "ulb", "uvb", "umb", "utb", "uhb", "xvb", "xmb", "xtb", "xhb", "hbt", "tbt", "Ab1", "Ab4", "Ab2", "Ab5", "Ab3", "Ab6", "l11", "Ag2", "Ag4", "Ag5", "Ag6", "uvg", "xvg", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "ulg", "utg", "uhg", "umg", "xmg", "xtg", "xhg", "tgl", "hgl", "l10" },
            quality = "3-",
            sockets = "1, 2",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 46: Hides bases that don't roll their maximum of 4 sockets at Character Level 80+
            codes = { "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Bp3", "Bp6", "Bp1", "Bp4", "Bp2", "Bp5", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "utp", "upl", "uhn", "ung", "uui", "urs", "ult", "uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl", "xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "Ca1", "Ca4", "Ca5", "Ca2", "Ca6", "Ca3", "l01", "l02", "l03", "l04", "l05", "l06", "Ss3", "Ss4", "Bf4", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8cs", "8bs", "8ls", "bst", "cst", "lst", "bsw", "k03", "72h", "92h", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp", "nef", "neg", "neb", "ned", "nee", "ne9", "nea", "ne8", "ne5", "ne4", "ne3", "pad", "pac", "pab", "paf", "pae", "pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "urg", "uml", "uit", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "kit", "tow", "l12" },
            quality = "3-",
            sockets = "1, 2, 3",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 47: Hides bases that don't roll their maximum of 5 sockets at Character Level 80+
            codes = { "axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "6lx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8" },
            quality = "3-",
            sockets = "1, 2, 3, 4",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        { -- Rule 48: Hides bases that don't roll their maximum of 6 sockets at Character Level 80+
            codes = { "Ss1", "7s8", "7fb", "Ss2", "9mp", "mpi", "7mp", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf5", "Bf6", "7wa", "7ga", "7bt", "72a", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "amc", "amb", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "6hx", "8hx", "hxb", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "9fl", "7vo", "7pa", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "7p7", "9h9", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "7ws", "9ws", "7mp", "7wc", "9wc", "9s8", "mpi", "wsc", "amd", "ame", "am8", "am9", "am3", "am4", "Ds4", "Ds5", "Ds6", "6ws", "8ws", "wst", "7gd", "7gd", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "7cr", "9cr", "crs", "7b8", "l13", "l14", "l15", "l16", "l17" },
            quality = "3-",
            sockets = "1, 2, 3, 4, 5",
            runeword = false,
            pstat = { index = 12, op = ">=", value = 80 },
            hide = true
        },
        -- +-------------------------+
        -- | TAGS & GENERIC RULES    |
        -- +-------------------------+
        { -- Rule 49: Adding [Eth] tag to items
            codes = "allitems",
            ethereal = true,
            suffix = " {gray}[Eth]"
        },
        { -- Rule 50: Adding socket number tag to Ethereal items
            codes = "allitems",
            ethereal = true,
            sockets = "1+",
            prefix = "ÿcI",
            suffix = "{gray}[{sockets}]"
        },
        { -- Rule 51: Adding socket number tag to Non-Ethereal items
            codes = "allitems",
            ethereal = false,
            sockets = "1+",
            suffix = " {gray}[{sockets}]"
            -- This second rule makes [Eth] and socket number ([#]) beside each other
        } -- Add a comma here if you uncomment testing rule below
        -- +-------------------------+
        -- | TESTING                 |
        -- +-------------------------+
        -- { -- Rule 52: For testing, adds a bunch of info to item
        --     codes = "allitems",
        --     location = { "onplayer", "equipped", "onground", "dropping" },
        --     suffix = " \n{gray}[Code: {orange}{code}{gray}]\n[Quality: {orange}{quality}{gray}]\n[Rarity: {orange}{rarity}{gray}]"
        -- }
    }
}
