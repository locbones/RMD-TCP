--- Filter Title: Cogy's Light weight Filter
--- Filter Type: (For new players)
--- Filter Description: Filters useless Items,\nand highlights a few Items\nFor suggestions please DM or Ping @Cogy

return {
    rules = {
        {   -- Hides 1 Socket Superior and Normal Items
            codes = "allitems",
            quality = "3-",
            sockets = "1",
            hide = true
        },
        {   -- Hides all non superior Bases with no Sockets, except some Paladin Maces
            codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "7qs"},
            quality = "2",
            sockets = "0",
            hide = true
        },
        { -- Hides all Gold under 500 if the Player reached level 60
            code = "gld",
            stat = {index = 14, op = "<=", value= 500}, -- Value = Gold minimum to be shown
            pstat = {index = 12, op = ">=", value = 60}, -- Value = Character Level
            area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docks","The Pandemonium Fortress","Harrogath"},
            hide = true
        },
        {   -- Hides non rare Arrows
            code = "aqv",
            quality = "4-", -- If you want to drop Magic Arrows, change quality to 3
            area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docks","The Pandemonium Fortress","Harrogath"},
            hide = true
        },
        {   -- Hides Scrolls, Potions and Small Juvs
            codes = { "mp1", "mp2", "mp3", "mp4", "mp5", "hp1", "hp2", "hp3", "hp4", "hp5", "isc", "tsc", "rvs"}, -- rvs are the Small Rejuvs, if you want to remove it from the Filter
            area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docks","The Pandemonium Fortress","Harrogath"},
            hide = true
        },
        {   -- Highlights Runes Mal+ 
            codes = { "r23","r24","r25","r26","r27","r28","r29","r30","r31","r32","r33","r34","r35","r36"},
            notify = "High Rune Droped" -- Message can be customized here
        },
        {   -- Highlights Treasure Chests
            codes = { "y09","y10","y11","y12","y13","y14","y15","y16","y17","y18","y19","y20","y21","y22","y23","y24","y25","y26","y27","y28","y29","y30","y31","y32"},
            hide = false,
            notify = "A Chest of Treasure" -- Message can be custimized
        },
        {   -- Highlights Rama Gifts
            code = "Rgx",
            notify = "A Gift by the Gods" -- Message can be custimized
        },





        -- region String Offloads

        --String offload tooltips. These are helper tooltips for various RMD-Only items that are no longer displayed in the string files for string limit reasons.
        --Certain languages such as Russian, French, etc have lower total characters allowed in their string entries throughout files (best theory available).
        --This helps us trim the excess strings from the game files, while still allowing diverse and helpful descriptions. These entries are considered part of the mod.

        { --Quality of Life Bag Description
            code = "Z01",
            location ="onplayer",
            prefix = "{gray}(Cube Recipes > Quality of Life Bag)\n{white} -More info can be found on our {turquoise}Wiki\n{white}-You can find item {turquoise}removers {white}from {turquoise}Edyrem {white}in each town\n{gray}(Gems, Runes, Keys, Organs, Rare Jewels, Full Rejuvs and Set/Unique items)\n {white}-Many items can be deposited into this bag for various purposes\n{turquoise}Mod Tips:\n\n"
        },
        { --Starter Package Description
            code = "y66",
            location = "onplayer",
            prefix = {
                deDE = "{green}(Würfel allein, für Belohnungen)\n\n{gold}-Unendlicher Schlüssel\n{gold}-Buch der Einsicht\n{gold}-Buch der sicheren Rückkehr\n{tan}Enthält:\n\n",
                enUS = "{green}(Cube alone to receive rewards)\n\n{gold}-Endless Keyring\n{gold}-Book of Insight\n{gold}-Book of Safe Return\n{tan}Contains:\n\n",
                esES = "{green}(Cubo solo para recibir recompensas)\n\n{gold}-Llavero sin fin\n{gold}-Libro de la perspicacia\n{gold}-Libro del retorno seguro\n{tan}Contiene:\n\n",
                esMX = "{green}(Cubo solo para recibir recompensas)\n\n{gold}-Llavero sin fin\n{gold}-Libro de la perspicacia\n{gold}-Libro del retorno seguro\n{tan}Contiene:\n\n",
                frFR = "{green}(Cubo da solo per ricevere ricompense)\n\n{gold}-Portachiavi infinito\n{gold}-Libro dell'intuizione\n{gold}-Libro del ritorno sicuro\n{tan}Contiene:\n\n",
                itIT = "{green}(Cube seul pour recevoir des récompenses)\n\n{gold}-Porte-clés sans fin\n{gold}-Livre de perspicacité\n{gold}-Livre de retour en toute sécurité\n{tan}Contient:\n\n",
                jaJP = "{green}(キューブ単体で報酬を受け取る)\n\n{gold}-エンドレス キーリング\n{gold}-洞察の書\n{gold}-セーフ リターンの書\n{tan}内容:\n\n",
                koKR = "{green}(큐빙)\n\n{gold}-끝없는 열쇠고리\n{gold}-통찰의 책\n{gold}-안전한 귀환의 책\n{tan}포함:\n\n",
                plPL = "{green}(Sama kostka do otrzymywania nagród)\n\n{gold}-Niekończący się brelok\n{gold}-Księga wglądu\n{gold}-Księga bezpiecznego powrotu\n{tan}Zawiera:\n\n",
                ptBR = "{green}(Cubo sozinho para receber recompensas)\n\n{gold}-Chaveiro sem fim\n{gold}-Livro do Insight\n{gold}-Livro do Retorno Seguro\n{tan}Contém:\n\n",
                ruRU = "{green}(только куб для получения наград)\n\n{gold}-Бесконечное кольцо для ключей\n{gold}-Книга проницательности\n{gold}-Книга безопасного возвращения\n{tan}Содержит:\n\n",
                zhCN = "{green}（单独获得奖励的魔方）\n\n{gold}-无尽钥匙圈\n{gold}-洞察之书\n{gold}-安全归来之书\n{tan}包含：\n\n",
                zhTW = "{green}（單獨獲得獎勵的魔方）\n\n{gold}-無盡鑰匙圈\n{gold}-洞察之書\n{gold}-安全歸來之書\n{tan}包含：\n\n",
            }
        },
        { --Scroll of Belial Description
            code = "y67",
            location = "onplayer",
            prefix = {
                deDE = "{gray}Ein unheiliger Handel bringt große Macht oder Elend",
                enUS = "{gray}An unholy bargain grants great power or misery",
                esES = "{gray}Un trato impío otorga gran poder o miseria",
                esMX = "{gray}Un trato impío otorga gran poder o miseria",
                frFR = "{gray}Un marché impie accorde un grand pouvoir ou de la misère",
                itIT = "{gray}Un patto empio garantisce grande potere o miseria",
                jaJP = "{gray}不浄な取引は強大な力や悲惨さを与える",
                koKR = "{gray}부정한 거래는 큰 힘이나 불행을 가져옵니다",
                plPL = "{gray} Bezbożny interes zapewnia wielką moc lub nieszczęście",
                ptBR = "{gray}Uma barganha profana concede grande poder ou miséria",
                ruRU = "{gray}Нечестивая сделка дает великую власть или несчастье.",
                zhCN = "{gray}邪恶的交易会赋予巨大的力量或痛苦",
                zhTW = "{gray}邪惡的交易會賦予巨大的力量或痛苦",
            }
        },
        { --Unique Weapon Blood Contract Description
            code = "a00",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um eine {gold}Unique-Waffe zu erhalten",
                enUS = "{white}Cube alone to receive a {gold}Unique Weapon",
                esES = "{white}Cube solo para recibir un arma {gold}Unique",
                esMX = "{white}Cube solo para recibir un arma {gold}Unique",
                frFR = "{white}Cube seul pour recevoir une arme {gold}Unique",
                itIT = "{white}Cube da solo per ricevere un'arma {gold}Unique",
                jaJP = "{white}Cube だけで {gold}Unique Weapon を受け取ります",
                koKR = "{white}큐빙해서 {gold}Unique 무기 획득",
                plPL = "{white}Cube sam, aby otrzymać {gold}Unique Weapon",
                ptBR = "{white}Cube sozinho para receber uma arma {gold}Unique",
                ruRU = "{white}Cube в одиночку, чтобы получить {gold}Unique Weapon",
                zhCN = "{white}Cube 单独获得 {gold}Unique 武器",
                zhTW = "{white}Cube 單獨取得 {gold}Unique 武器",
            }
        },
        { --Unique Armor Blood Contract Description
            code = "a01",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um eine {gold}Unique-Rüstung zu erhalten",
                enUS = "{white}Cube alone to receive a {gold}Unique Armor",
                esES = "{white}Cube solo para recibir una armadura {gold}Unique",
                esMX = "{white}Cube solo para recibir una armadura {gold}Unique",
                frFR = "{white}Cube seul pour recevoir une {gold}Unique Armor",
                itIT = "{white}Cube da solo per ricevere un'armatura {gold}Unique",
                jaJP = "{white}Cube 単独で {gold}Unique Armor を受け取る",
                koKR = "{white}큐빙해서 {gold}Unique Armor 획득",
                plPL = "{white}Cube sam, aby otrzymać {gold}Unique Armor",
                ptBR = "{white}Cube sozinho para receber uma armadura {gold}Unique",
                ruRU = "{white}Cube в одиночку, чтобы получить {gold}Unique Armor",
                zhCN = "{white}Cube 单独获得 {gold}Unique Armor",
                zhTW = "{white}Cube 單獨取得 {gold}Unique Armor",
            }
        },
        { --Unique Jewelry Blood Contract Description
            code = "a02",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um {gold}Unique-Schmuck zu erhalten",
                enUS = "{white}Cube alone to receive {gold}Unique Jewelry",
                esES = "{white}Cube solo para recibir {gold}Unique Jewelry",
                esMX = "{white}Cube solo para recibir {gold}Unique Jewelry",
                frFR = "{white}Cube seul pour recevoir les bijoux {gold}Unique",
                itIT = "{white}Cube da solo per ricevere gioielli {gold}Unique",
                jaJP = "{white}Cube だけで {gold}Unique Jewelry を受け取ります",
                koKR = "{white}큐빙해서도 {gold}Unique Jewelry 획득",
                plPL = "{white}Cube sam, aby otrzymać {gold}Unique Jewelry",
                ptBR = "{white}Cube sozinho para receber joias {gold}Unique",
                ruRU = "{white}Cube в одиночку получит {gold}Unique Jewelry",
                zhCN = "{white}Cube单独获得{gold}Unique珠宝",
                zhTW = "{white}Cube單獨取得{gold}Unique珠寶",
            }
        },
        { --Set Weapon Blood Contract Description
            code = "a03",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um eine {green}Set-Waffe zu erhalten",
                enUS = "{white}Cube alone to receive a {green}Set Weapon",
                esES = "{white}Cube solo para recibir un arma {green}Set",
                esMX = "{white}Cube solo para recibir un arma {green}Set",
                frFR = "{white}Cube seul pour recevoir une arme {green}Set",
                itIT = "{white}Cube da solo per ricevere un'arma {green}Set",
                jaJP = "{white}Cube だけで {green}Set 武器を受け取ります",
                koKR = "{white}큐빙해서 {green}Set 무기 획득",
                plPL = "{white}Cube sam, aby otrzymać broń {green}Set",
                ptBR = "{white}Cube sozinho para receber uma arma {green}Set",
                ruRU = "{white}Cube в одиночку, чтобы получить {green}Set Weapon",
                zhCN = "{white}Cube单独获得{green}Set武器",
                zhTW = "{white}Cube單獨取得{green}Set武器",
            }
        },
        { --Set Armor Blood Contract Description
            code = "a04",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um eine {green}Set-Rüstung zu erhalten",
                enUS = "{white}Cube alone to receive a {green}Set Armor",
                esES = "{white}Cube solo para recibir una armadura {green}Set",
                esMX = "{white}Cube solo para recibir una armadura {green}Set",
                frFR = "{white}Cube seul pour recevoir une armure {green}Set",
                itIT = "{white}Cube da solo per ricevere un'armatura {green}Set",
                jaJP = "{white}Cube 単独で {green}Set Armor を受け取る",
                koKR = "{white}큐빙해서 {green}Set 방어구 획득",
                plPL = "{white}Cube sam, aby otrzymać zbroję {green}Set",
                ptBR = "{white}Cube sozinho para receber uma armadura {green}Set",
                ruRU = "{white}Cube в одиночку, чтобы получить {green}Set Armor",
                zhCN = "{white}Cube 单独获得 {green}Set Armor",
                zhTW = "{white}Cube 單獨獲得 {green}Set Armor",
            }
        },
        { --Set Jewelry Blood Contract Description
            code = "a05",
            location = "onplayer",
            prefix = {
                deDE = "{white}Cube, um {green}Set-Schmuck zu erhalten",
                enUS = "{white}Cube alone to receive {green}Set Jewelry",
                esES = "{white}Cube solo para recibir {green}Set Jewelry",
                esMX = "{white}Cube solo para recibir {green}Set Jewelry",
                frFR = "{white}Cube seul pour recevoir les bijoux {green}Set",
                itIT = "{white}Cube da solo per ricevere gioielli {green}Set",
                jaJP = "{white}Cube 単独で {green}Set ジュエリーを受け取る",
                koKR = "{white}큐빙해서 {green}Set 쥬얼리를 받으세요",
                plPL = "{white}Cube sam, aby otrzymać biżuterię {green}Set",
                ptBR = "{white}Cube sozinho para receber {green}Set Jewelry",
                ruRU = "{white}Cube в одиночку получит украшения {green}Set",
                zhCN = "{white}Cube单独领取{green}Set Jewelry",
                zhTW = "{white}Cube單獨領{green}Set Jewelry",
            }
        },
        { --Testament 1:1 Description
            code = "a10",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:1\n{gray}Die Tugend verschlingt – ein böser Trend\nDer Hunger der Völlerei kennt kein Ende\nVerzehrt alles im Feuer\nEin Abgrund der Begierde ohne Boden\n",
                enUS = "\n{tan}-Testament 1:1\n{gray}Devouring virtue - a wicked trend\nGluttony's hunger knows no end\nConsuming all in the fire\nA bottomless pit of desire\n",
                esES = "\n{tan}-Testamento 1:1\n{gray}La virtud devoradora - una tendencia perversa\nEl hambre de la gula no tiene fin\nConsumiéndolo todo en el fuego\nUn pozo sin fondo de deseo\n",
                esMX = "\n{tan}-Testamento 1:1\n{gray}La virtud devoradora - una tendencia perversa\nEl hambre de la gula no tiene fin\nConsumiéndolo todo en el fuego\nUn pozo sin fondo de deseo\n",
                frFR = "\n{tan}-Testament 1:1\n{gray}Dévorer la vertu - une mauvaise tendance\nLa faim de la gourmandise ne connaît pas de fin\nConsommer tout dans le feu\nUn gouffre sans fond de désir\n",
                itIT = "\n{tan}-Testamento 1:1\n{gray}Virtù divorante - una tendenza malvagia\nLa fame della golosità non ha fine\nConsumare tutto nel fuoco\nUn abisso senza fondo di desiderio\n",
                jaJP = "\n{tan}-遺言 1:1\n{gray} 美徳をむさぼり食う - 邪悪な傾向\n暴食の飢えは終わりを知りません\nすべてを火の中に焼き尽くします\n底なしの欲望の穴\n",
                koKR = "\n{tan}-성서 1:1\n{gray}미덕을 삼키는 - 사악한 경향\n폭식의 배고픔은 끝이 없습니다\n모든 것을 불 속에 태워버립니다\n무한한 욕망의 구덩이\n",
                plPL = "\n{tan} – Testament 1:1\n{gray}Pożeranie cnoty – niegodziwy trend\nGłód obżarstwa nie zna końca\nPożerający wszystko w ogniu\nBezdenna otchłań pożądania\n",
                ptBR = "\n{tan}-Testamento 1:1\n{gray}Devorar virtude - uma tendência perversa\nA fome da gula não tem fim\nConsumir tudo no fogo\nUm poço sem fundo de desejo\n",
                ruRU = "\n{tan}-Завет 1:1\n{gray}Пожирание добродетели – порочная тенденция\nГолод чревоугодия не знает конца\nПожирающий всё в огне\nБездонная яма желаний\n",
                zhCN = "\n{tan}-圣约 1:1\n{gray} 吞噬美德 - 邪恶趋势\n暴食的饥饿永无止境\n在火中吞噬一切\n欲望的无底洞\n",
                zhTW = "\n{tan}-聖約 1:1\n{gray} 吞噬美德 - 邪惡趨勢\n暴食的飢餓永無止境\n在火中吞噬一切\n慾望的無底洞\n",
            }
        },
        { --Testament 1:2 Description
            code = "a11",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:2\n{gray}Die Seele verrotten – dunkle Samen säen\nEin zuckerhaltiger Überzug bitteren Taten\nDer Griff der Völlerei löst sich nie auf\nSüße Sünden und gezuckerte Lügen\n",
                enUS = "\n{tan}-Testament 1:2\n{gray}Rotting the soul - sowing dark seeds\nA sugary coating on bitter deeds\nGluttony's grip never unties\nCandied sins and sugared lies\n",
                esES = "\n{tan}-Testamento 1:2\n{gray}Pudrir el alma - sembrar semillas oscuras\nUna capa azucarada sobre los hechos amargos\nLa gula nunca desata\nPecados confitados y mentiras azucaradas\n",
                esMX = "\n{tan}-Testamento 1:2\n{gray}Pudrir el alma - sembrar semillas oscuras\nUna capa azucarada sobre los hechos amargos\nLa gula nunca desata\nPecados confitados y mentiras azucaradas\n",
                frFR = "\n{tan}-Testament 1:2\n{gray}Pourrir l'âme - semer des graines sombres\nUn revêtement sucré sur les actes amers\nL'emprise de la gourmandise ne dénoue jamais\nPéchés confits et mensonges sucrés\n",
                itIT = "\n{tan}-Testamento 1:2\n{gray}Marcire l'anima - seminare semi oscuri\nUn rivestimento zuccherino sulle azioni amare\nLa stretta della gola non scioglie mai\nPeccati canditi e bugie zuccherate\n",
                jaJP = "\n{tan}-遺言 1:2\n{gray} 魂を腐らせる - 暗い種を蒔く\n苦い行いを甘く覆う\n暴食の支配は決して解けない\n砂糖漬けの罪と砂糖漬けの嘘\n",
                koKR = "\n{tan}-유언 1:2\n{gray}영혼 썩기 - 검은 씨앗 뿌리기\n쓴 행위에 달콤한 코팅\n폭식의 손아귀는 결코 풀리지 않습니다\n사탕에 빠진 죄와 설탕에 절인 거짓말\n",
                plPL = "\n{tan} – Testament 1:2\n{gray}Gnicie duszy – siewanie ciemnych nasion\nSłodka powłoka na gorzkich czynach\nUścisk obżarstwa nigdy się nie rozwiązuje\nSłodzone grzechy i osłodzone kłamstwa\n",
                ptBR = "\n{tan}-Testamento 1:2\n{gray}Apodrecendo a alma - semeando sementes escuras\nUma cobertura açucarada sobre ações amargas\nO controle da gula nunca desata\nPecados cristalizados e mentiras açucaradas\n",
                ruRU = "\n{tan}-Завет 1:2\n{gray}Гнивание души - сеяние тёмных семян\nСладкая оболочка на горьких делах\nХватка чревоугодия никогда не развязывается\nЗасахаренные грехи и сладкая ложь\n",
                zhCN = "\n{tan}-遗嘱 1:2\n{gray}腐烂灵魂 - 播下黑暗种子\n苦涩行为上的糖衣\n暴食的束缚永远不会解开\n蜜饯罪恶和糖衣谎言\n",
                zhTW = "\n{tan}-遺囑 1:2\n{gray}腐爛靈魂 - 播下黑暗種子\n苦澀行為上的糖衣\n暴食的束縛永遠不會解開\n蜜餞罪惡和糖衣謊言\n",
            }
        },
        { --Testament 1:3 Description
            code = "a12",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:3\n{gray}Betrunkenes Fest mit Met in der Hand\nLustiges Flüstern einer gefräßigen Bande\nIn den HAlle des Überflusses schwanken sie\nTugend zerfällt – in die Irre geführt\n",
                enUS = "\n{tan}-Testament 1:3\n{gray}Virtue crumbles - led astray\nIn the halls of excess they sway\nLustful whispers from a gluttonous band\nDrunken revelry with mead in hand\n",
                esES = "\n{tan}-Testamento 1:3\n{gray}Juerga de borrachos con hidromiel en la mano\nSusurros lujuriosos de una banda glotona\nEn los pasillos del exceso se balancean\nLa virtud se desmorona - descarriada\n",
                esMX = "\n{tan}-Testamento 1:3\n{gray}Juerga de borrachos con hidromiel en la mano\nSusurros lujuriosos de una banda glotona\nEn los pasillos del exceso se balancean\nLa virtud se desmorona - descarriada\n",
                frFR = "\n{tan}-Testament 1:3\n{gray}Festivals ivres avec de l'hydromel à la main\nChuchotements lubriques d'une bande gloutonne\nDans les salles de l'excès, ils se balancent\nLa vertu s'effondre - égarée\n",
                itIT = "\n{tan}-Testamento 1:3\n{gray}Galleria di ubriachi con idromele in mano\nSussurri lussuriosi di una banda di golosi\nNegli ambienti dell'eccesso ondeggiano\nLa virtù si sbriciola - fuorviata\n",
                jaJP = "\n{tan}-遺言 1:3\n{gray} ハチミツ酒片手に酔って大騒ぎ\n大食いバンドの好色なささやき\n過剰の広間に彼らは揺れる\n美徳は崩れる - 道に迷った\n",
                koKR = "\n{tan}-유언 1:3\n{gray}술에 취해 벌꿀술을 손에 들고\n탐욕스러운 무리의 음탕한 속삭임\n과잉의 홀에서 그들은 흔들리고\n덕은 무너지고 타락하게 됩니다\n",
                plPL = "\n{tan}-Testament 1:3\n{gray}Pijane hulanki z miodem w dłoni\nPożądliwe szepty żarłocznej bandy\nW salach nadmiaru kołyszą się\nCnota rozpada się - sprowadzona na manowce\n",
                ptBR = "\n{tan}-Testamento 1:3\n{gray}Folia bêbada com hidromel na mão\nSussurros lascivos de uma banda gulosa\nNos corredores do excesso eles balançam\nA virtude desmorona - desencaminhada\n",
                ruRU = "\n{tan}-Завет 1:3\n{gray}Пьяный пир с медом в руке\nПохотливый шепот от прожорливой банды\nВ чертогах излишеств они раскачиваются\nДобродетель рушится - сбивается с пути\n",
                zhCN = "\n{tan}-遗嘱 1:3\n{gray}手里拿着蜂蜜酒的醉酒狂欢\n贪吃乐队发出淫荡的低语\n在过度的大厅里他们摇摆\n美德崩溃 - 被引入歧途\n",
                zhTW = "\n{tan}-遺囑 1:3\n{gray}手裡拿著蜂蜜酒的醉酒狂歡\n貪吃樂隊發出淫蕩的低語\n在過度的大廳裡他們搖擺\n美德崩潰 - 被引入歧途\n",
            }
        },
        { --Testament 1:4 Description
            code = "a13",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:4\n{gray}Im ​​Tanz der Völlerei - sie spielen dasselbe\nDie Begierde verschlingt eine böse Flamme\nMilch der Mohnblume in gekrönten Kelchen\nEin gieriger Abgrund und entfesselter Hunger\n",
                enUS = "\n{tan}-Testament 1:4\n{gray}In gluttony's dance - they play the same\nDesire devours a wicked flame\nMilk of the poppy in goblets crowned\nA ravenous abyss and hunger unbound\n",
                esES = "\n{tan}-Testamento 1:4\n{gray}En la danza de la gula - tocan lo mismo\nEl deseo devora una llama malvada\nLeche de amapola en copas coronadas\nUn abismo voraz y el hambre desatada\n",
                esMX = "\n{tan}-Testamento 1:4\n{gray}En la danza de la gula - tocan lo mismo\nEl deseo devora una llama malvada\nLeche de amapola en copas coronadas\nUn abismo voraz y el hambre desatada\n",
                frFR = "\n{tan}-Testament 1:4\n{gray}Dans la danse de la gourmandise - ils jouent la même chose\nLe désir dévore une méchante flamme\nLe lait du coquelicot dans des gobelets couronnés\nUn abîme vorace et une faim illimitée\n",
                itIT = "\n{tan}-Testamento 1:4\n{gray}Nella danza della golosità - suonano lo stesso\nIl desiderio divora una fiamma malvagia\nLatte di papavero in calici incoronati\nUn abisso famelico e una fame sconfinata\n",
                jaJP = "\n{tan}-遺言 1:4\n{gray} 暴食のダンス - 彼らは同じように演奏します\n欲望は邪悪な炎を貪ります\nゴブレットの中のケシのミルクが戴冠します\n貪欲な深淵と解き放たれた飢え\n",
                koKR = "\n{tan}-유언 1:4\n{gray}폭식의 춤에서 그들은 같은 연주를 합니다\n욕망은 사악한 불꽃을 삼킵니다\n관에 담긴 양귀비 우유\n게걸스러운 심연과 끝없는 배고픔\n",
                plPL = "\n{tan}-Testament 1:4\n{gray}W tańcu obżarstwa - grają tak samo\nPragnienie pożera niegodziwy płomień\nMakowe mleko w ukoronowanych kielichach\nWygłodniała otchłań i nieograniczony głód\n",
                ptBR = "\n{tan}-Testamento 1:4\n{gray}Na dança da gula - eles tocam o mesmo\nO desejo devora uma chama perversa\nLeite de papoula em taças coroadas\nUm abismo voraz e uma fome libertada\n",
                ruRU = "\n{tan}-Завет 1:4\n{gray}В танце чревоугодия - они играют одинаково\nЖелание пожирает злое пламя\nМолоко мака в кубках увенчанных\nГолодная бездна и голод развязный\n",
                zhCN = "\n{tan}-遗嘱 1:4\n{gray}在暴食的舞蹈中 - 他们演奏相同的\n欲望吞噬邪恶的火焰\n高脚杯中的罂粟牛奶加冕\n贪婪的深渊和无拘无束的饥饿\n",
                zhTW = "\n{tan}-遺囑 1:4\n{gray}在暴食的舞蹈中 - 他們演奏相同的\n慾望吞噬邪惡的火焰\n高腳杯中的罌粟牛奶加冕\n貪婪的深淵和無拘無束的飢餓\n",
            }
        },
        { --Testament 1:5 Description
            code = "a14",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:5\n{gray}Nachsicht herrscht in der finsteren Nacht\nMeer fließt im Übermaß, die Freude eines Vielfraßes\nEin Bankettsaal, in dem die Dunkelheit kühn ist\nIn den Schatten entfalten sich Sünden\n",
                enUS = "\n{tan}-Testament 1:5\n{gray}Indulgence reigns in the sinister night\nMead flows in excess, a glutton's delight\nA banquet hall where darkness is bold\nWithin the shadows, sins unfold\n",
                esES = "\n{tan}-Testamento 1:5\n{gray}La indulgencia reina en la noche siniestra\nEl hidromiel fluye en exceso, el deleite del glotón\nUn salón de banquetes donde la oscuridad es audaz\nEn las sombras, los pecados se desarrollan\n",
                esMX = "\n{tan}-Testamento 1:5\n{gray}La indulgencia reina en la noche siniestra\nEl hidromiel fluye en exceso, el deleite del glotón\nUn salón de banquetes donde la oscuridad es audaz\nEn las sombras, los pecados se desarrollan\n",
                frFR = "\n{tan}-Testament 1:5\n{gray}L'indulgence règne dans la nuit sinistre\nL'hydromel coule à flots, un délice pour les gloutons\nUne salle de banquet où les ténèbres sont audacieuses\nDans l'ombre, les péchés se dévoilent\n",
                itIT = "\n{tan}-Testamento 1:5\n{gray}L'indulgenza regna nella notte sinistra\nL'idromele scorre in eccesso, delizia del goloso\nUna sala per banchetti dove l'oscurità è audace\nNell'ombra si manifestano i peccati\n",
                jaJP = "\n{tan}-遺言 1:5\n{gray}邪悪な夜に耽溺が支配する\n過剰に流れるミード、食いしん坊の喜び\n闇が大胆な宴会場\n影の中で罪が繰り広げられる\n",
                koKR = "\n{tan}-성서 1:5\n{gray}불길한 밤에는 방종이 지배합니다\n밀가루가 넘쳐 흐르고 대식가의 즐거움\n어둠이 대담한 연회장\n그림자 속에서 죄가 펼쳐집니다\n",
                plPL = "\n{tan}-Testament 1:5\n{gray}W złowrogą noc króluje odpust\nMiód pitny płynie w nadmiarze, rozkosz żarłoka\nSala bankietowa, w której ciemność jest odważna\nW cieniu ujawniają się grzechy\n",
                ptBR = "\n{tan}-Testamento 1:5\n{gray}A indulgência reina na noite sinistra\nO hidromel flui em excesso, a delícia de um glutão\nUm salão de banquetes onde a escuridão é ousada\nDentro das sombras, os pecados se revelam\n",
                ruRU = "\n{tan}-Завет 1:5\n{gray}Снисходительность царит в зловещей ночи\nМед льётся в избытке, наслаждение обжоры\nЗал для пиршеств, где тьма дерзка\nВ тени раскрываются грехи\n",
                zhCN = "\n{tan}-遗嘱 1:5\n{gray} 邪恶的夜晚，放纵统治\n蜂蜜酒过量流动，贪吃者的喜悦\n黑暗肆虐的宴会厅\n在阴影中，罪恶展开\n",
                zhTW = "\n{tan}-遺囑 1:5\n{gray} 邪惡的夜晚，放縱統治\n蜂蜜酒過量流動，貪吃者的喜悅\n黑暗肆虐的宴會廳\n在陰影中，罪惡展開\n",
            }
        },
        { --Testament 1:6 Description
            code = "a15",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:6\n{gray}Im ​​Fest der Schatten greift die Dunkelheit um\nVerzehrende Wünsche, der schwere Tribut der Seele\nGefräßiges Flüstern, ein dunkles Paradigma\nEin Bankett der Schatten, göttlicher Genuss\n",
                enUS = "\n{tan}-Testament 1:6\n{gray}In the feast of shadows, darkness takes hold\nConsuming desires, the soul's heavy toll\nGluttonous whispers, a dark paradigm\nA banquet of shadows, indulgence divine\n",
                esES = "\n{tan}-Testamento 1:6\n{gray}En la fiesta de las sombras, la oscuridad se apodera\nDeseos consumidores, el pesado peaje del alma\nSusurros glotones, un paradigma oscuro\nUn banquete de sombras, indulgencia divina\n",
                esMX = "\n{tan}-Testamento 1:6\n{gray}En la fiesta de las sombras, la oscuridad se apodera\nDeseos consumidores, el pesado peaje del alma\nSusurros glotones, un paradigma oscuro\nUn banquete de sombras, indulgencia divina\n",
                frFR = "\n{tan}-Testament 1:6\n{gray}Dans la fête des ombres, les ténèbres s'instAllet\nDésirs dévorants, lourd tribut de l'âme\nChuchotements gourmands, paradigme sombre\nUn banquet d'ombres, indulgence divine\n",
                itIT = "\n{tan}-Testamento 1:6\n{gray}Nel banchetto delle ombre, l'oscurità prende il sopravvento\nDesideri consumanti, pesante tributo dell'anima\nSussurri golosi, paradigma oscuro\nBanchetto delle ombre, indulgenza divina\n",
                jaJP = "\n{tan}-遺言 1:6\n{gray}影の饗宴では、闇が支配します\n貪欲な欲望、魂の重い代償\n暴食のささやき、暗いパラダイム\n影の饗宴、神聖な耽溺\n",
                koKR = "\n{tan}-성약 1:6\n{gray}그림자의 향연에서는 어둠이 사로잡습니다\n소모하는 욕망, 영혼의 무거운 대가\n탐식한 속삭임, 어두운 패러다임\n그림자의 연회, 신성한 방종\n",
                plPL = "\n{tan}-Testament 1:6\n{gray}W uczcie cieni panuje ciemność\nPożerające pragnienia, ciężkie żniwo duszy\nŻarłoczne szepty, mroczny paradygmat\nBankiet cieni, boskie pobłażanie\n",
                ptBR = "\n{tan}-Testamento 1:6\n{gray}No banquete das sombras, a escuridão toma conta\nDesejos consumidores, o pesado tributo da alma\nSussurros glutões, um paradigma sombrio\nUm banquete de sombras, indulgência divina\n",
                ruRU = "\n{tan}-Завет 1:6\n{gray}На празднике теней овладевает тьма\nВсепоглощающие желания, тяжкие страдания души\nПрожорливый шепот, темная парадигма\nПир теней, божественное снисхождение\n",
                zhCN = "\n{tan}-遗嘱1:6\n{gray}在阴影的盛宴中，黑暗占据了\n吞噬欲望，灵魂的沉重负担\n贪婪的低语，黑暗的范式\n阴影的盛宴，神圣的放纵\n",
                zhTW = "\n{tan}-遺囑1:6\n{gray}在陰影的盛宴中，黑暗佔據了\n吞噬慾望，靈魂的沉重負擔\n貪婪的低語，黑暗的範式\n陰影的盛宴，神聖的放縱\n",
            }
        },
        { --Testament 1:7 Description
            code = "a16",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 1:7\n{gray}Wo der Überfluss die Seele immer mehr ertränkt\nEin Bankett der Versuchung, ein gefährliches Ufer\nDie Müden in die Hitze des Genusses locken\nSirenen der Völlerei, ihr Ruf ist so süß\n",
                enUS = "\n{tan}-Testament 1:7\n{gray}Where excess drowns the soul evermore\nA banquet of temptation, a perilous shore\nLuring the weary into indulgence's heat\nSirens of gluttony, their call so sweet\n",
                esES = "\n{tan}-Testamento 1:7\n{gray}Donde el exceso ahoga el alma para siempre\nUn banquete de tentación, una orilla peligrosa\nAtrayendo a los cansados ​​al calor de la indulgencia\nSirenas de la glotonería, su llamado tan dulce\n",
                esMX = "\n{tan}-Testamento 1:7\n{gray}Donde el exceso ahoga el alma para siempre\nUn banquete de tentación, una orilla peligrosa\nAtrayendo a los cansados ​​al calor de la indulgencia\nSirenas de la glotonería, su llamado tan dulce\n",
                frFR = "\n{tan}-Testament 1:7\n{gray}Où l'excès noie toujours l'âme\nUn banquet de tentation, un rivage périlleux\nAttirant les fatigués dans la chaleur de l'indulgence\nSirènes de gourmandise, leur appel si doux\n",
                itIT = "\n{tan}-Testamento 1:7\n{gray}Dove l'eccesso annega sempre più l'anima\nUn banchetto di tentazioni, una spiaggia pericolosa\nAttira gli stanchi nel calore dell'indulgenza\nSirene della golosità, il loro richiamo è così dolce\n",
                jaJP = "\n{tan}-遺言 1:7\n{gray} 過剰が魂を永遠に溺れさせる場所\n誘惑の宴、危険な岸辺\n疲れた者を耽溺の熱さに誘う\n暴食のサイレン、その呼び声はとても甘い\n",
                koKR = "\n{tan}-유언 1:7\n{gray}과잉이 영혼을 더욱 익사시키는 곳\n유혹의 연회, 위험한 해안\n지친 자를 방종의 열기로 유인\n폭식의 사이렌, 너무나 감미로운 부름\n",
                plPL = "\n{tan}-Testament 1:7\n{gray}Gdzie nadmiar topi duszę na zawsze\nBankiet pokus, niebezpieczny brzeg\nWabiąc zmęczonych w żar pobłażania\nSyreny obżarstwa, ich wołanie jest tak słodkie\n",
                ptBR = "\n{tan}-Testamento 1:7\n{gray}Onde o excesso afoga a alma para sempre\nUm banquete de tentação, uma praia perigosa\nAtrair o cansado para o calor da indulgência\nSereias da gula, seu chamado é tão doce\n",
                ruRU = "\n{tan}-Завет 1:7\n{gray}Там, где излишества тонут душу навеки\nПир искушения, опасный берег\nСманивая усталых в зной наслаждения\nСирены чревоугодия, их зов так сладок\n",
                zhCN = "\n{tan}-《遗嘱》1:7\n{gray}那里的过度永远淹没了灵魂\n诱惑的盛宴，危险的海岸\n引诱疲倦的人进入放纵的热度\n暴食的警报器，它们的叫声如此甜美\n",
                zhTW = "\n{tan}-《遺囑》1:7\n{gray}那裡的過度永遠淹沒了靈魂\n誘惑的盛宴，危險的海岸\n引誘疲倦的人進入放縱的熱度\n暴食的警報器，它們的叫聲如此甜美\n",
            }
        },
        { --Testament 2:1 Description
            code = "a17",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:1\n{gray}Verlorene Seelen umschlungen, in sündigen Spielen\nIn fleischlichen Reichen, wo die Tugend verirrt ist\nDas Feuer der Begierde, eine Geschichte zum Erzählen\nDie seidenen Ketten der Lust, ein bindender Zauber\n",
                enUS = "\n{tan}-Testament 2:1\n{gray}Lost souls entwined, in sinful plays\nIn carnal realms, where virtue strays\nDesire's fire, a tale to tell\nLust's silken chains, a binding spell\n",
                esES = "\n{tan}-Testamento 2:1\n{gray}Almas perdidas entrelazadas, en juegos pecaminosos\nEn reinos carnales, donde la virtud se extravía\nEl fuego del deseo, una historia que contar\nLas cadenas de seda de la lujuria, un hechizo vinculante\n",
                esMX = "\n{tan}-Testamento 2:1\n{gray}Almas perdidas entrelazadas, en juegos pecaminosos\nEn reinos carnales, donde la virtud se extravía\nEl fuego del deseo, una historia que contar\nLas cadenas de seda de la lujuria, un hechizo vinculante\n",
                frFR = "\n{tan}-Testament 2:1\n{gray}Âmes perdues enlacées, dans des jeux pécheurs\nDans les royaumes charnels, où la vertu s'égare\nLe feu du désir, une histoire à raconter\nLes chaînes soyeuses de la luxure, un sortilège de liaison\n",
                itIT = "\n{tan}-Testamento 2:1\n{gray}Anime perdute intrecciate, in commedie peccaminose\nNei regni carnali, dove la virtù vaga\nIl fuoco del desiderio, una storia da raccontare\nLe catene di seta della lussuria, un incantesimo vincolante\n",
                jaJP = "\n{tan}-遺言 2:1\n{gray}失われた魂が絡み合い、罪深い戯れに\n美徳が迷走する肉欲の領域で\n欲望の火、語るべき物語\n欲望の絹のような鎖、拘束の呪文\n",
                koKR = "\n{tan}-유언 2:1\n{gray}죄악의 연극 속에 얽혀 있는 길 잃은 영혼들\n미덕이 길을 잃은 육욕의 영역에서\n욕망의 불, 전하는 이야기\n욕망의 비단 사슬, 속박 주문\n",
                plPL = "\n{tan}-Testament 2:1\n{gray}Zagubione dusze splecione w grzesznych zabawach\nW krainach cielesnych, gdzie cnota błądzi\nOgień pragnień, opowieść do opowiedzenia\nJedwabne łańcuchy pożądania, zaklęcie wiążące\n",
                ptBR = "\n{tan}-Testamento 2:1\n{gray}Almas perdidas entrelaçadas, em jogos pecaminosos\nEm reinos carnais, onde a virtude se perde\nO fogo do desejo, uma história para contar\nAs correntes de seda da luxúria, um feitiço de ligação\n",
                ruRU = "\n{tan}-Завет 2:1\n{gray}Потерянные души переплелись в греховных играх\nВ плотских сферах, где блуждает добродетель\nОгонь желания, история, которую нужно рассказать\nШелковые цепи похоти, связывающее заклинание\n",
                zhCN = "\n{tan}-遗嘱 2:1\n{gray}迷失的灵魂在罪恶的游戏中纠缠在一起\n在肉欲的领域，美德迷失\n欲望之火，一个讲述的故事\n情欲的丝链，一个束缚咒语\n",
                zhTW = "\n{tan}-遺囑2:1\n{gray}迷失的靈魂在罪惡的遊戲中糾纏在一起\n在肉慾的領域，美德迷失\n慾望之火，一個講述的故事\n情慾的絲鏈，一個束縛咒語\n",
            }
        },
        { --Testament 2:2 Description
            code = "a18",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:2\n{gray}Das Gift der Lust breitet sich aus, in ungerechten Herzen\nIn gestohlenen Augenblicken stößt Leidenschaft auf\nRote Lippen, angehäuftes Verlangen\nEin so tiefer Kuss, in Schatten geworfen\n",
                enUS = "\n{tan}-Testament 2:2\n{gray}Lust's poison spreads, in hearts unjust\nIn stolen moments, passion thrust\nCrimson lips, desire amassed\nA kiss so deep, in shadows cast\n",
                esES = "\n{tan}-Testamento 2:2\n{gray}El veneno de la lujuria se esparce, en los corazones injustos\nEn momentos robados, la pasión empuja\nLabios carmesí, el deseo acumulado\nUn beso tan profundo, en las sombras proyectadas\n",
                esMX = "\n{tan}-Testamento 2:2\n{gray}El veneno de la lujuria se esparce, en los corazones injustos\nEn momentos robados, la pasión empuja\nLabios carmesí, el deseo acumulado\nUn beso tan profundo, en las sombras proyectadas\n",
                frFR = "\n{tan}-Testament 2:2\n{gray}Le poison de la luxure se répand, dans les cœurs injustes\nDans les moments volés, la passion poussée\nLèvres pourpres, le désir amassé\nUn baiser si profond, dans les ombres projetées\n",
                itIT = "\n{tan}-Testamento 2:2\n{gray}Il veleno della lussuria si diffonde, nei cuori ingiusti\nIn momenti rubati, passione spinta\nLabbra cremisi, desiderio accumulato\nUn bacio così profondo, nell'ombra proiettata\n",
                jaJP = "\n{tan}-遺言 2:2\n{gray}欲望の毒が広がり、不当な心の中に\n盗まれた瞬間に、情熱が突き刺さる\n深紅の唇、蓄積された欲望\n影に映る深いキス\n",
                koKR = "\n{tan}-구약 2:2\n{gray}정욕의 독은 불의한 마음에 퍼집니다\n훔친 순간에 열정이 찔립니다\n진홍빛 입술, 쌓인 욕망\n그림자 속에 드리워진 너무나 깊은 키스\n",
                plPL = "\n{tan} – Testament 2:2\n{gray}Trucizna pożądania rozprzestrzenia się w sercach niesprawiedliwie\nW skradzionych chwilach, pchnięcie namiętności\nSzkarłatne usta, nagromadzone pożądanie\nPocałunek tak głęboki, w cieniu rzucanym\n",
                ptBR = "\n{tan}-Testamento 2:2\n{gray}O veneno da luxúria se espalha, em corações injustos\nEm momentos roubados, a paixão empurra\nLábios vermelhos, desejo acumulado\nUm beijo tão profundo, nas sombras\n",
                ruRU = "\n{tan}-Завет 2:2\n{gray}Яд похоти распространяется в сердцах несправедливых\nВ украденные мгновения страсть бросается\nБагровые губы, желание накапливается\nПоцелуй такой глубокий, в отбрасываемых тенях\n",
                zhCN = "\n{tan}-遗嘱 2:2\n{gray}情欲的毒药在不公正的心中蔓延\n在被偷走的时刻，激情猛冲\n深红色的嘴唇，积聚的欲望\n深深的吻，在阴影中\n",
                zhTW = "\n{tan}-遺囑2:2\n{gray}情慾的毒藥在不公正的心中蔓延\n在被偷走的時刻，激情猛衝\n深紅色的嘴唇，積聚的慾望\n深深的吻，在陰影中\n",
            }
        },
        { --Testament 2:3 Description
            code = "a19",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:3\n{gray}Eine flüchtige Freude, ein lustvolles Grab\nIn verschlungenen Gliedern erblüht das Verlangen\nDie Illusion der Lust, ein betörender Plan\nVergängliche Ekstase, ein flüchtiger Traum\n",
                enUS = "\n{tan}-Testament 2:3\n{gray}A fleeting joy, a lustful tomb\nIn tangled limbs, desire's bloom\nLust's illusion, a beguiling scheme\nEphemeral ecstasy, a fleeting dream\n",
                esES = "\n{tan}-Testamento 2:3\n{gray}Un gozo fugaz, una tumba lujuriosa\nEn miembros enredados, el florecimiento del deseo\nLa ilusión de la lujuria, un plan seductor\nÉxtasis efímero, un sueño fugaz\n",
                esMX = "\n{tan}-Testamento 2:3\n{gray}Un gozo fugaz, una tumba lujuriosa\nEn miembros enredados, el florecimiento del deseo\nLa ilusión de la lujuria, un plan seductor\nÉxtasis efímero, un sueño fugaz\n",
                frFR = "\n{tan}-Testament 2:3\n{gray}Une joie passagère, un tombeau lubrique\nDans les membres emmêlés, l'épanouissement du désir\nL'illusion de la luxure, un projet séduisant\nExtase éphémère, un rêve éphémère\n",
                itIT = "\n{tan}-Testamento 2:3\n{gray}Una gioia fugace, una tomba lussuriosa\nNelle membra aggrovigliate, fiorisce il desiderio\nL'illusione della lussuria, un piano seducente\nEstasi effimera, un sogno fugace\n",
                jaJP = "\n{tan}-遺言 2:3\n{gray}つかの間の喜び​​、欲望の墓\nもつれた手足、欲望の花が咲く\n欲望の幻想、魅惑的な計画\nはかないエクスタシー、つかの間の夢\n",
                koKR = "\n{tan}-약 2:3\n{gray}덧없는 기쁨, 음란한 무덤\n엉킨 사지에서 꽃피운 욕망\n욕망의 환상, 미혹의 계략\n일시적인 황홀경, 덧없는 꿈\n",
                plPL = "\n{tan} – Testament 2:3\n{gray}Przelotna radość, lubieżny grobowiec\nW splątanych kończynach, rozkwit pożądania\nIluzja pożądania, zwodniczy plan\nEfemeryczna ekstaza, ulotny sen\n",
                ptBR = "\n{tan}-Testamento 2:3\n{gray}Uma alegria passageira, um túmulo lascivo\nEm membros emaranhados, o florescimento do desejo\nA ilusão da luxúria, um esquema sedutor\nÊxtase efêmero, um sonho passageiro\n",
                ruRU = "\n{tan}-Завет 2:3\n{gray}Мимолетная радость, похотливая могила\nВ спутанных членах — цветение желания\nИллюзия похоти, заманчивый замысел\nЭфемерный экстаз, мимолетная мечта\n",
                zhCN = "\n{tan}-遗嘱 2:3\n{gray} 转瞬即逝的喜悦，淫荡的坟墓\n在纠缠的四肢中，欲望绽放\n欲望的幻象，诱人的计划\n短暂的狂喜，转瞬即逝的梦想\n",
                zhTW = "\n{tan}-遺囑2:3\n{gray} 轉瞬即逝的喜悅，淫蕩的墳墓\n在糾纏的四肢中，慾望綻放\n慾望的幻象，誘人的計劃\n短暫的狂喜，轉瞬即逝的夢想\n",
            }
        },
        { --Testament 2:4 Description
            code = "a20",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:4\n{gray}Herzen verschlungen, Begierde freigesetzt\nIn der Grube der Leidenschaft, wo Dämonen feiern\nDie dunklen Geheimnisse der Lust, ein verbotenes Zeichen\nObsidian umarmt, Schatten umschlingen\n",
                enUS = "\n{tan}-Testament 2:4\n{gray}Hearts devoured, desire released\nIn passion's pit, where demons feast\nLust's dark secrets, a forbidden sign\nObsidian embrace, shadows entwine\n",
                esES = "\n{tan}-Testamento 2:4\n{gray}Corazones devorados, deseo liberado\nEn el pozo de la pasión, donde los demonios se deleitan\nLos oscuros secretos de la lujuria, una señal prohibida\nAbrazo de obsidiana, las sombras se entrelazan\n",
                esMX = "\n{tan}-Testamento 2:4\n{gray}Corazones devorados, deseo liberado\nEn el pozo de la pasión, donde los demonios se deleitan\nLos oscuros secretos de la lujuria, una señal prohibida\nAbrazo de obsidiana, las sombras se entrelazan\n",
                frFR = "\n{tan}-Testament 2:4\n{gray}Cœurs dévorés, désir libéré\nDans le gouffre de la passion, où les démons se régalent\nLes sombres secrets de la luxure, un signe interdit\nL'étreinte d'obsidienne, les ombres s'entrelacent\n",
                itIT = "\n{tan}-Testamento 2:4\n{gray}Cuori divorati, desiderio liberato\nNella fossa della passione, dove i demoni banchettano\nGli oscuri segreti della lussuria, un segno proibito\nAbbraccio di ossidiana, ombre si intrecciano\n",
                jaJP = "\n{tan}-遺言 2:4\n{gray} 心は蝕まれ、欲望は解放される\n悪魔が饗宴する情熱の穴で\n欲望の暗い秘密、禁断のしるし\n黒曜石の抱擁、絡み合う影\n",
                koKR = "\n{tan}-유언 2:4\n{gray}삼켜진 마음, 해방된 욕망\n악마들이 잔치를 벌이는 열정의 구덩이에서\n정욕의 어두운 비밀, 금지된 표식\n흑요석 포옹, 그림자가 휘감음\n",
                plPL = "\n{tan} – Testament 2:4\n{gray}Pożarte serca, uwolnione pragnienia\nW otchłani namiętności, gdzie demony ucztują\nMroczne sekrety pożądania, zakazany znak\nObsydianowy uścisk, splatające się cienie\n",
                ptBR = "\n{tan}-Testamento 2:4\n{gray}Corações devorados, desejo liberado\nNo poço da paixão, onde os demônios festejam\nOs segredos obscuros da luxúria, um sinal proibido\nAbraço de obsidiana, sombras entrelaçadas\n",
                ruRU = "\n{tan}-Завет 2:4\n{gray}Сердца пожираются, желание высвобождается\nВ яме страсти, где демоны пируют\nТемные тайны похоти, запретный знак\nОбсидиановые объятия, сплетаются тени\n",
                zhCN = "\n{tan}-遗嘱 2:4\n{gray}心被吞噬，欲望被释放\n在激情的深渊，恶魔盛宴\n欲望的黑暗秘密，禁忌的标志\n黑曜石拥抱，阴影缠绕\n",
                zhTW = "\n{tan}-遺囑 2:4\n{gray}心被吞噬，慾望被釋放\n在激情的深淵，惡魔盛宴\n慾望的黑暗秘密，禁忌的標誌\n黑曜石擁抱，陰影纏繞\n",
            }
        },
        { --Testament 2:5 Description
            code = "a21",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:5\n{gray}Verstrickt in die Sünde der Lust\nKörper sehnen sich nach einem bösen Stoß\nLustige Blicke, gestohlene Bindungen\nBlutige Lippen und honigsüße Lügen\n",
                enUS = "\n{tan}-Testament 2:5\n{gray}Entangled in the Sin of Lust\nBodies yearn, a wicked thrust\nLustful gazes, stolen ties\nBloody lips and honeyed lies\n",
                esES = "\n{tan}-Testamento 2:5\n{gray}Enredados en el pecado de la lujuria\nCuerpos anhelan, una embestida perversa\nMiradas lujuriosas, lazos robados\nLabios ensangrentados y mentiras melosas\n",
                esMX = "\n{tan}-Testamento 2:5\n{gray}Enredados en el pecado de la lujuria\nCuerpos anhelan, una embestida perversa\nMiradas lujuriosas, lazos robados\nLabios ensangrentados y mentiras melosas\n",
                frFR = "\n{tan}-Testament 2:5\n{gray}Empêtré dans le péché de la luxure\nLes corps aspirent, une méchante poussée\nRegards lubriques, cravates volées\nLèvres sanglantes et mensonges mielleux\n",
                itIT = "\n{tan}-Testamento 2:5\n{gray} Intrappolato nel peccato della lussuria\nCorpi anelati, una spinta malvagia\nSguardi lussuriosi, legami rubati\nLabbra insanguinate e menzogne ​​mielate\n",
                jaJP = "\n{tan}-遺言 2:5\n{gray} 色欲の罪に絡まれ\n身体は焦がれ、邪悪な突き上げ\n貪欲な視線、盗まれた絆\n血まみれの唇と甘美な嘘\n",
                koKR = "\n{tan}-구약 2:5\n{gray}욕망의 죄에 얽매임\n육체는 갈망하고, 사악한 추력\n욕정적인 시선, 도난당한 인연\n피묻은 입술과 달콤한 거짓말\n",
                plPL = "\n{tan} – Testament 2:5\n{gray}Uwikłani w grzech pożądania\nCiała tęsknią, niegodziwe pchnięcie\nPożądliwe spojrzenia, skradzione krawaty\nKrwawe usta i miodowe kłamstwa\n",
                ptBR = "\n{tan}-Testamento 2:5\n{gray}Enredados no pecado da luxúria\nCorpos anseiam, um impulso perverso\nOlhares lascivos, laços roubados\nLábios sangrentos e mentiras doces\n",
                ruRU = "\n{tan}-Завет 2:5\n{gray}Запутались в грехе похоти\nТела томятся, злой удар\nПохотливые взгляды, украденные узы\nКровавые губы и сладкая ложь\n",
                zhCN = "\n{tan}-遗嘱 2:5\n{gray} 卷入情欲之罪\n身体渴望，邪恶的推力\n情欲的目光，偷来的领带\n血淋淋的嘴唇和甜蜜的谎言\n",
                zhTW = "\n{tan}-遺囑 2:5\n{gray} 捲入情慾之罪\n身體渴望，邪惡的推力\n情慾的目光，偷來的領帶\n血淋淋的嘴唇和甜蜜的謊言\n",
            }
        },
        { --Testament 2:6 Description
            code = "a22",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:6\n{gray}Nichts als dunkle Schatten zurücklassen\nAber sei vorsichtig, denn das Vergnügen verblasst\nHerzen in einer Liebesaffäre verschlungen\nIm Labyrinth der Schlinge der Leidenschaft\n",
                enUS = "\n{tan}-Testament 2:6\n{gray}Leaving naught but darkened shades\nBut beware, for pleasure fades\nHearts entwined in a love affair\nIn the labyrinth of passion's snare\n",
                esES = "\n{tan}-Testamento 2:6\n{gray}No dejando nada más que sombras oscurecidas\nPero cuidado, porque el placer se desvanece\nCorazones entrelazados en una historia de amor\nEn el laberinto de la trampa de la pasión\n",
                esMX = "\n{tan}-Testamento 2:6\n{gray}No dejando nada más que sombras oscurecidas\nPero cuidado, porque el placer se desvanece\nCorazones entrelazados en una historia de amor\nEn el laberinto de la trampa de la pasión\n",
                frFR = "\n{tan}-Testament 2:6\n{gray}Ne laissant que des ombres sombres\nMais attention, car le plaisir s'efface\nCœurs enlacés dans une histoire d'amour\nDans le labyrinthe du piège de la passion\n",
                itIT = "\n{tan}-Testamento 2:6\n{gray}Non lasciando altro che ombre oscurate\nMa attenzione, perché il piacere svanisce\nCuori intrecciati in una storia d'amore\nNel labirinto della trappola della passione\n",
                jaJP = "\n{tan}-遺言 2:6\n{gray}何も残さず暗い影\nしかし気をつけて、快楽は消え去る\n心は情事に絡み合う\n情熱の罠の迷宮で\n",
                koKR = "\n{tan}-구약 2:6\n{gray}아무것도 남기지 않고 어두운 그늘만 남겨두십시오\n그러나 조심하십시오. 즐거움은 사라지기 때문입니다\n사랑에 얽힌 마음\n정욕의 올가미의 미로\n",
                plPL = "\n{tan} – Testament 2:6\n{gray}Pozostawiając jedynie ciemne cienie\nAle uważaj, bo przyjemność gaśnie\nSerca splecione w romansie\nW labiryncie sideł namiętności\n",
                ptBR = "\n{tan}-Testamento 2:6\n{gray}Deixando nada além de sombras escuras\nMas cuidado, pois o prazer desaparece\nCorações entrelaçados em um caso de amor\nNo labirinto da armadilha da paixão\n",
                ruRU = "\n{tan}-Завет 2:6\n{gray}Не оставляя ничего, кроме затемнённых теней\nНо будьте осторожны, ибо удовольствие угасает\nСердца, сплетённые в любовном романе\nВ лабиринте ловушки страсти\n",
                zhCN = "\n{tan}-遗嘱 2:6\n{gray}只留下黑暗的阴影\n但要小心，因为快乐会消失\n心在爱情中纠缠\n在激情的网罗迷宫\n",
                zhTW = "\n{tan}-遺囑 2:6\n{gray}只留下黑暗的陰影\n但要小心，因為快樂會消失\n心在愛情中糾纏\n在激情的網羅迷宮\n",
            }
        },
        { --Testament 2:7 Description
            code = "a23",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 2:7\n{gray}Wo die Heiligkeit verblasst und die Dunkelheit beginnt\nDer Tanz der Lust beginnt, eine verlockende Kunst\nDas Zischen einer Schlange, eine verlassene Liebe\nIn tiefen Schatten erwacht das Verlangen tatsächlich\n",
                enUS = "\n{tan}-Testament 2:7\n{gray}Where sanctity fades, and darkness starts\nLust's dance begins, a tempting art\nA serpent's hiss, a love forsake\nIn shadows deep, desire does wake\n",
                esES = "\n{tan}-Testamento 2:7\n{gray}Donde la santidad se desvanece y comienza la oscuridad\nLa danza de la lujuria comienza, un arte tentador\nEl silbido de una serpiente, un amor abandonado\nEn las sombras profundas, el deseo despierta\n",
                esMX = "\n{tan}-Testamento 2:7\n{gray}Donde la santidad se desvanece y comienza la oscuridad\nLa danza de la lujuria comienza, un arte tentador\nEl silbido de una serpiente, un amor abandonado\nEn las sombras profundas, el deseo despierta\n",
                frFR = "\n{tan}-Testament 2:7\n{gray}Là où la sainteté s'efface et où les ténèbres commencent\nLa danse de la luxure commence, un art tentant\nLe sifflement d'un serpent, un abandon d'amour\nDans les ombres profondes, le désir se réveille\n",
                itIT = "\n{tan}-Testamento 2:7\n{gray}Dove la santità svanisce e inizia l'oscurità\nInizia la danza della lussuria, un'arte tentatrice\nIl sibilo di un serpente, un abbandono d'amore\nNelle ombre profonde, il desiderio si risveglia\n",
                jaJP = "\n{tan}-遺言 2:7\n{gray} 神聖さが消え去り、闇が始まる場所\n欲望のダンスが始まる、魅惑的な芸術\n蛇のシュー音、放棄された愛\n深い影の中で、欲望は目覚める\n",
                koKR = "\n{tan}-유언 2:7\n{gray}신성이 사라지고 어둠이 시작되는 곳\n정욕의 춤, 유혹적인 예술이 시작되는 곳\n뱀의 쉭쉭, 버림받은 사랑\n깊은 그림자 속에서 욕망이 깨어납니다\n",
                plPL = "\n{tan}-Testament 2:7\n{gray}Gdzie zanika świętość i zaczyna się ciemność\nRozpoczyna się taniec pożądania, kusząca sztuka\nSyk węża, porzucenie miłości\nW głębokich cieniach budzi się pożądanie\n",
                ptBR = "\n{tan}-Testamento 2:7\n{gray}Onde a santidade desaparece e a escuridão começa\nA dança da luxúria começa, uma arte tentadora\nO silvo da serpente, um amor abandonado\nNas sombras profundas, o desejo desperta\n",
                ruRU = "\n{tan}-Завет 2:7\n{gray}Там, где угасает святость и начинается тьма\nНачинается танец похоти, искусство искушения\nЗмеиное шипение, любовь покидает\nВ глубоких тенях просыпается желание\n",
                zhCN = "\n{tan}-遗嘱 2:7\n{gray}神圣褪色，黑暗开始\n情欲之舞开始，诱人的艺术\n蛇的嘶嘶声，爱的遗弃\n在深深的阴影中，欲望确实苏醒\n",
                zhTW = "\n{tan}-遺囑 2:7\n{gray}神聖褪色，黑暗開始\n情慾之舞開始，誘人的藝術\n蛇的嘶嘶聲，愛的遺棄\n在深深的陰影中，慾望確實甦醒\n",
            }
        },
        { --Testament 3:1 Description
            code = "a24",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:1\n{gray}Ein lüsterner Hunger, eine alte Geschichte\nGold und Silber, unerzählte Schätze\nDas giftige Flüstern der Gier zerreißt\nIn tiefen Schatten ein gieriges Herz\n",
                enUS = "\n{tan}-Testament 3:1\n{gray}A lustful hunger, a story of old\nGold and silver, treasures untold\nGreed's venomous whisper tears apart\nIn shadows deep, a covetous heart\n",
                esES = "\n{tan}-Testamento 3:1\n{gray}Un hambre lujuriosa, una historia antigua\nOro y plata, tesoros incalculables\nEl susurro venenoso de la avaricia desgarra\nEn las sombras profundas, un corazón codicioso\n",
                esMX = "\n{tan}-Testamento 3:1\n{gray}Un hambre lujuriosa, una historia antigua\nOro y plata, tesoros incalculables\nEl susurro venenoso de la avaricia desgarra\nEn las sombras profundas, un corazón codicioso\n",
                frFR = "\n{tan}-Testament 3:1\n{gray}Une faim lubrique, une histoire ancienne\nL'or et l'argent, des trésors incalculables\nLe murmure venimeux de l'avidité déchire\nDans les ombres profondes, un cœur cupide\n",
                itIT = "\n{tan}-Testamento 3:1\n{gray}Una fame lussuriosa, una storia antica\nOro e argento, tesori indicibili\nIl sussurro velenoso dell'avidità fa a pezzi\nNelle ombre profonde, un cuore avido\n",
                jaJP = "\n{tan}-遺言 3:1\n{gray}貪欲な飢え、昔の物語\n金銀、語られない財宝\n貪欲の毒々しいささやきが引き裂く\n深い影の中で、貪欲な心\n",
                koKR = "\n{tan}-유언 3:1\n{gray}탐욕스러운 굶주림, 옛 이야기\n금은, 말할 수 없는 보물\n탐욕의 독한 속삭임이 찢어집니다\n깊은 그림자 속에서, 탐욕스러운 마음\n",
                plPL = "\n{tan}-Testament 3:1\n{gray}Pożądliwy głód, stara historia\nZłoto i srebro, niewypowiedziane skarby\nJadowity szept chciwości rozrywa\nW głębokich cieniach chciwe serce\n",
                ptBR = "\n{tan}-Testamento 3:1\n{gray}Uma fome lasciva, uma história de ouro e prata antigos, tesouros incalculáveis\nO sussurro venenoso da ganância dilacera\nNas sombras profundas, um coração cobiçoso\n",
                ruRU = "\n{tan}-Завет 3:1\n{gray}Похотливый голод, история старины\nЗолото и серебро, несметные сокровища\nЯдовитый шепот Жадности разрывает на части\nВ глубоких тенях алчное сердце\n",
                zhCN = "\n{tan}-遗嘱 3:1\n{gray} 贪婪的饥饿，古老的故事\n金银，数不尽的宝藏\n贪婪的恶毒低语撕裂\n在深深的阴影中，一颗贪婪的心\n",
                zhTW = "\n{tan}-遺囑 3:1\n{gray} 貪婪的飢餓，古老的故事\n金銀，數不盡的寶藏\n貪婪的惡毒低語撕裂\n在深深的陰影中，一顆貪婪的心\n",
            }
        },
        { --Testament 3:2 Description
            code = "a25",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:2\n{gray}Aber die Seele im Inneren verdorrt und seufzt\nGehäuftes Vermögen, ein so hoher Turm\nDie Flamme der Gier brennt und verzehrt die Nacht\nMit böser Freude Münzen zählen\n",
                enUS = "\n{tan}-Testament 3:2\n{gray}But the soul within, withers and sighs\nFortunes amassed, a tower so high\nGreed's flame burns, consuming the night\nCounting coins with wicked delight\n",
                esES = "\n{tan}-Testamento 3:2\n{gray}Pero el alma dentro, se marchita y suspira\nLas fortunas se acumulan, una torre tan alta\nLa llama de la codicia arde, consumiendo la noche\nContando monedas con malvado deleite\n",
                esMX = "\n{tan}-Testamento 3:2\n{gray}Pero el alma dentro, se marchita y suspira\nLas fortunas se acumulan, una torre tan alta\nLa llama de la codicia arde, consumiendo la noche\nContando monedas con malvado deleite\n",
                frFR = "\n{tan}-Testament 3:2\n{gray}Mais l'âme intérieure se flétrit et soupire\nFortunes amassées, une tour si haute\nLa flamme de l'avidité brûle, dévorant la nuit\nCompter les pièces avec un plaisir méchant\n",
                itIT = "\n{tan}-Testamento 3:2\n{gray}Ma l'anima interiore appassisce e sospira\nLe fortune si accumulano, una torre così alta\nLa fiamma dell'avidità arde, consumando la notte\nContare le monete con malvagio piacere\n",
                jaJP = "\n{tan}-遺言 3:2\n{gray}しかし、内なる魂は枯れてため息をつく\n富が集まり、とても高い塔が\n強欲の炎が燃え上がり、夜を焼き尽くします\n邪悪な喜びでコインを数えます\n",
                koKR = "\n{tan}-구약 3:2\n{gray}그러나 내면의 영혼은 시들고 한숨을 쉬었습니다\n행운은 쌓이고 탑은 너무나 높습니다\n탐욕의 불꽃이 타올라 밤을 불태우고\n사악한 기쁨으로 동전을 세며\n",
                plPL = "\n{tan} – Testament 3:2\n{gray}Ale dusza wewnątrz więdnie i wzdycha\nZgromadzone fortuny, wieża tak wysoka\nPłomień chciwości płonie, pochłaniając noc\nLiczenie monet z niegodziwą rozkoszą\n",
                ptBR = "\n{tan}-Testamento 3:2\n{gray}Mas a alma interior murcha e suspira\nFortunas acumuladas, uma torre tão alta\nA chama da ganância queima, consumindo a noite\nContando moedas com prazer perverso\n",
                ruRU = "\n{tan}-Завет 3:2\n{gray}Но душа внутри чахнет и вздыхает\nСостояния накоплены, башня так высока\nПламя жадности горит, поглощая ночь\nСчитая монеты со злым восторгом\n",
                zhCN = "\n{tan}-遗嘱 3:2\n{gray} 但内在的灵魂，枯萎和叹息\n财富积聚，一座如此高的塔\n贪婪的火焰燃烧，吞噬黑夜\n带着邪恶的喜悦数着硬币\n",
                zhTW = "\n{tan}-遺囑 3:2\n{gray} 但內在的靈魂，枯萎和嘆息\n財富積聚，一座如此高的塔\n貪婪的火焰燃燒，吞噬黑夜\n帶著邪惡的喜悅數著硬幣\n",
            }
        },
        { --Testament 3:3 Description
            code = "a26",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:3\n{gray}Reichtum angehäuft mit teuflischem Blick\nEin Herz aus Stein, keine Gnade zu ersparen\nDas Netz der Gier verstrickt, Ehrgeiz siegt\nSilberzungen weben betrügerische Geschichten\n",
                enUS = "\n{tan}-Testament 3:3\n{gray}Wealth amassed with a devilish glare\nA heart of stone, no mercy to spare\nGreed's web ensnares, ambition prevails\nSilver tongues weave deceitful tales\n",
                esES = "\n{tan}-Testamento 3:3\n{gray}La riqueza acumulada con un resplandor diabólico\nUn corazón de piedra, sin piedad para perdonar\nLa red de la codicia atrapa, la ambición prevalece\nLas lenguas plateadas tejen cuentos engañosos\n",
                esMX = "\n{tan}-Testamento 3:3\n{gray}La riqueza acumulada con un resplandor diabólico\nUn corazón de piedra, sin piedad para perdonar\nLa red de la codicia atrapa, la ambición prevalece\nLas lenguas plateadas tejen cuentos engañosos\n",
                frFR = "\n{tan}-Testament 3:3\n{gray}La richesse amassée avec un éclat diabolique\nUn cœur de pierre, aucune pitié à épargner\nLa toile de l'avidité prend au piège, l'ambition prévaut\nLes langues d'argent tissent des histoires trompeuses\n",
                itIT = "\n{tan}-Testamento 3:3\n{gray}Ricchezze accumulate con uno sguardo diabolico\nUn cuore di pietra, nessuna pietà da risparmiare\nLa rete dell'avidità intrappola, l'ambizione prevale\nLingue d'argento tessono storie ingannevoli\n",
                jaJP = "\n{tan}-遺言 3:3\n{gray} 悪魔のような輝きで蓄えられた富\n石の心、容赦なし\n強欲の巣が罠にはまり、野心が蔓延る\n銀の舌が欺瞞の物語を紡ぐ\n",
                koKR = "\n{tan}-구약 3:3\n{gray}사악한 눈빛으로 축적된 부\n돌과 같은 마음, 용서할 수 없는 마음\n탐욕의 거미줄 올가미, 야망이 승리합니다\n은빛 혀가 기만적인 이야기를 엮습니다\n",
                plPL = "\n{tan} – Testament 3:3\n{gray}Bogactwo zgromadzone w diabelskim blasku\nSerce z kamienia, bez litości do szczędzenia\nSieć chciwości usidla, ambicja zwycięża\nSrebrne języki tkają zwodnicze opowieści\n",
                ptBR = "\n{tan}-Testamento 3:3\n{gray}Riqueza acumulada com um brilho diabólico\nUm coração de pedra, sem piedade de sobra\nA teia da ganância enlaça, a ambição prevalece\nLínguas prateadas tecem histórias enganosas\n",
                ruRU = "\n{tan}-Завет 3:3\n{gray}Богатство, накопленное дьявольским сиянием\nКаменное сердце, никакой пощады\nПаутина жадности опутывает, амбиции преобладают\nСеребряные языки плетут лживые истории\n",
                zhCN = "\n{tan}-遗嘱 3:3\n{gray}财富以邪恶的目光聚集\n铁石心肠，毫不留情\n贪婪的网罗网，野心占上风\n银舌编织欺骗性的故事\n",
                zhTW = "\n{tan}-遺囑 3:3\n{gray}財富以邪惡的目光聚集\n鐵石心腸，毫不留情\n貪婪的網羅網，野心佔上風\n銀舌編織欺騙性的故事\n",
            }
        },
        { --Testament 3:4 Description
            code = "a27",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:4\n{gray}Verwandelt alles in Reichtum, lässt aber die Herzen kalt\nDie Midas-Berührung, ein unsäglicher Fluch\nDer Hunger der Gier, unersättlich und gemein\nAugen der Gier, kalt und scharf\n",
                enUS = "\n{tan}-Testament 3:4\n{gray}Turns all to riches, but leaves hearts cold\nThe Midas touch, a curse untold\nGreed's hunger, insatiable and mean\nEyes of avarice, cold and keen\n",
                esES = "\n{tan}-Testamento 3:4\n{gray}Todo lo convierte en riqueza, pero deja los corazones fríos\nEl toque de Midas, una maldición incalculable\nEl hambre de la avaricia, insaciable y mezquina\nOjos de avaricia, fríos y agudos\n",
                esMX = "\n{tan}-Testamento 3:4\n{gray}Todo lo convierte en riqueza, pero deja los corazones fríos\nEl toque de Midas, una maldición incalculable\nEl hambre de la avaricia, insaciable y mezquina\nOjos de avaricia, fríos y agudos\n",
                frFR = "\n{tan}-Testament 3:4\n{gray}Transforme tout en richesse, mais laisse les cœurs froids\nLe contact de Midas, une malédiction indescriptible\nLa faim de l'avidité, insatiable et mesquine\nLes yeux de l'avarice, froids et vifs\n",
                itIT = "\n{tan}-Testamento 3:4\n{gray}Trasforma tutto in ricchezza, ma lascia i cuori freddi\nIl tocco di Mida, una maledizione indicibile\nLa fame dell'avidità, insaziabile e meschina\nOcchi di avarizia, freddi e acuti\n",
                jaJP = "\n{tan}-遺言 3:4\n{gray} すべてを富に変えるが、心は冷たくなる\nミダスの触れ合い、計り知れない呪い\n貪欲の飢え、飽くなき意地悪\n貪欲の目、冷たく鋭い\n",
                koKR = "\n{tan}-구약 3:4\n{gray}모든 것을 부로 바꾸지만 마음은 차갑습니다\n미다스의 손길, 말할 수 없는 저주\n탐욕의 굶주림, 만족할 줄 모르고 비열함\n탐욕의 눈, 차갑고 예리함\n",
                plPL = "\n{tan}-Testament 3:4\n{gray}Zamienia wszystko w bogactwa, ale pozostawia zimne serca\nDotyk Midasa, niewypowiedziane przekleństwo\nGłód chciwości, nienasycony i podły\nOczy chciwości, zimne i bystre\n",
                ptBR = "\n{tan}-Testamento 3:4\n{gray}Transforma tudo em riquezas, mas deixa os corações frios\nO toque de Midas, uma maldição incalculável\nA fome da ganância, insaciável e mesquinha\nOlhos de avareza, frios e aguçados\n",
                ruRU = "\n{tan}-Завет 3:4\n{gray}Все обращает в богатство, но оставляет сердца холодными\nПрикосновение Мидаса, невыразимое проклятие\nГолод жадности, ненасытный и подлый\nГлаза алчности, холодные и острые\n",
                zhCN = "\n{tan}-《遗嘱》3:4\n{gray}将一切变成财富，但心却冰冷\n点石成金，无尽的诅咒\n贪婪的饥饿，不知足又卑鄙\n贪婪的眼睛，冷酷而敏锐\n",
                zhTW = "\n{tan}-《遺囑》3:4\n{gray}將一切變成財富，但心卻冰冷\n點石成金，無盡的詛咒\n貪婪的飢餓，不知足又卑鄙\n貪婪的眼睛，冷酷而敏銳\n",
            }
        },
        { --Testament 3:5 Description
            code = "a28",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:5\n{gray}Während die Moral ins Wanken gerät und vom Schicksal verzehrt wird\nAber das Fundament zerbröckelt unter der Last\nDer Tempel der Gier erhebt sich, ein Denkmal, um\nGoldene Götzen, die mit Freude angebetet werden\n",
                enUS = "\n{tan}-Testament 3:5\n{gray}As morality falters, consumed by fate\nBut the foundation crumbles beneath the weight\nGreed's temple rises, a monument to be\nGolden idols, worshipped with glee\n",
                esES = "\n{tan}-Testamento 3:5\n{gray}Mientras la moral flaquea, consumida por el destino\nPero los cimientos se desmoronan bajo el peso\nEl templo de la avaricia se levanta, un monumento para ser\nÍdolos de oro, adorados con alegría\n",
                esMX = "\n{tan}-Testamento 3:5\n{gray}Mientras la moral flaquea, consumida por el destino\nPero los cimientos se desmoronan bajo el peso\nEl templo de la avaricia se levanta, un monumento para ser\nÍdolos de oro, adorados con alegría\n",
                frFR = "\n{tan}-Testament 3:5\n{gray}Alors que la moralité vacille, consumée par le destin\nMais les fondations s'effondrent sous le poids\nLe temple de l'avidité s'élève, un monument destiné à être\nDes idoles dorées, adorées avec joie\n",
                itIT = "\n{tan}-Testamento 3:5\n{gray}Mentre la moralità vacilla, consumata dal destino\nMa le fondamenta crollano sotto il peso\nSi erge il tempio dell'avidità, un monumento da diventare\nIdoli d'oro, adorati con gioia\n",
                jaJP = "\n{tan}-遺言 3:5\n{gray}運命に蝕まれ道徳が揺らぐ中\nしかしその基礎は重みで崩れる\n強欲の神殿がそびえ立ち、記念碑\n黄金の偶像が歓喜の声を上げて崇拝される\n",
                koKR = "\n{tan}-구약 3:5\n{gray}도덕성이 흔들리고 운명에 의해 소멸됨에 따라\n그러나 기초는 무게 아래로 무너집니다.\n탐욕의 사원이 솟아오르고\n황금 우상의 기념비가 솟아올라 기쁨으로 숭배됩니다\n",
                plPL = "\n{tan} – Testament 3:5\n{gray}Gdy moralność słabnie, pochłonięta przez los\nAle fundamenty kruszą się pod ciężarem\nWznosi się świątynia chciwości, pomnik\nZłote bożki, czczone z radością\n",
                ptBR = "\n{tan}-Testamento 3:5\n{gray}Enquanto a moralidade vacila, consumida pelo destino\nMas a fundação desmorona sob o peso\nO templo da ganância se ergue, um monumento para ser\nÍdolos de ouro, adorados com alegria\n",
                ruRU = "\n{tan}-Завет 3:5\n{gray}Когда нравственность колеблется, поглощенная судьбой\nНо фундамент рушится под тяжестью\nХрам Жадности поднимается, памятник, который будет\nЗолотыми идолами, которым поклоняются с ликованием\n",
                zhCN = "\n{tan}-遗嘱 3:5\n{gray}当道德动摇，被命运吞噬\n但基础在重压下崩溃\n贪婪的神庙升起，一座纪念碑\n金色偶像，受到欢乐的崇拜\n",
                zhTW = "\n{tan}-遺囑 3:5\n{gray}當道德動搖，被命運吞噬\n但基礎在重壓下崩潰\n貪婪的神廟升起，一座紀念碑\n金色偶像，受到歡樂的崇拜\n",
            }
        },
        { --Testament 3:6 Description
            code = "a29",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:6\n{gray}Eine warnende Geschichte über die Sünde der Gier\nIm Hauptbuch der Sünde bluten die Seiten\nDie Geschichte der Gier, eine Geschichte, die oft nacherzählt wird\nPennys zählen, Gold stapeln\n",
                enUS = "\n{tan}-Testament 3:6\n{gray}A cautionary tale of the Sin of Greed\nIn the ledger of sin, the pages bleed\nGreed's tale, a story oft retold\nCounting pennies, stacking gold\n",
                esES = "\n{tan}-Testamento 3:6\n{gray}Una historia con moraleja sobre el pecado de la avaricia\nEn el libro de contabilidad del pecado, las páginas sangran\nLa historia de la avaricia, una historia contada a menudo\nContando centavos, apilando oro\n",
                esMX = "\n{tan}-Testamento 3:6\n{gray}Una historia con moraleja sobre el pecado de la avaricia\nEn el libro de contabilidad del pecado, las páginas sangran\nLa historia de la avaricia, una historia contada a menudo\nContando centavos, apilando oro\n",
                frFR = "\n{tan}-Testament 3:6\n{gray}Un récit édifiant sur le péché de l'avidité\nDans le registre des péchés, les pages saignent\nL'histoire de l'avidité, une histoire souvent racontée\nCompter les sous, empiler l'or\n",
                itIT = "\n{tan}-Testamento 3:6\n{gray}Un racconto ammonitore del peccato dell'avidità\nNel libro mastro del peccato, le pagine sanguinano\nIl racconto dell'avidità, una storia spesso raccontata\nContare i centesimi, accumulare oro\n",
                jaJP = "\n{tan}-遺言 3:6\n{gray} 強欲の罪に関する警告の物語\n罪の台帳では、ページから血が流れます\n強欲の物語、よく語られる物語\nペニーを数え、金を積み上げる\n",
                koKR = "\n{tan}-구약 3:6\n{gray}탐욕의 죄에 대한 경고 이야기\n죄의 장부에서 페이지는 피를 흘립니다.\n자주 반복되는 이야기인 탐욕의 이야기\n동전 세고 금을 쌓습니다\n",
                plPL = "\n{tan} – Testament 3:6\n{gray}Przestroga o grzechu chciwości\nW księdze grzechów strony krwawią\nOpowieść o chciwości, historia często opowiadana\nLiczenie groszy, układanie złota\n",
                ptBR = "\n{tan}-Testamento 3:6\n{gray}Uma história de advertência sobre o pecado da ganância\nNo livro-razão do pecado, as páginas sangram\nA história da ganância, uma história muitas vezes recontada\nContando moedas, empilhando ouro\n",
                ruRU = "\n{tan}-Завет 3:6\n{gray}Поучительная история о грехе жадности\nВ книге грехов страницы кровоточат\nИстория жадности, история, которую часто пересказывают\nСчитая монеты, складывая золото\n",
                zhCN = "\n{tan}-《遗嘱》3:6\n{gray}贪婪之罪的警世故事\n在罪恶的账簿中，书页流血\n贪婪的故事，一个经常被重述的故事\n数着便士，堆积着黄金\n",
                zhTW = "\n{tan}-《遺囑》3:6\n{gray}貪婪之罪的警世故事\n在罪惡的賬簿中，書頁流血\n貪婪的故事，一個經常被重述的故事\n數著便士，堆積著黃金\n",
            }
        },
        { --Testament 3:7 Description
            code = "a30",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 3:7\n{gray}Hüte dich vor der Verlockung, die dich mit sich zieht\nEdelsteine ​​und Einzigartiges, der Gesang der Sirene\nDas Gift der Gier verbreitet seine bösen Samen\nIn tiefen Schatten, wo Dunkelheit brütet\n",
                enUS = "\n{tan}-Testament 3:7\n{gray}Beware the lure that drags you along\nGems and Uniques, the siren's song\nGreed's poison spreads its wicked seeds\nIn shadows deep, where darkness breeds\n",
                esES = "\n{tan}-Testamento 3:7\n{gray}Cuidado con el señuelo que te arrastra\nGemas y Únicos, el canto de sirena\nEl veneno de la avaricia esparce sus malvadas semillas\nEn las sombras profundas, donde se reproduce la oscuridad\n",
                esMX = "\n{tan}-Testamento 3:7\n{gray}Cuidado con el señuelo que te arrastra\nGemas y Únicos, el canto de sirena\nEl veneno de la avaricia esparce sus malvadas semillas\nEn las sombras profundas, donde se reproduce la oscuridad\n",
                frFR = "\n{tan}-Testament 3:7\n{gray}Méfiez-vous de l'attrait qui vous entraîne\nPierres précieuses et objets uniques, le chant des sirènes\nLe poison de l'avidité répand ses mauvaises graines\nDans les ombres profondes, là où l'obscurité se reproduit\n",
                itIT = "\n{tan}-Testamento 3:7\n{gray}Attento all'esca che ti trascina\nGemme e pezzi unici, il canto della sirena\nIl veleno dell'avidità sparge i suoi semi malvagi\nNelle ombre profonde, dove l'oscurità genera\n",
                jaJP = "\n{tan}-遺言 3:7\n{gray} あなたを引きずり込む誘惑に気をつけてください\n宝石とユニーク、セイレーンの歌\n強欲の毒が邪悪な種をまき散らします\n闇が生む深い影の中で\n",
                koKR = "\n{tan}-유언 3:7\n{gray}당신을 끌어당기는 유혹을 조심하십시오\n보석과 고유물, 사이렌의 노래\n탐욕의 독은 사악한 씨앗을 퍼뜨립니다\n어둠이 번식하는 깊은 그림자 속에\n",
                plPL = "\n{tan} – Testament 3:7\n{gray}Uważaj na przynętę, która cię ciągnie\nKlejnoty i unikaty, pieśń syreny\nTrucizna chciwości rozprzestrzenia swoje niegodziwe nasiona\nW głębokich cieniach, gdzie rodzi się ciemność\n",
                ptBR = "\n{tan}-Testamento 3:7\n{gray}Cuidado com a atração que o arrasta\nPedras preciosas e únicas, o canto da sereia\nO veneno da ganância espalha suas sementes perversas\nNas sombras profundas, onde a escuridão se reproduz\n",
                ruRU = "\n{tan}-Завет 3:7\n{gray}Остерегайтесь соблазна, который тащит вас за собой\nДрагоценные камни и уникальные вещи, песня сирены\nЯд жадности распространяет свои злые семена\nВ глубоких тенях, где размножается тьма\n",
                zhCN = "\n{tan}-遗嘱 3:7\n{gray}当心拖着你前行的诱惑\n宝石和独特物品，海妖的歌​​\n贪婪的毒药传播其邪恶的种子\n在黑暗滋生的深处阴影\n",
                zhTW = "\n{tan}-遺囑3:7\n{gray}當心拖著你前行的誘惑\n寶石和獨特物品，海妖的歌​​\n貪婪的毒藥傳播其邪惡的種子\n在黑暗滋生的深處陰影\n",
            }
        },
        { --Testament 4:1 Description
            code = "a31",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:1\n{gray}Hinterlässt nichts als Verderben an seiner Stelle\nEin Sturm der Wut, schwarz und rot\nDer grausame Tanz des Zorns der dunklen Bühne des Lebens\nBrennende Glut, brodelnde Wut\n",
                enUS = "\n{tan}-Testament 4:1\n{gray}Leaves naught but ruin in its stead\nA storm of fury, black and red\nWrath's cruel dance on life's dark stage\nBurning ember, seething rage\n",
                esES = "\n{tan}-Testamento 4:1\n{gray}No deja nada más que ruina en su lugar\nUna tormenta de furia, negra y roja\nLa danza cruel de la ira en el escenario oscuro de la vida\nBrasas ardientes, rabia hirviente\n",
                esMX = "\n{tan}-Testamento 4:1\n{gray}No deja nada más que ruina en su lugar\nUna tormenta de furia, negra y roja\nLa danza cruel de la ira en el escenario oscuro de la vida\nBrasas ardientes, rabia hirviente\n",
                frFR = "\n{tan}-Testament 4:1\n{gray}Ne laisse rien d'autre que la ruine à sa place\nUne tempête de fureur, noire et rouge\nLa danse cruelle de la colère sur la scène sombre de la vie\nBrases ardentes, rage bouillonnante\n",
                itIT = "\n{tan}-Testamento 4:1\n{gray}Al suo posto non lascia altro che rovina\nUna tempesta di furia, nera e rossa\nLa danza crudele dell'Ira sul palcoscenico oscuro della vita\nTizzone ardente, rabbia ribollente\n",
                jaJP = "\n{tan}-遺言 4:1\n{gray} 代わりに残されるのは破滅だけです\n黒と赤の怒りの嵐\n人生の暗い舞台での怒りの残酷な踊り\n燃える残り火、沸き上がる怒り\n",
                koKR = "\n{tan}-유언 4:1\n{gray}그 자리에는 아무것도 남기지 않고 파멸만 남깁니다\n검고 붉은 분노의 폭풍\n인생의 어두운 무대에서 분노의 잔인한 춤\n타오르는 불씨, 끓어오르는 분노\n",
                plPL = "\n{tan} – Testament 4:1\n{gray}Pozostawia na swoim miejscu jedynie ruinę\nBurza wściekłości, czarna i czerwona\nOkrutny taniec Gniewu na ciemnej scenie życia\nPłonący żar, kipiąca wściekłość\n",
                ptBR = "\n{tan}-Testamento 4:1\n{gray}Não deixa nada além da ruína em seu lugar\nUma tempestade de fúria, preta e vermelha\nA dança cruel da ira no palco escuro da vida\nBrasa ardente, raiva fervente\n",
                ruRU = "\n{tan}-Завет 4:1\n{gray}Не оставляет на месте ничего, кроме руин\nШторм ярости, чёрно-красный\nЖестокий танец гнева на тёмной сцене жизни\nГорящий угли, кипящая ярость\n",
                zhCN = "\n{tan}-遗嘱 4:1\n{gray}除了废墟，什么也没有留下\n愤怒的风暴，黑色和红色\n愤怒在生命的黑暗舞台上残酷的舞蹈\n燃烧的余烬，沸腾的愤怒\n",
                zhTW = "\n{tan}-遺囑 4:1\n{gray}除了廢墟，什麼也沒有留下\n憤怒的風暴，黑色和紅色\n憤怒在生命的黑暗舞台上殘酷的舞蹈\n燃燒的餘燼，沸騰的憤怒\n",
            }
        },
        { --Testament 4:2 Description
            code = "a32",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:2\n{gray}Während der Zorn sein verdrehtes Recht beansprucht\nSchreie hAlle in der stillen Nacht wider\nZorn schlägt Wurzeln, ein Garten der Missetaten\nIm Herzen, wo Dunkelheit brütet\n",
                enUS = "\n{tan}-Testament 4:2\n{gray}As anger claims its twisted right\nScreams echo in the silent night\nWrath takes root, a garden of misdeeds\nIn the heart, where darkness breeds\n",
                esES = "\n{tan}-Testamento 4:2\n{gray} Mientras la ira reclama su derecho retorcido\nLos gritos resuenan en la noche silenciosa\nLa ira echa raíces, un jardín de fechorías\nEn el corazón, donde la oscuridad engendra\n",
                esMX = "\n{tan}-Testamento 4:2\n{gray} Mientras la ira reclama su derecho retorcido\nLos gritos resuenan en la noche silenciosa\nLa ira echa raíces, un jardín de fechorías\nEn el corazón, donde la oscuridad engendra\n",
                frFR = "\n{tan}-Testament 4:2\n{gray}Alors que la colère revendique sa droite tordue\nLes cris résonnent dans la nuit silencieuse\nLa colère prend racine, un jardin de méfaits\nDans le cœur, où les ténèbres se reproduisent\n",
                itIT = "\n{tan}-Testamento 4:2\n{gray}Mentre l'ira reclama il suo diritto contorto\nUrla echeggiano nella notte silenziosa\nL'ira mette radici, un giardino di misfatti\nNel cuore, dove crescono le tenebre\n",
                jaJP = "\n{tan}-遺言 4:2\n{gray} 怒りが歪んだ正しさを主張する中\n叫び声が静かな夜に響き渡る\n怒りが根を張り、悪行の園が\n心の中に闇が繁殖する\n",
                koKR = "\n{tan}-유언 4:2\n{gray}분노가 뒤틀린 권리를 주장함에 따라\n비명 소리가 고요한 밤에 메아리칩니다\n분노가 뿌리를 내리며, 악행의 정원\n어둠이 자라는 마음 속에\n",
                plPL = "\n{tan} – Testament 4:2\n{gray}Gdy gniew domaga się swojej wypaczonej mocy\nKrzyki odbijają się echem w cichej nocy\nGniew zapuszcza korzenie, ogród złych uczynków\nW sercu, gdzie rodzi się ciemność\n",
                ptBR = "\n{tan}-Testamento 4:2\n{gray}Enquanto a raiva reivindica seu direito distorcido\nGritos ecoam na noite silenciosa\nA ira cria raízes, um jardim de más ações\nNo coração, onde a escuridão se reproduz\n",
                ruRU = "\n{tan}-Завет 4:2\n{gray}Гнев претендует на свою искривленную правую сторону\nКрики отдаются эхом в безмолвной ночи\nГнев пускает корни, сад злодеяний\nВ сердце, где плодится тьма\n",
                zhCN = "\n{tan}-遗嘱 4:2\n{gray}当愤怒声称其扭曲的权利\n尖叫声在寂静的夜晚回响\n愤怒扎根，一座罪恶的花园\n在黑暗滋生的心中\n",
                zhTW = "\n{tan}-遺囑 4:2\n{gray}當憤怒聲稱其扭曲的權利\n尖叫聲在寂靜的夜晚迴響\n憤怒紮根，一座罪惡的花園\n在黑暗滋生的心中\n",
            }
        },
        { --Testament 4:3 Description
            code = "a33",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:3\n{gray}Hinterlässt Narben, die die Nacht verfolgen\nEin Schwert aus der Scheide, ein erbitterter Kampf\nDas Gift des Zorns breitet sich aus, ein tödliches Leid\nBlutrote Ströme, der Zorn strömt\n",
                enUS = "\n{tan}-Testament 4:3\n{gray}Leaving scars that haunt the night\nA sword unsheathed, a bitter fight\nWrath's venom spreads, a deadly woe\nBlood-red rivers, anger's flow\n",
                esES = "\n{tan}-Testamento 4:3\n{gray} Dejando cicatrices que acechan la noche\nUna espada desenvainada, una lucha amarga\nEl veneno de la ira se extiende, un ay mortal\nRíos rojo sangre, el flujo de la ira\n",
                esMX = "\n{tan}-Testamento 4:3\n{gray} Dejando cicatrices que acechan la noche\nUna espada desenvainada, una lucha amarga\nEl veneno de la ira se extiende, un ay mortal\nRíos rojo sangre, el flujo de la ira\n",
                frFR = "\n{tan}-Testament 4:3\n{gray}Laissant des cicatrices qui hantent la nuit\nUne épée dégainée, un combat amer\nLe venin de la colère se répand, un malheur mortel\nDes rivières rouge sang, un flot de colère\n",
                itIT = "\n{tan}-Testamento 4:3\n{gray}Lasciando cicatrici che infestano la notte\nUna spada sguainata, una lotta aspra\nIl veleno dell'ira si diffonde, una sventura mortale\nFiumi rosso sangue, flusso di rabbia\n",
                jaJP = "\n{tan}-遺言 4:3\n{gray} 夜を悩ませる傷跡を残す\n鞘から抜かれた剣、激しい戦い\n怒りの毒が広がる、致命的な災い\n血のように赤い川、怒りの流れ\n",
                koKR = "\n{tan}-구약 4:3\n{gray}밤을 괴롭히는 상처를 남기고\n칼을 뽑은 칼, 쓰라린 싸움\n분노의 독이 퍼지고 치명적인 비애\n피처럼 붉은 강, 분노의 흐름\n",
                plPL = "\n{tan} – Testament 4:3\n{gray}Pozostawiając blizny, które nawiedzają noc\nWyciągnięty miecz, zacięta walka\nJad gniewu się rozprzestrzenia, śmiertelne nieszczęście\nKrwistoczerwone rzeki, przypływ gniewu\n",
                ptBR = "\n{tan}-Testamento 4:3\n{gray}Deixando cicatrizes que assombram a noite\nUma espada desembainhada, uma luta amarga\nO veneno da ira se espalha, uma desgraça mortal\nRios vermelho-sangue, o fluxo da raiva\n",
                ruRU = "\n{tan}-Завет 4:3\n{gray}Оставляя шрамы, которые преследуют ночь\nМеч обнаженный, жестокая битва\nРаспространяется яд гнева, смертельное горе\nКроваво-красные реки, потоки гнева\n",
                zhCN = "\n{tan}-遗嘱 4:3\n{gray}留下困扰黑夜的伤痕\n剑出鞘，一场苦战\n愤怒的毒液蔓延，致命的祸患\n血红的河流，愤怒的流动\n",
                zhTW = "\n{tan}-遺囑 4:3\n{gray}留下困擾黑夜的傷痕\n劍出鞘，一場苦戰\n憤怒的毒液蔓延，致命的禍患\n血紅的河流，憤怒的流動\n",
            }
        },
        { --Testament 4:4 Description
            code = "a34",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:4\n{gray}Echos der Rache, bitter und stark\nEine Symphonie des Liedes des Zorns\nDer grausame Griff des Zorns, eine bloßgelegte Seele\nFeurige Augen, ein brennender Blick\n",
                enUS = "\n{tan}-Testament 4:4\n{gray}Echoes of revenge, bitter and strong\nA symphony of anger's song\nWrath's cruel grip, a soul laid bare\nFiery eyes, a burning stare\n",
                esES = "\n{tan}-Testamento 4:4\n{gray}Ecos de venganza, amargos y fuertes\nUna sinfonía de canto de ira\nEl control cruel de la ira, un alma desnuda\nOjos de fuego, una mirada ardiente\n",
                esMX = "\n{tan}-Testamento 4:4\n{gray}Ecos de venganza, amargos y fuertes\nUna sinfonía de canto de ira\nEl control cruel de la ira, un alma desnuda\nOjos de fuego, una mirada ardiente\n",
                frFR = "\n{tan}-Testament 4:4\n{gray}Échos de vengeance, amers et forts\nUne symphonie de chant de colère\nL'emprise cruelle de la colère, une âme mise à nu\nDes yeux enflammés, un regard brûlant\n",
                itIT = "\n{tan}-Testamento 4:4\n{gray}Echi di vendetta, amari e forti\nUna sinfonia del canto della rabbia\nLa stretta crudele dell'ira, un'anima messa a nudo\nOcchi infuocati, uno sguardo ardente\n",
                jaJP = "\n{tan}-遺言 4:4\n{gray} 復讐の響き、苦く強い\n怒りの歌の交響曲\n怒りの残酷な支配、剥き出しの魂\n燃えるような目、燃えるような視線\n",
                koKR = "\n{tan}-유언 4:4\n{gray}복수의 메아리, 씁쓸하고 강렬한\n분노의 노래 교향곡\n분노의 잔인한 손아귀, 드러난 영혼\n불타는 눈, 불타는 듯한 시선\n",
                plPL = "\n{tan} – Testament 4:4\n{gray}Echa zemsty, gorzkie i mocne\nSymfonia pieśni gniewu\nOkrutny uścisk gniewu, obnażona dusza\nOgniste oczy, płonące spojrzenie\n",
                ptBR = "\n{tan}-Testamento 4:4\n{gray}Ecos de vingança, amargos e fortes\nUma sinfonia da canção da raiva\nO aperto cruel da ira, uma alma exposta\nOlhos ardentes, um olhar ardente\n",
                ruRU = "\n{tan}-Завет 4:4\n{gray}Отголоски мести, горькие и сильные\nСимфония песни гнева\nЖестокая хватка гнева, обнажённая душа\nОгненные глаза, горящий взгляд\n",
                zhCN = "\n{tan}-遗嘱 4:4\n{gray}复仇的回声，苦涩而强烈\n愤怒之歌的交响曲\n愤怒的残酷抓握，赤裸的灵魂\n火热的眼睛，灼热的凝视\n",
                zhTW = "\n{tan}-遺囑 4:4\n{gray}復仇的迴聲，苦澀而強烈\n憤怒之歌的交響曲\n憤怒的殘酷抓握，赤裸的靈魂\n火熱的眼睛，灼熱的凝視\n",
            }
        },
        { --Testament 4:5 Description
            code = "a35",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:5\n{gray}Eine Geschichte der Wut, in der das Böse beginnt\nEine Seele, die von inneren Flammen verzehrt wird\nZorns Spiegelbild, eine dunkle Umarmung\nIm Spiegel ein verzerrtes Gesicht\n",
                enUS = "\n{tan}-Testament 4:5\n{gray}A tale of rage, where evil begins\nA soul consumed by flames within\nWrath's reflection, a dark embrace\nIn the mirror, a twisted face\n",
                esES = "\n{tan}-Testamento 4:5\n{gray}Una historia de rabia, donde comienza el mal\nUn alma consumida por las llamas en su interior\nEl reflejo de la ira, un abrazo oscuro\nEn el espejo, un rostro retorcido\n",
                esMX = "\n{tan}-Testamento 4:5\n{gray}Una historia de rabia, donde comienza el mal\nUn alma consumida por las llamas en su interior\nEl reflejo de la ira, un abrazo oscuro\nEn el espejo, un rostro retorcido\n",
                frFR = "\n{tan}-Testament 4:5\n{gray}Une histoire de rage, où le mal commence\nUne âme consumée par les flammes intérieures\nLe reflet de la colère, une étreinte sombre\nDans le miroir, un visage tordu\n",
                itIT = "\n{tan}-Testamento 4:5\n{gray}Una storia di rabbia, dove il male ha inizio\nUn'anima consumata dalle fiamme dentro\nIl riflesso dell'ira, un abbraccio oscuro\nNello specchio, un volto contorto\n",
                jaJP = "\n{tan}-テスタメント 4:5\n{gray}悪の始まる怒りの物語\n内なる炎に焼かれた魂\n怒りの反射、暗い抱擁\n鏡の中の歪んだ顔\n",
                koKR = "\n{tan}-유언 4:5\n{gray}악이 시작되는 분노의 이야기\n분노의 반사 속에\n불길에 사로잡힌 영혼, 어두운 포옹\n거울 속의 뒤틀린 얼굴\n",
                plPL = "\n{tan} – Testament 4:5\n{gray}Opowieść o wściekłości, w której zaczyna się zło\nDusza trawiona przez płomienie\nOdbicie Gniewu, mroczny uścisk\nW lustrze, wykrzywiona twarz\n",
                ptBR = "\n{tan}-Testamento 4:5\n{gray}Uma história de raiva, onde o mal começa\nUma alma consumida pelas chamas dentro\nO reflexo da ira, um abraço sombrio\nNo espelho, um rosto distorcido\n",
                ruRU = "\n{tan}-Завет 4:5\n{gray}История ярости, где начинается зло\nДуша, сожженная пламенем внутри\nОтражение гнева, темные объятия\nВ зеркале искаженное лицо\n",
                zhCN = "\n{tan}-《遗嘱》4:5\n{gray}一个愤怒的故事，邪恶开始于\n一个灵魂被火焰吞噬\n愤怒的倒影，一个黑暗的拥抱\n镜子里，一张扭曲的脸\n",
                zhTW = "\n{tan}-《遺囑》4:5\n{gray}一個憤怒的故事，邪惡開始於\n一個靈魂被火焰吞噬\n憤怒的倒影，一個黑暗的擁抱\n鏡子裡，一張扭曲的臉\n",
            }
        },
        { --Testament 4:6 Description
            code = "a36",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:6\n{gray}Die Liebe mit rachsüchtiger Macht verbergen\nEine Sünde, die das Herz in Nacht hüllt\nEin Tanz der Schatten, der Kälte und der Flüchtigkeit\nUnter dem Schleier der Täuschung des Zorns\n",
                enUS = "\n{tan}-Testament 4:6\n{gray}Concealing love with vengeful might\nA sin that cloaks the heart in night\nA dance of shadows, cold and fleet\nBeneath the veil of wrath's deceit\n",
                esES = "\n{tan}-Testamento 4:6\n{gray}Ocultar el amor con poder vengativo\nUn pecado que envuelve el corazón en la noche\nUna danza de sombras, frías y fugaces\nDebajo del velo del engaño de la ira\n",
                esMX = "\n{tan}-Testamento 4:6\n{gray}Ocultar el amor con poder vengativo\nUn pecado que envuelve el corazón en la noche\nUna danza de sombras, frías y fugaces\nDebajo del velo del engaño de la ira\n",
                frFR = "\n{tan}-Testament 4:6\n{gray}Dissimuler l'amour avec une puissance vengeresse\nUn péché qui enveloppe le cœur dans la nuit\nUne danse d'ombres, froides et fugitives\nSous le voile de la tromperie de la colère\n",
                itIT = "\n{tan}-Testamento 4:6\n{gray}Nascondere l'amore con forza vendicativa\nUn peccato che avvolge il cuore nella notte\nUna danza di ombre, fredda e fugace\nSotto il velo dell'inganno dell'ira\n",
                jaJP = "\n{tan}-遺言 4:6\n{gray} 復讐の力で愛を隠す\n夜に心を覆う罪\n影、冷気、そして艦隊の踊り\n怒りの欺瞞のベールの下で\n",
                koKR = "\n{tan}-구약 4:6\n{gray}복수하는 힘으로 사랑을 숨깁니다\n밤에 마음을 가리는 죄\n그림자, 냉기, 빠른 속도의 춤\n진노의 속임수 장막 아래\n",
                plPL = "\n{tan} – Testament 4:6\n{gray}Skrywanie miłości mściwą siłą\nGrzech, który okrywa serce nocą\nTaniec cieni, zimnych i przelotnych\nPod zasłoną oszustwa gniewu\n",
                ptBR = "\n{tan}-Testamento 4:6\n{gray}Ocultando o amor com poder vingativo\nUm pecado que encobre o coração na noite\nUma dança de sombras, frias e fugazes\nSob o véu do engano da ira\n",
                ruRU = "\n{tan}-Завет 4:6\n{gray}Сокрытие любви мстительной силой\nГрех, окутывающий сердце ночью\nТанец теней, холодных и быстротечных\nПод завесой обмана гнева\n",
                zhCN = "\n{tan}-《遗嘱》4:6\n{gray}用复仇的力量隐藏爱情\n在黑夜中掩盖心灵的罪恶\n阴影的舞蹈，寒冷而快速\n在愤怒欺骗的面纱下\n",
                zhTW = "\n{tan}-《遺囑》4:6\n{gray}用復仇的力量隱藏愛情\n在黑夜中掩蓋心靈的罪惡\n陰影的舞蹈，寒冷而快速\n在憤怒欺騙的面紗下\n",
            }
        },
        { --Testament 4:7 Description
            code = "a37",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 4:7\n{gray}Geschichten, verwoben in der Sünde des Zorns\nEin Tanz der Dämonen, ein böser Weg\nVerschlingende Hoffnung in ihrer grausamen Phase\nDie Flamme des Zorns, ein sengendes Feuer\n",
                enUS = "\n{tan}-Testament 4:7\n{gray}Tales woven in the Sin of Wrath\nA dance of demons, a wicked path\nDevouring hope in its cruel phase\nFury's flame, a searing blaze\n",
                esES = "\n{tan}-Testamento 4:7\n{gray}Cuentos tejidos en el pecado de la ira\nUna danza de demonios, un camino malvado\nDevorando la esperanza en su fase cruel\nLa llama de la furia, un resplandor abrasador\n",
                esMX = "\n{tan}-Testamento 4:7\n{gray}Cuentos tejidos en el pecado de la ira\nUna danza de demonios, un camino malvado\nDevorando la esperanza en su fase cruel\nLa llama de la furia, un resplandor abrasador\n",
                frFR = "\n{tan}-Testament 4:7\n{gray}Contes tissés dans le péché de la colère\nUne danse de démons, un chemin méchant\nL'espoir dévorant dans sa phase cruelle\nFlamme de la fureur, un brasier brûlant\n",
                itIT = "\n{tan}-Testamento 4:7\n{gray}Racconti intrecciati nel Peccato dell'Ira\nUna danza di demoni, un sentiero malvagio\nLa speranza che divora nella sua fase crudele\nLa fiamma della furia, una fiamma ardente\n",
                jaJP = "\n{tan}-遺言 4:7\n{gray}怒りの罪に織り込まれた物語\n悪魔の踊り、邪悪な道\n残酷な段階で希望をむさぼる\nフューリーの炎、灼熱の炎\n",
                koKR = "\n{tan}-유언 4:7\n{gray}분노의 죄로 엮은 이야기\n악마의 춤, 사악한 길\n잔혹한 단계에서 삼키는 희망\n퓨리의 불꽃, 타오르는 불꽃\n",
                plPL = "\n{tan}-Testament 4:7\n{gray}Opowieści utkane w Grzechu Gniewu\nTaniec demonów, niegodziwa ścieżka\nPożerająca nadzieja w jej okrutnej fazie\nPłomień Furii, palący płomień\n",
                ptBR = "\n{tan}-Testamento 4:7\n{gray}Contos tecidos no Pecado da Ira\nUma dança de demônios, um caminho perverso\nDevorando a esperança em sua fase cruel\nChama da fúria, uma chama abrasadora\n",
                ruRU = "\n{tan}-Завет 4:7\n{gray}Сказки, сотканные из Греха Гнева\nТанец демонов, нечестивый путь\nПожирающая надежду в её жестокой фазе\nПламя Ярости, жгучее пламя\n",
                zhCN = "\n{tan}-《遗嘱》4:7\n{gray}愤怒之罪中编织的故事\n恶魔之舞，邪恶之路\n在残酷阶段吞噬希望\n愤怒的火焰，灼热的火焰\n",
                zhTW = "\n{tan}-《遺囑》4:7\n{gray}憤怒之罪中編織的故事\n惡魔之舞，邪惡之路\n在殘酷階段吞噬希望\n憤怒的火焰，灼熱的火焰\n",
            }
        },
        { --Testament 5:1 Description
            code = "a38",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:1\n{gray}Die Sünde des Faultiers, eine böse Haltung\nEin lethargischer Tanz, eine träge Trance\nFaultier flüstert leise und webt Bindungen\nIn tiefen Schatten, wo Müßiggang liegt\n",
                enUS = "\n{tan}-Testament 5:1\n{gray}The Sin of Sloth, a wicked stance\nA lethargic dance, a languid trance\nSloth whispers softly, weaving ties\nIn shadows deep, where idleness lies\n",
                esES = "\n{tan}-Testamento 5:1\n{gray}El pecado de la pereza, una postura perversa\nUna danza letárgica, un trance lánguido\nLa pereza susurra suavemente, tejiendo lazos\nEn las sombras profundas, donde yace la ociosidad\n",
                esMX = "\n{tan}-Testamento 5:1\n{gray}El pecado de la pereza, una postura perversa\nUna danza letárgica, un trance lánguido\nLa pereza susurra suavemente, tejiendo lazos\nEn las sombras profundas, donde yace la ociosidad\n",
                frFR = "\n{tan}-Testament 5:1\n{gray}Le péché de la paresse, une position méchante\nUne danse léthargique, une transe languissante\nLa paresse chuchote doucement, tissant des liens\nDans les ombres profondes, là où se trouve l'oisiveté\n",
                itIT = "\n{tan}-Testamento 5:1\n{gray}Il peccato dell'accidia, una posizione malvagia\nUna danza letargica, una trance languida\nL'accidia sussurra piano, intrecciando legami\nNelle ombre profonde, dove giace l'ozio\n",
                jaJP = "\n{tan}-遺言 5:1\n{gray}ナマケモノの罪、邪悪な姿勢\n無気力な踊り、気だるいトランス\nナマケモノはそっとささやき、絆を紡ぐ\n深い影、怠惰が眠る場所\n",
                koKR = "\n{tan}-유언 5:1\n{gray}나태의 죄, 사악한 자세\n무기력한 춤, 나른한 황홀경\n나태는 부드럽게 속삭이며 인연을 엮습니다\n나태가 누워 있는 깊은 그림자 속에서\n",
                plPL = "\n{tan} – Testament 5:1\n{gray}Grzech lenistwa, niegodziwa postawa\nAletargiczny taniec, ospały trans\nLenistwo szepcze cicho, tkając więzy\nW głębokich cieniach, gdzie kryje się bezczynność\n",
                ptBR = "\n{tan}-Testamento 5:1\n{gray}O pecado da preguiça, uma postura perversa\nUma dança letárgica, um transe lânguido\nA preguiça sussurra suavemente, tecendo laços\nNas sombras profundas, onde reside a ociosidade\n",
                ruRU = "\n{tan}-Завет 5:1\n{gray}Грех лени, злая позиция\nВялой танец, томный транс\nЛень тихо шепчет, сплетая узы\nВ глубоких тенях, где лежит безделье\n",
                zhCN = "\n{tan}-遗嘱 5:1\n{gray} 懒惰之罪，邪恶的姿态\n昏昏欲睡的舞蹈，慵懒的恍惚\n树懒轻声低语，编织纽带\n在阴影深处，懒惰所在\n",
                zhTW = "\n{tan}-遺囑 5:1\n{gray} 懶惰之罪，邪惡的姿態\n昏昏欲睡的舞蹈，慵懶的恍惚\n樹懶輕聲低語，編織紐帶\n在陰影深處，懶惰所在\n",
            }
        },
        { --Testament 5:2 Description
            code = "a39",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:2\n{gray}Hüllt alle in eine stagnierende Wolke\nLethargie befiehlt ein schweres Leichentuch\nFaultiers Umarmung, eine fesselnde Kälte\nIn dem Reich, in dem die Zeit stillsteht\n",
                enUS = "\n{tan}-Testament 5:2\n{gray}Enveloping all in a stagnant cloud\nLethargy commands a heavy shroud\nSloth's embrace, a binding chill\nIn the realm where time stands still\n",
                esES = "\n{tan}-Testamento 5:2\n{gray}Envolviendo todo en una nube estancada\nEl letargo exige un sudario pesado\nEl abrazo de la pereza, un escalofrío vinculante\nEn el reino donde el tiempo se detiene\n",
                esMX = "\n{tan}-Testamento 5:2\n{gray}Envolviendo todo en una nube estancada\nEl letargo exige un sudario pesado\nEl abrazo de la pereza, un escalofrío vinculante\nEn el reino donde el tiempo se detiene\n",
                frFR = "\n{tan}-Testament 5:2\n{gray}Enveloppant tout dans un nuage stagnant\nLa léthargie commande un lourd linceul\nL'étreinte du paresseux, un froid contraignant\nDans le royaume où le temps s'arrête\n",
                itIT = "\n{tan}-Testamento 5:2\n{gray}Avvolge tutto in una nuvola stagnante\nLa letargia comanda un sudario pesante\nL'abbraccio dell'indolenza, un gelo vincolante\nNel regno dove il tempo si ferma\n",
                jaJP = "\n{tan}-遺言 5:2\n{gray} 停滞した雲ですべてを包み込む\n無気力が重い覆いを命令する\nナマケモノの抱擁、拘束する寒さ\n時間が止まった領域で\n",
                koKR = "\n{tan}-유언 5:2\n{gray}모든 것을 정체된 구름에 휩싸입니다\n무기력은 무거운 장막을 휘두릅니다\n나태의 포옹, 구속력 있는 냉기\n시간이 정지하는 영역에서\n",
                plPL = "\n{tan} – Testament 5:2\n{gray}Otaczający wszystko stagnacją chmurą\nLetarg nakazuje ciężki całun\nUściski Lenistwa, wiążący chłód\nW krainie, gdzie czas się zatrzymał\n",
                ptBR = "\n{tan}-Testamento 5:2\n{gray}Envolvendo tudo em uma nuvem estagnada\nA letargia comanda uma mortalha pesada\nO abraço da preguiça, um frio que o prende\nNo reino onde o tempo pára\n",
                ruRU = "\n{tan}-Завет 5:2\n{gray}Окутывает всё застоявшимся облаком\nЛетаргия повелевает тяжёлым саваном\nОбъятия лени, связывающий холод\nВ царстве, где время остановилось\n",
                zhCN = "\n{tan}-遗嘱 5:2\n{gray}将一切包裹在停滞的云彩中\n昏睡指挥着沉重的裹尸布\n树懒的拥抱，一种束缚性的寒冷\n在时间静止的领域\n",
                zhTW = "\n{tan}-遺囑 5:2\n{gray}將一切包裹在停滯的雲彩中\n昏睡指揮著沉重的裹屍布\n樹懶的擁抱，一種束縛性的寒冷\n在時間靜止的領域\n",
            }
        },
        { --Testament 5:3 Description
            code = "a40",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:3\n{gray}Während Faultiers Griff unkontrolliert fester wird\nIm Müßiggang wird die Seele kalt\nEine träge Reise in einen dunkleren Raum\nHüte dich vor der Sünde von Faultiers Umarmung\n",
                enUS = "\n{tan}-Testament 5:3\n{gray}As Sloth's grip tightens, uncontrolled\nIn idleness, the soul grows cold\nA languid journey to a darker space\nBeware the Sin of Sloth's embrace\n",
                esES = "\n{tan}-Testamento 5:3\n{gray}A medida que el agarre de la pereza se aprieta, sin control\nEn la inactividad, el alma se enfría\nUn viaje lánguido a un espacio más oscuro\nCuidado con el pecado del abrazo de la pereza\n",
                esMX = "\n{tan}-Testamento 5:3\n{gray}A medida que el agarre de la pereza se aprieta, sin control\nEn la inactividad, el alma se enfría\nUn viaje lánguido a un espacio más oscuro\nCuidado con el pecado del abrazo de la pereza\n",
                frFR = "\n{tan}-Testament 5:3\n{gray}Alors que l'emprise de Sloth se resserre, de manière incontrôlée\nDans l'oisiveté, l'âme se refroidit\nUn voyage languissant vers un espace plus sombre\nMéfiez-vous du péché de l'étreinte de Sloth\n",
                itIT = "\n{tan}-Testamento 5:3\n{gray}Mentre la presa dell'Accidia si stringe, incontrollata\nNell'ozio, l'anima si raffredda\nUn languido viaggio verso uno spazio più oscuro\nAttenti al peccato dell'abbraccio dell'Accidia\n",
                jaJP = "\n{tan}-遺言 5:3\n{gray}ナマケモノの支配力が増し、制御不能になると\n怠惰の中で、魂は冷たくなります\n暗い空間への気だるい旅\nナマケモノの抱擁の罪に気をつけてください\n",
                koKR = "\n{tan}-유언 5:3\n{gray}슬로스의 손아귀가 통제되지 않고 더 조여짐에 따라\n나태함 속에서 영혼은 차가워집니다\n더 어두운 공간으로의 나른한 여행\n슬로스의 죄를 조심하세요\n",
                plPL = "\n{tan} – Testament 5:3\n{gray}W miarę jak uścisk Leniwca zacieśnia się i staje się niekontrolowany\nW bezczynności dusza staje się zimna\nOspała podróż do ciemniejszej przestrzeni\nStrzeż się grzechu uścisku Lenistwa\n",
                ptBR = "\n{tan}-Testamento 5:3\n{gray}À medida que o aperto da Preguiça se aperta, descontrolado\nNa ociosidade, a alma esfria\nUma jornada lânguida para um espaço mais escuro\nCuidado com o Pecado do abraço da Preguiça\n",
                ruRU = "\n{tan}-Завет 5:3\n{gray}Когда хватка лени сжимается, бесконтрольно\nВ безделье душа остывает\nВялое путешествие в тёмное пространство\nОстерегайтесь греха объятий лени\n",
                zhCN = "\n{tan}-遗嘱 5:3\n{gray}当树懒的抓地力不受控制地收紧\n在懒惰中，灵魂变得寒冷\n通往更黑暗空间的慵懒之旅\n当心树懒拥抱的罪恶\n",
                zhTW = "\n{tan}-遺囑5:3\n{gray}當樹懶的抓地力不受控制地收緊\n在懶惰中，靈魂變得寒冷\n通往更黑暗空間的慵懶之旅\n當心樹懶擁抱的罪\n",
            }
        },
        { --Testament 5:4 Description
            code = "a41",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:4\n{gray}Während die Absicht verkümmert, einfach vergeht\nDie Sünde des Faultiers, ein stiller Verfall\nFaultiers Verführung fesselt sie alle\nFlüstern der Erstarrung, der Ruf einer Sirene\n",
                enUS = "\n{tan}-Testament 5:4\n{gray}As purpose withers, just fades away\nThe Sin of Sloth, a quiet decay\nSloth's seduction enthralls them all\nWhispers of torpor, a siren's call\n",
                esES = "\n{tan}-Testamento 5:4\n{gray}A medida que el propósito se marchita, simplemente se desvanece\nEl pecado de la pereza, una decadencia silenciosa\nLa seducción de la pereza los cautiva a todos\nSusurros de letargo, un canto de sirena\n",
                esMX = "\n{tan}-Testamento 5:4\n{gray}A medida que el propósito se marchita, simplemente se desvanece\nEl pecado de la pereza, una decadencia silenciosa\nLa seducción de la pereza los cautiva a todos\nSusurros de letargo, un canto de sirena\n",
                frFR = "\n{tan}-Testament 5:4\n{gray}À mesure que le but dépérit, il s'efface\nLe péché de la paresse, une décadence tranquille\nLa séduction de la paresse les captive tous\nDes murmures de torpeur, un appel de sirène\n",
                itIT = "\n{tan}-Testamento 5:4\n{gray}Mentre il proposito appassisce, svanisce\nIl peccato dell'accidia, un tranquillo decadimento\nLa seduzione dell'accidia li affascina tutti\nSussurri di torpore, il richiamo di una sirena\n",
                jaJP = "\n{tan}-遺言 5:4\n{gray} 目的が枯れるにつれ、ただ消え去るだけ\n怠惰の罪、静かな衰退\n怠惰の誘惑が彼ら全員を魅了する\n昏睡状態のささやき、サイレンの叫び\n",
                koKR = "\n{tan}-유언 5:4\n{gray}목적이 시들면 사라질 뿐입니다\n나태의 죄, 조용한 부패\n나태의 유혹은 그들 모두를 사로잡습니다\n무기력의 속삭임, 사이렌의 부름\n",
                plPL = "\n{tan} – Testament 5:4\n{gray}Gdy cel więdnie, po prostu zanika\nGrzech lenistwa, cichy upadek\nUwodzenie leniwca fascynuje ich wszystkich\nSzepty odrętwienia, wołanie syreny\n",
                ptBR = "\n{tan}-Testamento 5:4\n{gray}À medida que o propósito murcha, simplesmente desaparece\nO pecado da preguiça, uma decadência silenciosa\nA sedução da preguiça cativa a todos\nSussurros de torpor, o chamado de uma sereia\n",
                ruRU = "\n{tan}-Завет 5:4\n{gray}Когда цель увядает, просто исчезает\nГрех лени, тихий упадок\nОбольщение лени очаровывает их всех\nШепот оцепенения, зов сирены\n",
                zhCN = "\n{tan}-遗嘱 5:4\n{gray}随着目标的枯萎，就逐渐消失\n懒惰的罪恶，一种安静的腐烂\n懒惰的诱惑让他们着迷\n麻木的低语，海妖的呼唤\n",
                zhTW = "\n{tan}-遺囑 5:4\n{gray}隨著目標的枯萎，就逐漸消失\n懶惰的罪惡，一種安靜的腐爛\n懶惰的誘惑讓他們著迷\n麻木的低語，海妖的呼喚\n",
            }
        },
        { --Testament 5:5 Description
            code = "a42",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:5\n{gray}Der Griff der Trägheit beginnt zu wachsen\nDas träge Herz, es schlägt so langsam\nEin lethargischer Tanz, ein eiskaltes Stöhnen\nIn verdrehten Reichen erobert Faultier seinen Thron\n",
                enUS = "\n{tan}-Testament 5:5\n{gray}Inertia's grip begins to grow\nThe lazy heart, its beats so slow\nA lethargic dance, a chilling moan\nIn twisted realms, Sloth takes its throne\n",
                esES = "\n{tan}-Testamento 5:5\n{gray}El control de la inercia comienza a crecer\nEl corazón perezoso, sus latidos tan lentos\nUna danza letárgica, un gemido escalofriante\nEn reinos retorcidos, la pereza toma su trono\n",
                esMX = "\n{tan}-Testamento 5:5\n{gray}El control de la inercia comienza a crecer\nEl corazón perezoso, sus latidos tan lentos\nUna danza letárgica, un gemido escalofriante\nEn reinos retorcidos, la pereza toma su trono\n",
                frFR = "\n{tan}-Testament 5:5\n{gray}L'emprise de l'inertie commence à grandir\nLe cœur paresseux, ses battements si lents\nUne danse léthargique, un gémissement glaçant\nDans des royaumes tordus, le paresseux prend son trône\n",
                itIT = "\n{tan}-Testamento 5:5\n{gray}La presa dell'inerzia inizia a crescere\nIl cuore pigro, i suoi battiti così lenti\nUna danza letargica, un gemito agghiacciante\nNei regni contorti, l'Accidia prende il suo trono\n",
                jaJP = "\n{tan}-テスタメント 5:5\n{gray}慣性の支配力が増大し始める\n怠惰な心臓、鼓動がとても遅い\n無気力なダンス、ゾクゾクするうめき声\nねじれた領域で、ナマケモノが王位に就く\n",
                koKR = "\n{tan}-유언 5:5\n{gray}관성의 손아귀가 커지기 시작합니다\n게으른 심장, 그 박동이 너무 느립니다\n무기력한 춤, 오싹한 신음\n뒤틀린 영역에서 나무늘보가 왕좌를 차지합니다\n",
                plPL = "\n{tan}-Testament 5:5\n{gray}Uścisk Inercji zaczyna rosnąć\nLeniwe serce, jego bicie jest tak wolne\nLetargiczny taniec, mrożący krew w żyłach jęk\nW pokręconych krainach Lenistwo przejmuje tron\n",
                ptBR = "\n{tan}-Testamento 5:5\n{gray}O controle da inércia começa a crescer\nO coração preguiçoso, suas batidas são tão lentas\nUma dança letárgica, um gemido arrepiante\nEm reinos distorcidos, a Preguiça assume seu trono\n",
                ruRU = "\n{tan}-Завет 5:5\n{gray}Хватка инерции начинает расти\nЛенивое сердце, оно бьётся так медленно\nВялой танец, леденящий стон\nВ извращенных мирах Ленивец занимает свой трон\n",
                zhCN = "\n{tan}-遗嘱 5:5\n{gray}惯性的控制开始增强\n懒惰的心​​，它的跳动如此缓慢\n昏昏欲睡的舞蹈，令人毛骨悚然的呻吟\n在扭曲的领域，树懒占据了它的王座\n",
                zhTW = "\n{tan}-遺囑5:5\n{gray}慣性的控制開始增強\n懶惰的心​​，它的跳動如此緩慢\n昏昏欲睡的舞蹈，令人毛骨悚然的呻吟\n在扭曲的領域，樹懶佔據了它的王座\n",
            }
        },
        { --Testament 5:6 Description
            code = "a43",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:6\n{gray}Eine finstere Ruhe, alle Tugenden befleckt\nDie Welt im Schlaf, die Leidenschaft erschöpft\nFaultiergeflüster liegen in stillen Strömen\nUnter der Last müßiger Träume\n",
                enUS = "\n{tan}-Testament 5:6\n{gray}A sinister rest, all virtues stained\nThe world in slumber, passion drained\nSloth whispers lies in silent streams\nBeneath the weight of idle dreams\n",
                esES = "\n{tan}-Testamento 5:6\n{gray}Un descanso siniestro, todas las virtudes manchadas\nEl mundo dormido, la pasión agotada\nLa pereza susurra yace en arroyos silenciosos\nBajo el peso de los sueños ociosos\n",
                esMX = "\n{tan}-Testamento 5:6\n{gray}Un descanso siniestro, todas las virtudes manchadas\nEl mundo dormido, la pasión agotada\nLa pereza susurra yace en arroyos silenciosos\nBajo el peso de los sueños ociosos\n",
                frFR = "\n{tan}-Testament 5:6\n{gray}Un repos sinistre, toutes les vertus souillées\nLe monde en sommeil, les passions épuisées\nLes murmures de la paresse gisent dans des ruisseaux silencieux\nSous le poids des rêves vains\n",
                itIT = "\n{tan}-Testamento 5:6\n{gray}Un riposo sinistro, tutte le virtù macchiate\nIl mondo in sonno, la passione prosciugata\nL'indolenza sussurra giace in ruscelli silenziosi\nSotto il peso di sogni vani\n",
                jaJP = "\n{tan}-遺言 5:6\n{gray}不吉な休息、すべての美徳が汚される\n世界はまどろみ、情熱は枯渇する\nナマケモノのささやきは静かな小川に横たわる\n無駄な夢の重みの下で\n",
                koKR = "\n{tan}-유언 5:6\n{gray}불길한 휴식, 모든 미덕이 더럽혀졌습니다\n잠에 빠진 세상, 열정이 고갈되었습니다\n나태의 속삭임이 조용한 시냇물에 있습니다\n유휴 꿈의 무게 아래\n",
                plPL = "\n{tan} – Testament 5:6\n{gray}Złowrogi odpoczynek, wszystkie cnoty splamione\nŚwiat pogrążony we śnie, wyczerpana namiętność\nSzepty leniwca leżą w cichych strumieniach\nPod ciężarem bezczynnych snów\n",
                ptBR = "\n{tan}-Testamento 5:6\n{gray}Um descanso sinistro, todas as virtudes manchadas\nO mundo em sono, paixão drenada\nSussurros de preguiça jazem em riachos silenciosos\nSob o peso de sonhos ociosos\n",
                ruRU = "\n{tan}-Завет 5:6\n{gray}Зловещий покой, все добродетели запятнаны\nМир во сне, страсть иссякла\nШёпот лени лежит в тихих потоках\nПод тяжестью праздных мечтаний\n",
                zhCN = "\n{tan}-遗嘱 5:6\n{gray} 邪恶的休息，所有美德都被玷污\n世界在沉睡，激情枯竭\n树懒低语在寂静的溪流中\n在闲散梦想的重压下\n",
                zhTW = "\n{tan}-遺囑 5:6\n{gray} 邪惡的休息，所有美德都被玷污\n世界在沉睡，激情枯竭\n樹懶低語在寂靜的溪流中\n在閒散夢想的重壓下\n",
            }
        },
        { --Testament 5:7 Description
            code = "a44",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 5:7\n{gray}Ein stilles Echo verschwendeter Tage\nIm Müßiggang verfällt der Geist\nDenn Faulheits Reiz zerreißt Träume\nOh, beachte die Warnung, unruhiges Herz\n",
                enUS = "\n{tan}-Testament 5:7\n{gray}A silent echo of wasted days\nIn idleness, the spirit decays\nFor Sloth's allure tears dreams apart\nOh, heed the warning, restless heart\n",
                esES = "\n{tan}-Testamento 5:7\n{gray}Un eco silencioso de días desperdiciados\nEn la ociosidad, el espíritu decae\nPorque el encanto de la pereza destroza los sueños\nOh, presta atención a la advertencia, corazón inquieto\n",
                esMX = "\n{tan}-Testamento 5:7\n{gray}Un eco silencioso de días desperdiciados\nEn la ociosidad, el espíritu decae\nPorque el encanto de la pereza destroza los sueños\nOh, presta atención a la advertencia, corazón inquieto\n",
                frFR = "\n{tan}-Testament 5:7\n{gray}Un écho silencieux de jours perdus\nDans l'oisiveté, l'esprit se désintègre\nCar l'attrait de la paresse déchire les rêves\nOh, tiens compte de l'avertissement, cœur agité\n",
                itIT = "\n{tan}-Testamento 5:7\n{gray}Un'eco silenziosa di giorni sprecati\nNell'ozio, lo spirito decade\nPerché il fascino dell'Accidia fa a pezzi i sogni\nOh, ascolta l'avvertimento, cuore inquieto\n",
                jaJP = "\n{tan}-遺言 5:7\n{gray}無駄な日々の静かな響き\n怠惰の中で精神は朽ちる\nナマケモノの魅力に夢は引き裂かれる\nああ、警告に気をつけろ、落ち着きのない心よ\n",
                koKR = "\n{tan}-유언 5:7\n{gray}낭비한 나날의 조용한 메아리\n나태 속에서 영혼은 쇠퇴합니다\n나태의 매력은 꿈을 찢어놓습니다\n아, 경고에 귀를 기울이세요, 불안한 마음\n",
                plPL = "\n{tan}-Testament 5:7\n{gray}Ciche echo zmarnowanych dni\nW bezczynności duch zanika\nPrzez urok Lenistwa łzy oddzielają sny\nOch, zważ na ostrzeżenie, niespokojne serce\n",
                ptBR = "\n{tan}-Testamento 5:7\n{gray}Um eco silencioso de dias desperdiçados\nNa ociosidade, o espírito decai\nPois o fascínio da Preguiça destrói sonhos\nOh, preste atenção ao aviso, coração inquieto\n",
                ruRU = "\n{tan}-Завет 5:7\n{gray}Тихое эхо потерянных дней\nВ безделье дух тлеет\nИбо очарование лени разрывает сны\nО, внимай предостережению, беспокойное сердце\n",
                zhCN = "\n{tan}-遗嘱 5:7\n{gray} 虚度时光的无声回声\n在闲散中，精神衰退\n因为树懒的诱惑撕裂了梦想\n哦，注意警告，不安的心\n",
                zhTW = "\n{tan}-遺囑 5:7\n{gray} 虛度時光的無聲迴聲\n在閒散中，精神衰退\n因為樹懶的誘惑撕裂了夢想\n哦，注意警告，不安的心\n",
            }
        },
        { --Testament 6:1 Description
            code = "a45",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:1\n{gray}Doch geworfene Schatten verzerren das Licht\nGeschmückt mit Stolz, wie leuchtende Juwelen\nVerbirgt die Dunkelheit, die dort lauert\nEine polierte Maske, ein schönes Gesicht\n",
                enUS = "\n{tan}-Testament 6:1\n{gray}Yet shadows cast distort the light\nAdorned in pride, like jewels bright\nConceals the darkness lurking there\nA polished mask, a visage fair\n",
                esES = "\n{tan}-Testamento 6:1\n{gray}Sin embargo, las sombras proyectadas distorsionan la luz\nAdornadas con orgullo, como joyas brillantes\nOculta la oscuridad que acecha allí\nUna máscara pulida, un rostro hermoso\n",
                esMX = "\n{tan}-Testamento 6:1\n{gray}Sin embargo, las sombras proyectadas distorsionan la luz\nAdornadas con orgullo, como joyas brillantes\nOculta la oscuridad que acecha allí\nUna máscara pulida, un rostro hermoso\n",
                frFR = "\n{tan}-Testament 6:1\n{gray}Pourtant, les ombres projetées déforment la lumière\nOrné d'orgueil, comme des joyaux brillants\nCache les ténèbres qui s'y cachent\nUn masque poli, un visage clair\n",
                itIT = "\n{tan}-Testamento 6:1\n{gray}Tuttavia le ombre proiettate distorcono la luce\nAdornate con orgoglio, come gioielli luminosi\nNascondono l'oscurità in agguato\nUna maschera lucida, un bel volto\n",
                jaJP = "\n{tan}-遺言 6:1\n{gray}それでも映る影は光を歪める\n輝く宝石のように誇り高く飾られ\nそこに潜む闇を隠す\n磨かれたマスク、美しい顔\n",
                koKR = "\n{tan}-유언6:1\n{gray}그러나 그림자는 빛을 왜곡합니다\n밝은 보석처럼 자부심으로 장식되었습니다\n거기에 숨어 ​​있는 어둠을 가립니다\n광택나는 가면, 아름다운 얼굴\n",
                plPL = "\n{tan} – Testament 6:1\n{gray}Jednak rzucane cienie zniekształcają światło\nOzdobione dumą, jak jasne klejnoty\nUkrywają czającą się ciemność\nWypolerowana maska, piękne oblicze\n",
                ptBR = "\n{tan}-Testamento 6:1\n{gray}No entanto, as sombras projetadas distorcem a luz\nAdornadas em orgulho, como joias brilhantes\nOculta a escuridão que ali se esconde\nUma máscara polida, um rosto belo\n",
                ruRU = "\n{tan}-Завет 6:1\n{gray}Тем не менее, тени искажают свет\nУкрашены гордостью, как яркие драгоценности\nСкрывает тьму, скрывающуюся там\nПолированная маска, прекрасный облик\n",
                zhCN = "\n{tan}-遗嘱 6:1\n{gray}然而阴影投射扭曲了光线\n骄傲地装饰着，就像明亮的珠宝\n隐藏潜伏在那里的黑暗\n抛光的面具，美丽的面容\n",
                zhTW = "\n{tan}-遺囑 6:1\n{gray}然而陰影投射扭曲了光線\n驕傲地裝飾著，就像明亮的珠寶\n隱藏潛伏在那裡的黑暗\n拋光的面具，美麗的面容\n",
            }
        },
        { --Testament 6:2 Description
            code = "a46",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:2\n{gray}Eine Seele, verloren in ihrem eigenen Spiegelbild\nEine Symphonie der Selbstbesessenheit\nWährend das Flüstern der Eitelkeit dich anzieht\nReflexe tanzen in Teichen der Sünde\n",
                enUS = "\n{tan}-Testament 6:2\n{gray}A soul lost in its own reflection\nA symphony of self-obsession\nAs vanity's whispers draw you in\nReflections dance in pools of sin\n",
                esES = "\n{tan}-Testamento 6:2\n{gray}Un alma perdida en su propio reflejo\nUna sinfonía de obsesión por uno mismo\nMientras los susurros de la vanidad te atraen\nLos reflejos bailan en charcos de pecado\n",
                esMX = "\n{tan}-Testamento 6:2\n{gray}Un alma perdida en su propio reflejo\nUna sinfonía de obsesión por uno mismo\nMientras los susurros de la vanidad te atraen\nLos reflejos bailan en charcos de pecado\n",
                frFR = "\n{tan}-Testament 6:2\n{gray}Une âme perdue dans son propre reflet\nUne symphonie d'auto-obsession\nAlors que les murmures de la vanité vous attirent\nLes reflets dansent dans les mares du péché\n",
                itIT = "\n{tan}-Testamento 6:2\n{gray}Un'anima persa nella propria riflessione\nUna sinfonia di auto-ossessione\nMentre i sussurri della vanità ti attirano\nI riflessi danzano in pozze di peccato\n",
                jaJP = "\n{tan}-遺言 6:2\n{gray} 自らの反射に迷う魂\n自己執着の交響曲\n虚栄心のささやきがあなたを引き込むように\n反射は罪のプールで踊る\n",
                koKR = "\n{tan}-성서 6:2\n{gray}자신의 반성에 길을 잃은 영혼\n자기 집착의 교향곡\n허영심의 속삭임이 당신을 끌어들일 때\n반성은 죄의 웅덩이에서 춤을 춥니다\n",
                plPL = "\n{tan} – Testament 6:2\n{gray}Dusza zagubiona we własnym odbiciu\nSymfonia obsesji na własnym punkcie\nGdy wciągają cię szepty próżności\nOdbicia tańczą w kałużach grzechu\n",
                ptBR = "\n{tan}-Testamento 6:2\n{gray}Uma alma perdida em seu próprio reflexo\nUma sinfonia de auto-obsessão\nEnquanto os sussurros da vaidade atraem você\nReflexos dançam em piscinas de pecado\n",
                ruRU = "\n{tan}-Завет 6:2\n{gray}Душа, потерянная в собственном отражении\nСимфония самоодержимости\nКогда шепот тщеславия увлекает вас\nОтражения танцуют в лужах греха\n",
                zhCN = "\n{tan}-《遗嘱》6:2\n{gray}一个迷失在自己倒影中的灵魂\n自恋的交响曲\n虚荣的低语吸引着你\n倒影在罪恶的池子里起舞\n",
                zhTW = "\n{tan}-《遺囑》6:2\n{gray}一個迷失在自己倒影中的靈魂\n自戀的交響曲\n虛榮的低語吸引著你\n倒影在罪惡的池子裡起舞\n",
            }
        },
        { --Testament 6:3 Description
            code = "a47",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:3\n{gray}Ein hoher Tribut, ein böser Preis\nIm Labyrinth der Selbstliebe ist man verloren\nEin Wandteppich, den niemand wahrnimmt\nSeidenfäden der Arroganz weben\n",
                enUS = "\n{tan}-Testament 6:3\n{gray}A heavy toll, a wicked cost\nIn self-love's labyrinth, one is lost\nA tapestry that none perceive\nSilken threads of arrogance weave\n",
                esES = "\n{tan}-Testamento 6:3\n{gray}Un alto peaje, un costo perverso\nEn el laberinto del amor propio uno se pierde\nUn tapiz que nadie percibe\nHilos de seda de arrogancia tejen\n",
                esMX = "\n{tan}-Testamento 6:3\n{gray}Un alto peaje, un costo perverso\nEn el laberinto del amor propio uno se pierde\nUn tapiz que nadie percibe\nHilos de seda de arrogancia tejen\n",
                frFR = "\n{tan}-Testament 6:3\n{gray}Un lourd tribut, un coût terrible\nDans le labyrinthe de l'amour-propre, on est perdu\nUne tapisserie que personne ne perçoit\nDes fils de soie tissés par l'arrogance\n",
                itIT = "\n{tan}-Testamento 6:3\n{gray}Un tributo pesante, un prezzo malvagio\nNel labirinto dell'amor proprio, ci si perde\nUn arazzo che nessuno percepisce\nFili di seta intrecciati di arroganza\n",
                jaJP = "\n{tan}-遺言 6:3\n{gray} 重い通行料、法外な代償\n自己愛の迷宮で、人は失われる\n誰も知覚しないタペストリー\n傲慢の絹の糸が織り成す\n",
                koKR = "\n{tan}-유언 6:3\n{gray}막대한 대가, 사악한 대가\n자기애의 미로에서 사람은 길을 잃습니다\n아무도 인식하지 못하는 태피스트리\n오만한 비단 실이 엮는\n",
                plPL = "\n{tan} – Testament 6:3\n{gray} Ciężkie żniwo, niegodziwy koszt\nW labiryncie miłości własnej można się zgubić\nGobelin, którego nikt nie dostrzega\nJedwabne nici splotu arogancji\n",
                ptBR = "\n{tan}-Testamento 6:3\n{gray}Um tributo pesado, um custo perverso\nNo labirinto do amor próprio, alguém está perdido\nUma tapeçaria que ninguém percebe\nFios de seda de arrogância tecem\n",
                ruRU = "\n{tan}-Завет 6:3\n{gray}Тяжёлая цена, нечестивая цена\nВ лабиринте себялюбия теряешься\nКовер, которого никто не замечает\nТплетут шелковые нити высокомерия\n",
                zhCN = "\n{tan}-遗嘱 6:3\n{gray}沉重的代价，邪恶的代价\n在自爱的迷宫中，一个人迷失了\n无人察觉的挂毯\n傲慢编织的丝线\n",
                zhTW = "\n{tan}-遺囑 6:3\n{gray}沉重的代價，邪惡的代價\n在自愛的迷宮中，一個人迷失了\n無人察覺的掛毯\n傲慢編織的絲線\n",
            }
        },
        { --Testament 6:4 Description
            code = "a48",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:4\n{gray}Als gefAlleer Engel mit einer Dornenkrone\nIn den Tiefen des Spiegels ertrinkt die Seele\nEin Gift, das das Herz ausstreut\nDie Sünde der Eitelkeit, ein tödliches Gebräu\n",
                enUS = "\n{tan}-Testament 6:4\n{gray}As a fAlle angel with a thorny crown\nIn the mirror's depths, the soul does drown\nA poison that the heart does strew\nThe Sin of Vanity, a deadly brew\n",
                esES = "\n{tan}-Testamento 6:4\n{gray}Como ángel caído con corona de espinas\nEn el fondo del espejo, el alma se ahoga\nUn veneno que el corazón sí esparce\nEl pecado de la vanidad, un brebaje mortal\n",
                esMX = "\n{tan}-Testamento 6:4\n{gray}Como ángel caído con corona de espinas\nEn el fondo del espejo, el alma se ahoga\nUn veneno que el corazón sí esparce\nEl pecado de la vanidad, un brebaje mortal\n",
                frFR = "\n{tan}-Testament 6:4\n{gray}Comme un ange déchu à la couronne d'épines\nDans les profondeurs du miroir, l'âme se noie\nUn poison que le cœur répand\nLe péché de vanité, un breuvage mortel\n",
                itIT = "\n{tan}-Testamento 6:4\n{gray}Come un angelo caduto dalla corona di spine\nNelle profondità dello specchio annega l'anima\nUn veleno che il cuore sparge\nIl peccato della vanità, una miscela mortale\n",
                jaJP = "\n{tan}-遺言 6:4\n{gray} 茨の冠をかぶった堕天使のように\n鏡の奥で魂は溺れる\n心がばら撒く毒\n虚栄の罪、致命的なビール\n",
                koKR = "\n{tan}-구약 6:4\n{gray}가시관을 쓴 타락한 천사처럼\n거울 깊은 곳에서 영혼은 익사합니다.\n마음이 뿌린 독\n허영의 죄, 치명적인 양조\n",
                plPL = "\n{tan} – Testament 6:4\n{gray}Jak upadły anioł w cierniowej koronie\nW głębinach lustra dusza tonie\nTrucizna, którą rozsypuje serce\nGrzech próżności, zabójczy napar\n",
                ptBR = "\n{tan}-Testamento 6:4\n{gray}Como um anjo caído com uma coroa de espinhos\nNas profundezas do espelho, a alma se afoga\nUm veneno que o coração espalha\nO Pecado da Vaidade, uma bebida mortal\n",
                ruRU = "\n{tan}-Завет 6:4\n{gray}Как падший ангел с терновым венцом\nВ глубине зеркала душа тонет\nЯд, который рассыпает сердце\nГрех тщеславия, смертельный напиток\n",
                zhCN = "\n{tan}-遗嘱 6:4\n{gray} 作为一个戴着荆棘王冠的堕落天使\n在镜子的深处，灵魂确实被淹没\n一颗毒药散布在心上\n虚荣之罪，一种致命的酿造\n",
                zhTW = "\n{tan}-遺囑6:4\n{gray} 作為一個戴著荊棘王冠的墮落天使\n在鏡子的深處，靈魂確實被淹沒\n一顆毒藥散佈在心上\n虛榮之罪，一種致命的釀造\n",
            }
        },
        { --Testament 6:5 Description
            code = "a49",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:5\n{gray}Die Gerechten einfangen, ein Schicksalsschlag\nDas Gift der Eitelkeit, der Ruf einer Sirene\nDer Spiegel einer im Abgrund verlorenen Seele\nVergoldete Spiegel, geschmückt mit dem Kuss des Ego\n",
                enUS = "\n{tan}-Testament 6:5\n{gray}Entrapping the righteous, a destined fall\nVanity's poison, a siren's call\nReflecting a soul lost in abyss\nGilded mirrors, adorned with ego's kiss\n",
                esES = "\n{tan}-Testamento 6:5\n{gray}Atrapando a los justos, una caída destinada\nEl veneno de la vanidad, un canto de sirena\nReflejando un alma perdida en el abismo\nEspejos dorados, adornados con el beso del ego\n",
                esMX = "\n{tan}-Testamento 6:5\n{gray}Atrapando a los justos, una caída destinada\nEl veneno de la vanidad, un canto de sirena\nReflejando un alma perdida en el abismo\nEspejos dorados, adornados con el beso del ego\n",
                frFR = "\n{tan}-Testament 6:5\n{gray}Piégeage des justes, une chute destinée\nPoison de la vanité, appel d'une sirène\nReflétant une âme perdue dans l'abîme\nMiroirs dorés, ornés du baiser de l'ego\n",
                itIT = "\n{tan}-Testamento 6:5\n{gray}Intrappolare il giusto, una caduta destinata\nIl veleno della vanità, il richiamo di una sirena\nRiflesso di un'anima perduta nell'abisso\nSpecchi dorati, ornati dal bacio dell'ego\n",
                jaJP = "\n{tan}-テスタメント 6:5\n{gray}正義の罠、運命の堕落\n虚栄心の毒、サイレンの呼び声\n深淵に失われた魂を映す\n金色の鏡、エゴのキスで飾られた\n",
                koKR = "\n{tan}-유언 6:5\n{gray}의로운 자를 가두는 것, 운명적인 추락\n허영의 독, 사이렌의 부름\n심연에서 길을 잃은 영혼을 반영\n자아의 입맞춤으로 장식된 금박 거울\n",
                plPL = "\n{tan} – Testament 6:5\n{gray}Uwięzienie sprawiedliwych, przeznaczony upadek\nTrucizna próżności, wołanie syreny\nOdbicie duszy zagubionej w otchłani\nPozłacane lustra, ozdobione pocałunkiem ego\n",
                ptBR = "\n{tan}-Testamento 6:5\n{gray}Aprisionando os justos, uma queda predestinada\nO veneno da vaidade, o chamado de uma sereia\nRefletindo uma alma perdida no abismo\nEspelhos dourados, adornados com o beijo do ego\n",
                ruRU = "\n{tan}-Завет 6:5\n{gray}Ловушка праведника, сужденное падение\nЯд тщеславия, зов сирены\nОтражение души, затерянной в бездне\nПозолоченные зеркала, украшенные поцелуем эго\n",
                zhCN = "\n{tan}-遗嘱 6:5\n{gray}诱骗正义者，注定的堕落\n虚荣的毒药，塞壬的呼唤\n反映迷失在深渊中的灵魂\n镀金的镜子，装饰着自我的亲吻\n",
                zhTW = "\n{tan}-遺囑 6:5\n{gray}誘騙正義者，注定的墮落\n虛榮的毒藥，塞壬的呼喚\n反映迷失在深淵中的靈魂\n鍍金的鏡子，裝飾著自我的親吻\n",
            }
        },
        { --Testament 6:6 Description
            code = "a50",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:6\n{gray}In der Einsamkeit steigt die Seele aus\nEin Thron des Stolzes, so kalt und streng\nDoch die Berührung der Eitelkeit hinterlässt keine Spuren\nMajestätische Gewänder, geschmückt mit Anmut\n",
                enUS = "\n{tan}-Testament 6:6\n{gray}In solitude, the soul disembarks\nA throne of pride, so cold and stark\nYet Vanity's touch leaves no trace\nMajestic robes, adorned with grace\n",
                esES = "\n{tan}-Testamento 6:6\n{gray}En soledad, el alma desembarca\nUn trono de orgullo, tan frío y rígido\nSin embargo, el toque de la vanidad no deja rastro\nTúnicas majestuosas, adornadas con gracia\n",
                esMX = "\n{tan}-Testamento 6:6\n{gray}En soledad, el alma desembarca\nUn trono de orgullo, tan frío y rígido\nSin embargo, el toque de la vanidad no deja rastro\nTúnicas majestuosas, adornadas con gracia\n",
                frFR = "\n{tan}-Testament 6:6\n{gray}Dans la solitude, l'âme débarque\nUn trône d'orgueil, si froid et austère\nMais le contact de la vanité ne laisse aucune trace\nDes robes majestueuses, ornées de grâce\n",
                itIT = "\n{tan}-Testamento 6:6\n{gray}Nella solitudine, l'anima sbarca\nUn trono di orgoglio, così freddo e spoglio\nEppure il tocco della vanità non lascia traccia\nVesti maestosi, adornati con grazia\n",
                jaJP = "\n{tan}-遺言 6:6\n{gray} 孤独の中で、魂は降り立つ\nあまりにも冷酷で厳然とした誇りの玉座\nそれでも虚栄心の感触は痕跡を残さない\n優雅に飾られた荘厳なローブ\n",
                koKR = "\n{tan}-구약 6:6\n{gray}고독 속에서 영혼은\n차갑고 냉혹한 교만의 왕좌에서 내려옵니다\n그러나 허영심의 손길은 흔적을 남기지 않습니다\n은혜로 장식된 장엄한 로브\n",
                plPL = "\n{tan} – Testament 6:6\n{gray}W samotności dusza schodzi na ląd\nTron dumy, tak zimny i surowy\nA jednak dotyk próżności nie pozostawia śladu\nMajestatyczne szaty ozdobione wdziękiem\n",
                ptBR = "\n{tan}-Testamento 6:6\n{gray}Na solidão, a alma desembarca\nUm trono de orgulho, tão frio e austero\nMas o toque da Vaidade não deixa vestígios\nTúnicas majestosas, adornadas com graça\n",
                ruRU = "\n{tan}-Завет 6:6\n{gray}В одиночестве душа покидает берег\nПрестол гордости, такой холодный и суровый\nОднако прикосновение тщеславия не оставляет следа\nВеличественные одежды, украшенные изяществом\n",
                zhCN = "\n{tan}-遗嘱 6:6\n{gray}在孤独中，灵魂登上了\n骄傲的王座，如此冰冷而荒凉\n然而虚荣的触摸却没有留下任何痕迹\n雄伟的长袍，装饰着优雅\n",
                zhTW = "\n{tan}-遺囑 6:6\n{gray}在孤獨中，靈魂登上了\n驕傲的王座，如此冰冷而荒涼\n然而虛榮的觸摸卻沒有留下任何痕跡\n雄偉的長袍，裝飾著優雅\n",
            }
        },
        { --Testament 6:7 Description
            code = "a51",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 6:7\n{gray}In der Selbstanbetung werden Seelen verführt\nGespiegelte Illusionen, eine verborgene Wahrheit\nDie Sünde der Eitelkeit, eine verfluchte Liebkosung\nGeschmückt mit Hochmut, ein tödliches Kleid\n",
                enUS = "\n{tan}-Testament 6:7\n{gray}In self-worship, souls are lured\nMirrored illusions, a truth obscured\nVanity's sin, a cursed caress\nAdorned in arrogance, a deadly dress\n",
                esES = "\n{tan}-Testamento 6:7\n{gray}En la adoración propia, las almas son atraídas\nIlusiones reflejadas, una verdad oscurecida\nEl pecado de la vanidad, una caricia maldita\nAdornado con arrogancia, un vestido mortal\n",
                esMX = "\n{tan}-Testamento 6:7\n{gray}En la adoración propia, las almas son atraídas\nIlusiones reflejadas, una verdad oscurecida\nEl pecado de la vanidad, una caricia maldita\nAdornado con arrogancia, un vestido mortal\n",
                frFR = "\n{tan}-Testament 6:7\n{gray}Dans le culte de soi, les âmes sont attirées\nDes illusions en miroir, une vérité obscurcie\nLe péché de la vanité, une caresse maudite\nParée d'arrogance, un vêtement mortel\n",
                itIT = "\n{tan}-Testamento 6:7\n{gray}Nell'adorazione di sé le anime sono attirate\nIllusioni specchiate, verità oscurata\nPeccato di vanità, carezza maledetta\nAdornata di arroganza, veste mortale\n",
                jaJP = "\n{tan}-遺言 6:7\n{gray} 自己崇拝に魂は誘惑される\n鏡に映した幻想、覆い隠された真実\n虚栄心の罪、呪われた愛撫\n傲慢で飾られた、致命的なドレス\n",
                koKR = "\n{tan}-구약 6:7\n{gray}자기 숭배에서는 영혼이 유혹됩니다.\n거울에 비친 환상, 가려진 진실\n허영의 죄, 저주받은 애무\n오만으로 치장된 치명적인 드레스\n",
                plPL = "\n{tan}-Testament 6:7\n{gray}W kulcie siebie zwabione są dusze\nOdbicia lustrzane, prawda przyćmiona\nGrzech próżności, przeklęta pieszczota\nOzdobiona arogancją, śmiercionośna suknia\n",
                ptBR = "\n{tan}-Testamento 6:7\n{gray}Na auto-adoração, as almas são atraídas\nIlusões espelhadas, uma verdade obscurecida\nO pecado da vaidade, uma carícia amaldiçoada\nAdornado em arrogância, um vestido mortal\n",
                ruRU = "\n{tan}-Завет 6:7\n{gray}В самопоклонении души соблазняются\nЗеркальные иллюзии, истина затемняется\nГрех тщеславия, проклятая ласка\nУкрашенная высокомерием, смертоносная одежда\n",
                zhCN = "\n{tan}-遗嘱 6:7\n{gray}在自我崇拜中，灵魂被引诱\n镜像的幻象，模糊的真相\n虚荣的罪恶，被诅咒的爱抚\n傲慢地装饰，致命的衣服\n",
                zhTW = "\n{tan}-遺囑 6:7\n{gray}在自我崇拜中，靈魂被引誘\n鏡像的幻象，模糊的真相\n虛榮的罪惡，被詛咒的愛撫\n傲慢地裝飾，致命的衣服\n",
            }
        },
        { --Testament 7:1 Description
            code = "a52",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:1\n{gray}Dennoch zerbröckelt es so schnell, wie die Torheit zerreißt\nStein für Stein erhebt sich der Stolz\nHybris bereitet den gefährlichen Flug vor\nEin Turm, der der Höhe des Egos gebaut ist\n",
                enUS = "\n{tan}-Testament 7:1\n{gray}Yet crumbles swift as folly rends\nBrick by brick, pride ascends\nHubris architects the perilous flight\nA tower built on ego's height\n",
                esES = "\n{tan}-Testamento 7:1\n{gray}Sin embargo, se desmorona rápidamente a medida que la locura desgarra\nLadrillo a ladrillo, el orgullo asciende\nLa arrogancia diseña el peligroso vuelo\nUna torre construida sobre la altura del ego\n",
                esMX = "\n{tan}-Testamento 7:1\n{gray}Sin embargo, se desmorona rápidamente a medida que la locura desgarra\nLadrillo a ladrillo, el orgullo asciende\nLa arrogancia diseña el peligroso vuelo\nUna torre construida sobre la altura del ego\n",
                frFR = "\n{tan}-Testament 7 : 1\n{gray}Mais s'effondre rapidement alors que la folie déchire\nBrique par brique, l'orgueil monte\nHubris architecte la fuite périlleuse\nUne tour construite sur la hauteur de l'ego\n",
                itIT = "\n{tan}-Testamento 7:1\n{gray}Eppure crolla rapidamente mentre la follia dilania\nMattone dopo mattone, l'orgoglio sale\nL'arroganza progetta il volo pericoloso\nUna torre costruita all'altezza dell'ego\n",
                jaJP = "\n{tan}-テスタメント 7:1\n{gray}それでも愚かさが引き裂くにつれてすぐに崩れ去る\nレンガを積み上げ、プライドは上昇する\n傲慢さが危険な飛行を設計する\nエゴの高さの上に建てられた塔\n",
                koKR = "\n{tan}-유언 7:1\n{gray}그러나 어리석은 일이 찢기듯이 빠르게 무너지고\n벽돌 하나하나가 자존심을 높이며\nHubris는 위험한 비행을 설계합니다\n자아의 높이 위에 세워진 탑\n",
                plPL = "\n{tan} – Testament 7:1\n{gray}A jednak szybko się rozpada, gdy szaleństwo się rozdziera\nCegła po cegle, duma wznosi się\nPycha projektuje niebezpieczny lot\nWieża zbudowana na wysokości ego\n",
                ptBR = "\n{tan}-Testamento 7:1\n{gray}No entanto, desmorona rapidamente como a loucura despedaça\nTijolo por tijolo, o orgulho ascende\nA arrogância arquiteta o vôo perigoso\nUma torre construída na altura do ego\n",
                ruRU = "\n{tan}-Завет 7:1\n{gray}Однако рушится быстро, как разрывает безумие.\nКампичик за кирпичиком, гордыня поднимается.\nГордыня строит опасный полет.\nБашня, построенная на высоте эго\n",
                zhCN = "\n{tan}-遗嘱 7:1\n{gray}然而，随着愚蠢的撕裂而迅速崩溃\n一砖一瓦，自豪感上升\n傲慢建筑师了危险的飞行\n一座建立在自我高度上的塔\n",
                zhTW = "\n{tan}-遺囑7:1\n{gray}然而，隨著愚蠢的撕裂而迅速崩潰\n一磚一瓦，自豪感上升\n傲慢建築師了危險的飛行\n一座建立在自我高度上的塔\n",
            }
        },
        { --Testament 7:2 Description
            code = "a53",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:2\n{gray}Denn am Ende ist es die Seele, die blutet\nAber hüte dich vor dem Weg, den das Ego führt\nHybris flüstert, ein verlockender Führer\nEin Wandteppich, gewebt aus Fäden des Stolzes\n",
                enUS = "\n{tan}-Testament 7:2\n{gray}For in the end, it's the soul that bleeds\nBut beware the path where ego leads\nHubris whispers, a tempting guide\nA tapestry woven with threads of pride\n",
                esES = "\n{tan}-Testamento 7:2\n{gray}Porque al final, es el alma la que sangra\nPero cuidado con el camino donde conduce el ego\nLa arrogancia susurra, una guía tentadora\nUn tapiz tejido con hilos de orgullo\n",
                esMX = "\n{tan}-Testamento 7:2\n{gray}Porque al final, es el alma la que sangra\nPero cuidado con el camino donde conduce el ego\nLa arrogancia susurra, una guía tentadora\nUn tapiz tejido con hilos de orgullo\n",
                frFR = "\n{tan}-Testament 7:2\n{gray}Car à la fin, c'est l'âme qui saigne\nMais méfiez-vous du chemin où mène l'ego\nChuchote Hubris, guide tentateur\nUne tapisserie tissée de fils d'orgueil\n",
                itIT = "\n{tan}-Testamento 7:2\n{gray}Perché alla fine, è l'anima che sanguina\nMa attenzione al sentiero dove conduce l'ego\nL'Hubris sussurra, una guida allettante\nUn arazzo intessuto di fili di orgoglio\n",
                jaJP = "\n{tan}-遺言 7:2\n{gray} 結局、血を流すのは魂です\nしかし、エゴが導く道には気をつけてください\n傲慢のささやき、誘惑の導き手\n誇りの糸で織られたタペストリー\n",
                koKR = "\n{tan}-유언 7:2\n{gray}결국 피를 흘리는 것은 영혼이기 때문입니다\n그러나 자아가 이끄는 길을 조심하십시오\nHubris는 속삭입니다, 유혹적인 안내자\n자존심의 실로 엮은 태피스트리\n",
                plPL = "\n{tan} – Testament 7:2\n{gray}Bo na końcu to dusza krwawi\nAle uważaj na ścieżkę, którą prowadzi ego\nPycha szepcze, kuszący przewodnik\nGobelin utkany nitkami dumy\n",
                ptBR = "\n{tan}-Testamento 7:2\n{gray}Pois no final é a alma que sangra\nMas cuidado com o caminho onde o ego leva\nA arrogância sussurra, um guia tentador\nUma tapeçaria tecida com fios de orgulho\n",
                ruRU = "\n{tan}-Завет 7:2\n{gray}Ибо, в конце концов, кровоточит душа.\nНо остерегайтесь пути, куда ведет эго.\nШепчет высокомерие, искушающий проводник.\nГобелен, сотканный из нитей гордости.\n",
                zhCN = "\n{tan}-遗嘱 7:2\n{gray}因为最终，流血的是灵魂\n但要小心自我所引导的道路\n傲慢低语，一个诱人的向导\n用骄傲的线编织的挂毯\n",
                zhTW = "\n{tan}-遺囑 7:2\n{gray}因為最終，流血的是靈魂\n但要小心自我所引導的道路\n傲慢低語，一個誘人的嚮導\n用驕傲的線編織的掛毯\n",
            }
        },
        { --Testament 7:3 Description
            code = "a54",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:3\n{gray}Das Gebrüll des Egos, ein tragisches Ende\nDer Fall eines Titanen, zu stolz, um sich zu beugen\nHybris flüstert, wo sich Heiligkeit verbirgt\nIn tiefen Schatten, wo Stolz wohnt\n",
                enUS = "\n{tan}-Testament 7:3\n{gray}The ego's roar, a tragic end\nA titan's fall, too proud to bend\nHubris whispers, where sanctity hides\nIn shadows deep, where pride resides\n",
                esES = "\n{tan}-Testamento 7:3\n{gray}El rugido del ego, un final trágico\nLa caída de un titán, demasiado orgulloso para doblegar\nLa arrogancia susurra, donde se esconde la santidad\nEn las sombras profundas, donde reside el orgullo\n",
                esMX = "\n{tan}-Testamento 7:3\n{gray}El rugido del ego, un final trágico\nLa caída de un titán, demasiado orgulloso para doblegar\nLa arrogancia susurra, donde se esconde la santidad\nEn las sombras profundas, donde reside el orgullo\n",
                frFR = "\n{tan}-Testament 7 : 3\n{gray}Le rugissement de l'ego, une fin tragique\nLa chute d'un titan, trop fier pour se plier\nLes murmures de l'Hubris, où se cache la sainteté\nDans les ombres profondes, où réside l'orgueil\n",
                itIT = "\n{tan}-Testamento 7:3\n{gray}Il ruggito dell'ego, una tragica fine\nLa caduta di un titano, troppo orgoglioso per piegarsi\nL'arroganza sussurra, dove si nasconde la santità\nNelle ombre profonde, dove risiede l'orgoglio\n",
                jaJP = "\n{tan}-テスタメント 7:3\n{gray}自我の咆哮、悲劇的な結末\n巨人の堕落、誇り高すぎて曲げられない\n傲慢さのささやき、神聖さが隠れる場所\n深い影の中に、そこには誇りが宿る\n",
                koKR = "\n{tan}-유언 7:3\n{gray}자아의 포효, 비극적인 종말\n거인의 몰락, 너무 거만해서 구부릴 수 없음\n오만함의 속삭임, 신성함이 숨어 있는 곳\n깊은 그림자 속에, 자존심이 머무는 곳\n",
                plPL = "\n{tan} – Testament 7:3\n{gray} Ryk ego, tragiczny koniec\nUpadek tytana, zbyt dumny, by się ugiąć\nPycha szepcze, gdzie kryje się świętość\nW głębokich cieniach, gdzie mieszka duma\n",
                ptBR = "\n{tan}-Testamento 7:3\n{gray}O rugido do ego, um fim trágico\nA queda de um titã, orgulhoso demais para ser dobrado\nSussurros de arrogância, onde a santidade se esconde\nNas sombras profundas, onde reside o orgulho\n",
                ruRU = "\n{tan}-Завет 7:3\n{gray}Рев эго, трагический конец\nПадение титана, слишком гордого, чтобы сдаться\nШепчет высокомерие, где скрывается святость\nВ глубоких тенях, где обитает гордость\n",
                zhCN = "\n{tan}-遗嘱 7:3\n{gray}自我的咆哮，悲惨的结局\n泰坦的陨落，骄傲得无法屈服\n傲慢低语，神圣隐藏\n深深的阴影，骄傲所在\n",
                zhTW = "\n{tan}-遺囑 7:3\n{gray}自我的咆哮，悲慘的結局\n泰坦的隕落，驕傲得無法屈服\n傲慢低語，神聖隱藏\n深深的陰影，驕傲所在\n",
            }
        },
        { --Testament 7:4 Description
            code = "a55",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:4\n{gray}Der Fall beginnt, in Stolz und Gnade\nEin Tanz mit dem Schicksal, die Umarmung eines Narren\nHybris, der Befleckte, spannt seinen Strang\nhohen Sockeln steht der Hochmütige\n",
                enUS = "\n{tan}-Testament 7:4\n{gray}The fall begins, in pride and grace\nA dance with fate, a fool's embrace\nHubris, the tainted, tightens its strand\nOn pedestals high, the haughty stand\n",
                esES = "\n{tan}-Testamento 7:4\n{gray}La caída comienza, en orgullo y gracia\nUna danza con el destino, el abrazo de un tonto\nLa arrogancia, el contaminado, aprieta su hilo\nSobre pedestales altos, el altivo se mantiene\n",
                esMX = "\n{tan}-Testamento 7:4\n{gray}La caída comienza, en orgullo y gracia\nUna danza con el destino, el abrazo de un tonto\nLa arrogancia, el contaminado, aprieta su hilo\nSobre pedestales altos, el altivo se mantiene\n",
                frFR = "\n{tan}-Testament 7 : 4\n{gray}La chute commence, dans l'orgueil et la grâce\nUne danse avec le destin, une étreinte insensée\nL'hubris, le corrompu, resserre son brin\nSur des piédestaux hauts, l'orgueil se tient\n",
                itIT = "\n{tan}-Testamento 7:4\n{gray}La caduta inizia, con orgoglio e grazia\nUna danza con il destino, un abbraccio da stolto\nL'arroganza, il contaminato, stringe il suo filo\nSu alti piedistalli, l'altezzoso sta in piedi\n",
                jaJP = "\n{tan}-テスタメント 7:4\n{gray}堕落が始まる、誇りと優雅さ\n運命とのダンス、愚か者の抱擁\n穢れた傲慢がその糸を締める\n高い台座の上で、傲慢なスタンド\n",
                koKR = "\n{tan}-구약 7:4\n{gray}오만과 우아함 속에 가을이 시작됩니다\n운명과의 춤, 바보의 포옹\n더러워진 오만은 그 가닥을 조입니다\n높은 받침대 위에서 거만한 스탠드\n",
                plPL = "\n{tan} – Testament 7:4\n{gray} Rozpoczyna się upadek, w dumie i wdzięku\nTaniec z losem, uścisk głupca\nPycha, skażona, napina swoje pasmo\nNa wysokich cokołach, wyniosła postawa\n",
                ptBR = "\n{tan}-Testamento 7:4\n{gray}A queda começa, em orgulho e graça\nUma dança com o destino, um abraço de tolo\nA arrogância, a maculada, aperta seu fio\nEm altos pedestais, o arrogante permanece\n",
                ruRU = "\n{tan}-Завет 7:4\n{gray}Падение начинается в гордости и благодати\nТанец с судьбой, объятия глупца\nГордыня, испорченная, затягивает свою прядь\nНа высоких пьедесталах высокомерный стоит\n",
                zhCN = "\n{tan}-遗嘱 7:4\n{gray}堕落开始，在骄傲和恩典中\n与命运共舞，愚人的拥抱\n傲慢，污点，拉紧它的线\n在高高的基座上，傲慢的立场\n",
                zhTW = "\n{tan}-遺囑7:4\n{gray}墮落開始，在驕傲和恩典中\n與命運共舞，愚人的擁抱\n傲慢，污點，拉緊它的線\n在高高的基座上，傲慢的立場\n",
            }
        },
        { --Testament 7:5 Description
            code = "a56",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:5\n{gray} Der Abstieg des Stolzes, hüte dich, hüte dich\nEin verzerrtes Lächeln, ein böser Blick\nDennoch lauert Selbstüberschätzung, ein giftiger Blick\nDer Spiegel spiegelt ein so schönes Gesicht wider\n",
                enUS = "\n{tan}-Testament 7:5\n{gray}Pride's descent, beware, beware\nA twisted smile, a wicked stare\nYet hubris lurks, a poison glare\nThe mirror reflects a face so fair\n",
                esES = "\n{tan}-Testamento 7:5\n{gray}El descenso del orgullo, cuidado, cuidado\nUna sonrisa retorcida, una mirada malvada\nSin embargo, la arrogancia acecha, un resplandor venenoso\nEl espejo refleja un rostro tan hermoso\n",
                esMX = "\n{tan}-Testamento 7:5\n{gray}El descenso del orgullo, cuidado, cuidado\nUna sonrisa retorcida, una mirada malvada\nSin embargo, la arrogancia acecha, un resplandor venenoso\nEl espejo refleja un rostro tan hermoso\n",
                frFR = "\n{tan}-Testament 7:5\n{gray}La descente de l'orgueil, méfiez-vous, méfiez-vous\nUn sourire tordu, un regard méchant\nPourtant l'orgueil se cache, un regard empoisonné\nLe miroir reflète un visage si beau\n",
                itIT = "\n{tan}-Testamento 7:5\n{gray}La discesa dell'orgoglio, attenzione, attenzione\nUn sorriso contorto, uno sguardo malvagio\nEppure l'arroganza è in agguato, uno sguardo velenoso\nLo specchio riflette un volto così bello\n",
                jaJP = "\n{tan}-テスタメント 7:5\n{gray}プライドの降下、気をつけて、気をつけて\n歪んだ笑顔、邪悪な視線\nそれでも傲慢が潜む、毒のまぶしさ\n鏡はとてもきれいな顔を映す\n",
                koKR = "\n{tan}-유언 7:5\n{gray}교만의 하강, 조심, 조심\n비뚤어진 미소, 사악한 시선\n그러나 자만심, 독의 빛이 도사리고 있습니다\n거울은 너무나 아름다운 얼굴을 비춥니다\n",
                plPL = "\n{tan} – Testament 7:5\n{gray}Zejście dumy, strzeż się, strzeż się\nWykrzywiony uśmiech, niegodziwe spojrzenie\nA jednak czai się pycha, jadowity blask\nLustro odbija twarz tak piękną\n",
                ptBR = "\n{tan}-Testamento 7:5\n{gray}A descida do orgulho, cuidado, cuidado\nUm sorriso torcido, um olhar perverso\nMas a arrogância espreita, um brilho venenoso\nO espelho reflete um rosto tão belo\n",
                ruRU = "\n{tan}-Завет 7:5\n{gray}Происхождение гордыни, остерегайтесь, остерегайтесь\nИзвращенная улыбка, злой взгляд\nТем не менее, высокомерие скрывается, ядовитый взгляд\nЗеркало отражает такое прекрасное лицо\n",
                zhCN = "\n{tan}-遗嘱 7:5\n{gray}骄傲的血统，当心，当心\n扭曲的微笑，邪恶的目光\n然而傲慢潜伏，有毒的眩光\n镜子反射出一张如此美丽的脸\n",
                zhTW = "\n{tan}-遺囑 7:5\n{gray}驕傲的血統，當心，當心\n扭曲的微笑，邪惡的目光\n然而傲慢潛伏，有毒的眩光\n鏡子反射出一張如此美麗的臉\n",
            }
        },
        { --Testament 7:6 Description
            code = "a57",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:6\n{gray}Der Fall wartet Alle Seiten\nEin Herrscher, gekrönt von flüchtigem Stolz\nHybris baut seinen Thron für immer\nhohen Gipfeln, wo Adler schweben\n",
                enUS = "\n{tan}-Testament 7:6\n{gray}The fall awaits, on every side\nA ruler crowned with fleeting pride\nHubris builds its throne, evermore\nOn lofty peaks, where eagles soar\n",
                esES = "\n{tan}-Testamento 7:6\n{gray}La caída espera, por todos lados\nUn gobernante coronado con orgullo fugaz\nLa arrogancia construye su trono, para siempre\nEn picos elevados, donde las águilas vuelan\n",
                esMX = "\n{tan}-Testamento 7:6\n{gray}La caída espera, por todos lados\nUn gobernante coronado con orgullo fugaz\nLa arrogancia construye su trono, para siempre\nEn picos elevados, donde las águilas vuelan\n",
                frFR = "\n{tan}-Testament 7:6\n{gray}La chute attend, de tous côtés\nUn souverain couronné d'un orgueil éphémère\nHubris bâtit son trône, pour toujours\nSur de hauts sommets, où planent les aigles\n",
                itIT = "\n{tan}-Testamento 7:6\n{gray}La caduta attende, da ogni parte\nUn sovrano incoronato con orgoglio fugace\nL'arroganza costruisce il suo trono, per sempre\nSulle alte vette, dove svettano le aquile\n",
                jaJP = "\n{tan}-遺言 7:6\n{gray}あらゆる面で秋が待っています\nつかの間の誇りを冠した統治者\nハブリスはその王座を永遠に築きます\n鷲が飛び立つ高い峰に\n",
                koKR = "\n{tan}-유언 7:6\n{gray}사방에서 가을이 기다리고 있습니다.\n덧없는 자존심으로 왕관을 쓴 통치자\nHubris는 언제나 왕좌를 세웁니다.\n독수리가 날아오르는 높은 봉우리\n",
                plPL = "\n{tan} – Testament 7:6\n{gray} Upadek czeka ze wszystkich stron\nWładca ukoronowany ulotną dumą\nPycha buduje swój tron ​​na zawsze\nNa wyniosłych szczytach, gdzie szybują orły\n",
                ptBR = "\n{tan}-Testamento 7:6\n{gray}A queda espera, por todos os lados\nUm governante coroado com orgulho passageiro\nA arrogância constrói seu trono, para sempre\nEm picos elevados, onde as águias voam\n",
                ruRU = "\n{tan}-Завет 7:6\n{gray}Падение ждет со всех сторон\nПравитель, увенчанный мимолетной гордостью\nГордыня строит свой трон навеки\nНа высоких вершинах, где парят орлы\n",
                zhCN = "\n{tan}-《遗嘱》7:6\n{gray}四面八方都在等待着堕落\n一位统治者带着转瞬即逝的骄傲加冕\n傲慢地建立了它的王座，永远\n在雄鹰翱翔的崇高山峰上\n",
                zhTW = "\n{tan}-《遺囑》7:6\n{gray}四面八方都在等待著墮落\n一位統治者帶著轉瞬即逝的驕傲加冕\n傲慢地建立了它的王座，永遠\n在雄鷹翱翔的崇高山峰上\n",
            }
        },
        { --Testament 7:7 Description
            code = "a58",
            location = "onplayer",
            prefix = {
                deDE = "\n{tan}-Testament 7:7\n{gray}Hüte dich vor der Sünde, damit das Licht nicht schwächer wird\nIm Echo der Arroganz, eine feierliche Hymne\nSymphonie der Hybris, ein stolzer Sohn\nEine tragische Geschichte einer verlorenen Seele\n",
                enUS = "\n{tan}-Testament 7:7\n{gray}Beware the Sin, lest light grows dim\nIn the echo of arrogance, a solemn hymn\nHubris' symphony, a prideful son\nA tragic tale of a soul undone\n",
                esES = "\n{tan}-Testamento 7:7\n{gray}Cuidado con el pecado, no sea que la luz se apague\nEn el eco de la arrogancia, un himno solemne\nLa sinfonía de Hubris, un hijo orgulloso\nUna historia trágica de un alma deshecha\n",
                esMX = "\n{tan}-Testamento 7:7\n{gray}Cuidado con el pecado, no sea que la luz se apague\nEn el eco de la arrogancia, un himno solemne\nLa sinfonía de Hubris, un hijo orgulloso\nUna historia trágica de un alma deshecha\n",
                frFR = "\n{tan}-Testament 7:7\n{gray}Attention au péché, de peur que la lumière ne s'obscurcisse\nDans l'écho de l'arrogance, un hymne solennel\nLa symphonie d'Hubris, un fils orgueilleux\nUne histoire tragique d'une âme défaite\n",
                itIT = "\n{tan}-Testamento 7:7\n{gray}Attenti al peccato, affinché la luce non si affievolisca\nNell'eco dell'arroganza, un inno solenne\nLa sinfonia di Hubris, un figlio orgoglioso\nUna tragica storia di un'anima distrutta\n",
                jaJP = "\n{tan}-テスタメント 7:7\n{gray} 光が薄暗くならないように、罪に気をつけなさい\n傲慢の響きの中で、厳粛な賛美歌\n傲慢の交響曲、誇り高き息子\n取り消された魂の悲劇的な物語\n",
                koKR = "\n{tan}-구약 7:7\n{gray}죄를 조심하십시오. 빛이 어두워지지 않도록\n오만의 메아리 속에서, 엄숙한 찬송가\nHubris의 교향곡, 자랑스러운 아들\n파괴된 영혼의 비극적 이야기\n",
                plPL = "\n{tan}-Testament 7:7\n{gray}Strzeżcie się grzechu, aby światło nie przyćmiło\nW echu arogancji, uroczysty hymn\nSymfonia pychy, dumny syn\nTragiczna opowieść o zgubionej duszy\n",
                ptBR = "\n{tan}-Testamento 7:7\n{gray}Cuidado com o pecado, para que a luz não se escureça\nNo eco da arrogância, um hino solene\nSinfonia de arrogância, um filho orgulhoso\nUma história trágica de uma alma desfeita\n",
                ruRU = "\n{tan}-Завет 7:7\n{gray}Берегитесь греха, чтобы не потускнел свет\nВ отголоске высокомерия, торжественный гимн\nСимфония высокомерия, гордый сын\nТрагическая история о погибшей душе\n",
                zhCN = "\n{tan}-《遗嘱》7:7\n{gray}当心罪恶，免得光明变暗\n在傲慢的回声中，一首庄严的赞美诗\n傲慢的交响曲，一个骄傲的儿子\n一个灵魂被毁灭的悲惨故事\n",
                zhTW = "\n{tan}-《遺囑》7:7\n{gray}當心罪惡，免得光明變暗\n在傲慢的迴聲中，一首莊嚴的讚美詩\n傲慢的交響曲，一個驕傲的兒子\n一個靈魂被毀滅的悲慘故事\n",
            }
        },
        { --Testament 1:Complete Description
            code = "a59",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte enthüllen die Forderung des Vielfraßes\nSich mit Freuden verschlingen, ein so großes Bankett\nDie Sünde der Nachsicht, ein unersättlicher Kampf\nTeller voller verbotener Freude\n",
                enUS = "\n{gray}Seven poems reveal the glutton's demand\nGorging on pleasures, a banquet so grand\nThe sin of indulgence, an insatiable fight\nPlates piled high with forbidden delight\n",
                esES = "\n{gray}Siete poemas revelan la exigencia del glotón\nAtiborrarse de placeres, un banquete tan grandioso\nEl pecado de la indulgencia, una lucha insaciable\nPlatos repletos de delicias prohibidas\n",
                esMX = "\n{gray}Siete poemas revelan la exigencia del glotón\nAtiborrarse de placeres, un banquete tan grandioso\nEl pecado de la indulgencia, una lucha insaciable\nPlatos repletos de delicias prohibidas\n",
                frFR = "\n{gray}Sept poèmes révèlent la demande du glouton\nSe gaver de plaisirs, un banquet si grandiose\nLe péché de l'indulgence, un combat insatiable\nDes assiettes remplies de délices interdits\n",
                itIT = "\n{gray}Sette poesie rivelano la richiesta del goloso\nAbbonarsi di piaceri, un banchetto così grande\nIl peccato dell'indulgenza, una lotta insaziabile\nPiatti ricolmi di delizie proibite\n",
                jaJP = "\n{gray}7 つの詩が食いしん坊の要求を明らかにします\n快楽をむさぼり食う、盛大な宴会\n耽溺の罪、飽くなき戦い\n禁断の喜びを盛り込んだ皿\n",
                koKR = "\n{gray}7개의 시는 대식가의 요구를 드러냅니다.\n쾌락에 탐닉하는 연회, 너무나 성대한 연회\n방종의 죄, 만족할 줄 모르는 싸움\n금지된 기쁨으로 높이 쌓인 접시\n",
                plPL = "\n{gray}Siedem wierszy ujawnia żądanie żarłoka\nObjadanie się przyjemnościami, bankiet tak wystawny\nGrzech pobłażania, nienasycona walka\nTalerze zawalone zakazaną rozkoszą\n",
                ptBR = "\n{gray}Sete poemas revelam a exigência do glutão\nEmpanturrando-se de prazeres, um banquete tão grandioso\nO pecado da indulgência, uma luta insaciável\nPratos cheios de delícias proibidas\n",
                ruRU = "\n{gray}Семь стихотворений раскрывают требования чревоугодника.\nНаслаждение удовольствиями, такой грандиозный банкет.\nГрех потворства, ненасытная борьба.\nТарелки, заваленные запретными удовольствиями.\n",
                zhCN = "\n{gray}七首诗揭示了贪吃者的需求\n狼吞虎咽，盛宴盛大\n放纵之罪，贪得无厌的战斗\n禁忌的快乐堆得高高的盘子\n",
                zhTW = "\n{gray}七首詩揭示了貪吃者的需求\n狼吞虎咽，盛宴盛大\n放縱之罪，貪得無厭的戰鬥\n禁忌的快樂堆得高高的盤子\n",
            }
        },
        { --Testament 2:Complete Description
            code = "a60",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte weben das Netz des Unrecht\nDas verführerische Flüstern der Lust, ein verlockendes Lied\nLügen, ein Buch des Bösen, voller Geschichten, die es zu erzählen gibt\nIn tiefen Schatten, wo Wünsche wohnen\n",
                enUS = "\n{gray}Seven poems weave the web of wrong\nLust's seductive whispers, a tempting song\nLies a book of evil, with tales to tell\nIn shadows deep, where desires dwell\n",
                esES = "\n{gray}Siete poemas tejen la red del mal\nLos susurros seductores de la lujuria, una canción tentadora\nSe encuentra un libro del mal, con historias que contar\nEn las sombras profundas, donde habitan los deseos\n",
                esMX = "\n{gray}Siete poemas tejen la red del mal\nLos susurros seductores de la lujuria, una canción tentadora\nSe encuentra un libro del mal, con historias que contar\nEn las sombras profundas, donde habitan los deseos\n",
                frFR = "\n{gray}Sept poèmes tissent la toile du mal\nLes murmures séduisants de la luxure, une chanson tentante\nSe trouve un livre du mal, avec des histoires à raconter\nDans les ombres profondes, où habitent les désirs\n",
                itIT = "\n{gray}Sette poesie tessono la rete del male\nI sussurri seducenti della lussuria, una canzone allettante\nSi ​​trova un libro del male, con storie da raccontare\nNelle ombre profonde, dove dimorano i desideri\n",
                jaJP = "\n{gray}7 つの詩が悪の網を織り成す\n欲望の魅惑的なささやき、誘惑の歌\n語るべき物語を伴う悪の本が横たわっている\n欲望が宿る深い影の中に\n",
                koKR = "\n{gray}7개의 시가 그릇된 그물을 엮습니다\n정욕의 매혹적인 속삭임, 유혹적인 노래\n전할 이야기가 담긴 악의 책이 있습니다\n욕망이 깃든 깊은 그림자 속에\n",
                plPL = "\n{gray}Siedem wierszy splata sieć zła\nUwodzicielskie szepty pożądania, kusząca piosenka\nKłamie księga zła z opowieściami do opowiedzenia\nW głębokich cieniach, gdzie mieszkają pragnienia\n",
                ptBR = "\n{gray}Sete poemas tecem a teia do mal\nOs sussurros sedutores da luxúria, uma canção tentadora\nHá um livro do mal, com histórias para contar\nNas sombras profundas, onde habitam os desejos\n",
                ruRU = "\n{gray}Семь стихотворений сплетают паутину зла\nОбольстительный шепот похоти, соблазнительная песня\nЛожь — книга зла, о которой можно рассказать истории\nВ глубоких тенях, где обитают желания\n",
                zhCN = "\n{gray}七首诗编织着错误的网\n情欲诱人的低语，一首诱人的歌曲\n躺着一本邪恶的书，讲述着故事\n在深处的阴影中，欲望居住的地方\n",
                zhTW = "\n{gray}七首詩編織著錯誤的網\n情慾誘人的低語，一首誘人的歌曲\n躺著一本邪惡的書，講述著故事\n在深處的陰影中，慾望居住的地方\n",
            }
        },
        { --Testament 3:Complete Description
            code = "a61",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte spiegeln die Unmengen der Sünde der Gier wider.\nHüte dich vor der Verlockung, den verräterischen Plänen.\nDie Symphonie der Gier erklingt, ihre Melodie ist verabscheut.\nIn der Symphonie des Reichtums ein dissonanter Akkord.\n",
                enUS = "\n{gray}Seven poems echo the Sin of Greed's reams\nBeware the allure, the treacherous schemes\nGreed's symphony plays, its tune abhorred\nIn the symphony of wealth, a dissonant chord\n",
                esES = "\n{gray}Siete poemas hacen eco de las resmas del pecado de la avaricia\nCuidado con el atractivo, los planes traicioneros\nLa sinfonía de la avaricia suena, su melodía aborrecida\nEn la sinfonía de la riqueza, un acorde disonante\n",
                esMX = "\n{gray}Siete poemas hacen eco de las resmas del pecado de la avaricia\nCuidado con el atractivo, los planes traicioneros\nLa sinfonía de la avaricia suena, su melodía aborrecida\nEn la sinfonía de la riqueza, un acorde disonante\n",
                frFR = "\n{gray}Sept poèmes font écho aux rames du péché de l'avidité\nMéfiez-vous de l'attrait, des stratagèmes perfides\nLa symphonie de l'avidité joue, son air abhorré\nDans la symphonie de la richesse, un accord dissonant\n",
                itIT = "\n{gray}Sette poesie riecheggiano le risme del peccato dell'avidità\nAttenzione al fascino, ai piani infidi\nLa sinfonia dell'avidità suona, la sua melodia aborrita\nNella sinfonia della ricchezza, un accordo dissonante\n",
                jaJP = "\n{gray}7 つの詩が強欲の罪を響かせる\n誘惑と裏切りの陰謀に気をつけろ\n強欲の交響曲が流れ、その旋律は忌まわしい\n富の交響曲には不協和音\n",
                koKR = "\n{gray}7개의 시는 Sin of Greed의 많은 곡을 반영합니다\n매력과 배반적인 계획을 조심하세요\nGreed의 교향곡이 연주되고 그 곡조는 혐오스럽습니다\n부의 교향곡에서 불협화음의 화음\n",
                plPL = "\n{gray}Siedem wierszy jest echem grzechu chciwości\nStrzeż się uroku, zdradzieckich planów\nGra symfonia Greeda, jej melodia jest odrażająca\nW symfonii bogactwa, dysonansowy akord\n",
                ptBR = "\n{gray}Sete poemas ecoam os resmas do pecado da ganância\nCuidado com o fascínio, os esquemas traiçoeiros\nA sinfonia da ganância toca, sua melodia abominada\nNa sinfonia da riqueza, um acorde dissonante\n",
                ruRU = "\n{gray}Семь стихотворений отражают потоки Греха Жадности.\nОстерегайтесь соблазна, коварных замыслов.\nСимфонические пьесы Жадности, ее ненавистная мелодия.\nВ симфонии богатства - диссонирующий аккорд.\n",
                zhCN = "\n{gray}七首诗呼应了贪婪之罪的境界\n当心诱惑，奸诈的计划\n贪婪的交响乐奏响，其曲调令人憎恶\n在财富的交响乐中，一个不和谐的和弦\n",
                zhTW = "\n{gray}七首詩呼應了貪婪之罪的境界\n當心誘惑，姦詐的計劃\n貪婪的交響樂奏響，其曲調令人憎惡\n在財富的交響樂中，一個不和諧的和弦\n",
            }
        },
        { --Testament 4:Complete Description
            code = "a62",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte besingen die rachsüchtige Menge\nGeschmolzene Flüsse der Wut, schnell und stark\nKochender Groll, während die Geduld verschwimmt\nUnter der Oberfläche erwacht ein Vulkan\n",
                enUS = "\n{gray}Seven poems chant the vengeful throng\nMolten rivers of rage, swift and strong\nBoiling resentment, as patience blurs\nBeneath the surface, a volcano stirs\n",
                esES = "\n{gray}Siete poemas cantan la multitud vengativa\nRíos fundidos de rabia, rápidos y fuertes\nResentimiento hirviente, mientras la paciencia se desvanece\nDebajo de la superficie, un volcán se agita\n",
                esMX = "\n{gray}Siete poemas cantan la multitud vengativa\nRíos fundidos de rabia, rápidos y fuertes\nResentimiento hirviente, mientras la paciencia se desvanece\nDebajo de la superficie, un volcán se agita\n",
                frFR = "\n{gray}Sept poèmes chantent la foule vengeresse\nDes rivières de rage en fusion, rapides et fortes\nUn ressentiment bouillant, alors que la patience s'estompe\nSous la surface, un volcan s'agite\n",
                itIT = "\n{gray}Sette poesie cantano la folla vendicativa\nFiumi fusi di rabbia, rapidi e forti\nRisentimento ribollente, mentre la pazienza si offusca\nSotto la superficie, un vulcano si agita\n",
                jaJP = "\n{gray}7 つの詩が復讐に燃える群衆を詠唱\n怒りの溶けた川、速くて強い\n忍耐力がぼやけて沸騰する憤り\n地表の下で火山が揺れる\n",
                koKR = "\n{gray}7개의 시가 복수심에 불타는 군중을 노래합니다\n분노의 용암의 강, 빠르고 강함\n인내심이 흐려짐에 따라 끓어오르는 분노\n표면 아래에서 화산이 휘젓습니다\n",
                plPL = "\n{gray}Siedem wierszy intonuje mściwy tłum\nStopione rzeki wściekłości, szybkie i silne\nWrząca uraza, gdy cierpliwość się zaciera\nPod powierzchnią budzi się wulkan\n",
                ptBR = "\n{gray}Sete poemas cantam a multidão vingativa\nRios derretidos de raiva, rápidos e fortes\nRessentimento fervente, enquanto a paciência se confunde\nSob a superfície, um vulcão se agita\n",
                ruRU = "\n{gray}Семь стихотворений воспевают мстительную толпу\nРасплавленные реки ярости, быстрые и сильные\nКипящее негодование, когда терпение размывается\nПод поверхностью шевелится вулкан\n",
                zhCN = "\n{gray}七首诗歌颂了复仇的人群\n愤怒的熔河，迅速而强烈\n沸腾的怨恨，随着耐心的模糊\n地表之下，一座火山在搅拌\n",
                zhTW = "\n{gray}七首詩頌了復仇的人群\n憤怒的熔河，迅速而強烈\n沸騰的怨恨，隨著耐心的模糊\n地表之下，一座火山在攪拌\n",
            }
        },
        { --Testament 5:Complete Description
            code = "a63",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte summen die Stille des Untergangs\nFaultiers subtiles Murmeln, ein einschläferndes Dröhnen\nEine Sünde taucht und pflanzt träge Samen\nIm Griff der Lethargie, wo Müßiggang wächst\n",
                enUS = "\n{gray}Seven poems hum the lull of the doom\nSloth's subtle murmur, a soporific boom\nA sin emerges, planting sluggish seeds\nIn lethargy's grasp, where idleness breeds\n",
                esES = "\n{gray}Siete poemas tararean la calma de la perdición\nEl sutil murmullo de la pereza, un boom soporífero\nUn pecado emerge, plantando semillas perezosas\nEn las garras del letargo, donde se reproduce la ociosidad\n",
                esMX = "\n{gray}Siete poemas tararean la calma de la perdición\nEl sutil murmullo de la pereza, un boom soporífero\nUn pecado emerge, plantando semillas perezosas\nEn las garras del letargo, donde se reproduce la ociosidad\n",
                frFR = "\n{gray}Sept poèmes fredonnent l'accalmie du malheur\nLe murmure subtil du paresseux, un boom soporifique\nUn péché surgit, plantant des graines paresseuses\nDans l'emprise de la léthargie, là où se reproduit l'oisiveté\n",
                itIT = "\n{gray}Sette poesie canticchiano la quiete della sventura\nIl sottile mormorio dell'accidia, un rimbombo soporifero\nUn peccato emerge, piantando semi pigri\nNella stretta del letargo, dove l'ozio genera\n",
                jaJP = "\n{gray}7 つの詩が破滅の静けさを口ずさむ\nナマケモノのかすかなつぶやき、眠気を誘うブーム\n罪が現れ、鈍い種を植える\n無気力が支配し、怠惰が生む\n",
                koKR = "\n{gray}7개의 시가 파멸의 고요함을 흥얼거리고 있습니다\n나태의 미묘한 중얼거림, 잠의 붐\n죄가 나타나 느린 씨앗을 심습니다\n무기력의 손아귀에서 게으름이 번식합니다\n",
                plPL = "\n{gray}Siedem wierszy nuci ciszę zagłady\nSubtelny szmer Leniwca, usypiający huk\nWyłania się grzech, siejąc powolne nasiona\nW uścisku letargu, gdzie rodzi się bezczynność\n",
                ptBR = "\n{gray}Sete poemas zumbem a calmaria da desgraça\nO murmúrio sutil da preguiça, um estrondo soporífico\nUm pecado emerge, plantando sementes preguiçosas\nNas garras da letargia, onde a ociosidade se reproduz\n",
                ruRU = "\n{gray}Семь стихотворений напевают умиротворение рока\nТихий ропот лени, усыпляющий грохот\nВсходит грех, сея вялые семена\nВ хватке летаргии, где плодится безделье\n",
                zhCN = "\n{gray}七首诗哼唱着厄运的平静\n树懒微妙的低语，令人昏昏欲睡的繁荣\n罪恶出现，播下迟缓的种子\n在昏睡的掌握中，懒惰滋生\n",
                zhTW = "\n{gray}七首詩哼唱著厄運的平靜\n樹懶微妙的低語，令人昏昏欲睡的繁榮\n罪惡出現，播下遲緩的種子\n在昏睡的掌握中，懶惰滋生\n",
            }
        },
        { --Testament 6:Complete Description
            code = "a64",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte enthüllen den neidischen Kontrast\nDer Garten des Grolls, dunkel und weit\nGefesselt an Eitelkeit und gebunden durch Schmerz\nEin Herz, das in bitterer Verachtung schwelt\n",
                enUS = "\n{gray}Seven poems unveil the envious contrast\nThe garden of resentment, dark and vast\nChained to vanity and bound by pain\nA heart that festers in bitter disdain\n",
                esES = "\n{gray}Siete poemas revelan el envidioso contraste\nEl jardín del resentimiento, oscuro y vasto\nEncadenado a la vanidad y atado por el dolor\nUn corazón que se pudre en amargo desdén\n",
                esMX = "\n{gray}Siete poemas revelan el envidioso contraste\nEl jardín del resentimiento, oscuro y vasto\nEncadenado a la vanidad y atado por el dolor\nUn corazón que se pudre en amargo desdén\n",
                frFR = "\n{gray}Sept poèmes dévoilent le contraste envieux\nLe jardin du ressentiment, sombre et vaste\nEnchaîné à la vanité et lié par la douleur\nUn cœur qui s'envenime dans un dédain amer\n",
                itIT = "\n{gray}Sette poesie svelano il contrasto invidioso\nIl giardino del risentimento, oscuro e vasto\nIncatenato alla vanità e vincolato dal dolore\nUn cuore che marcisce nell'amaro disprezzo\n",
                jaJP = "\n{gray}7 つの詩が羨望のコントラストを明らかにします\n暗く広大な憤りの園\n虚栄心と痛みに縛られ\n激しい軽蔑で化膿する心\n",
                koKR = "\n{gray}7개의 시가 부러움의 대조를 드러냅니다\n어둡고 광대한 원한의 정원\n허영에 묶여 고통에 얽매임\n쓰라린 경멸로 곪아터지는 마음\n",
                plPL = "\n{gray}Siedem wierszy odsłania zazdrosny kontrast\nOgród urazy, ciemny i rozległy\nPrzykuty do próżności i związany bólem\nSerce ropiejące w gorzkiej pogardzie\n",
                ptBR = "\n{gray}Sete poemas revelam o contraste invejoso\nO jardim do ressentimento, escuro e vasto\nAcorrentado à vaidade e preso pela dor\nUm coração que apodrece em amargo desdém\n",
                ruRU = "\n{gray}Семь стихотворений раскрывают завистливый контраст.\nСад обиды, темный и обширный.\nПрикованный к тщеславию и скованный болью.\nСердце, которое гноится горьким пренебрежением.\n",
                zhCN = "\n{gray}七首诗揭示了嫉妒的对比\n怨恨的花园，黑暗而广阔\n被虚荣束缚，被痛苦束缚\n一颗在痛苦的蔑视中溃烂的心\n",
                zhTW = "\n{gray}七首詩揭示了嫉妒的對比\n怨恨的花園，黑暗而廣闊\n被虛榮束縛，被痛苦束縛\n一顆在痛苦的蔑視中潰爛的心\n",
            }
        },
        { --Testament 7:Complete Description
            code = "a65",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Sieben Gedichte warnen vor der stolzen Trommel\nIn den Annalen des Irrtums eine warnende Summe\nDenn Hybris fordert einen hohen Tribut\nAlso beachte die Vorsicht, oh sterbliche Seele\n",
                enUS = "\n{gray}Seven poems warn of the prideful drum\nIn the annals of error, a cautionary sum\nFor hubris exacts a hefty toll\nSo heed the caution, oh mortal soul\n",
                esES = "\n{gray}Siete poemas advierten sobre el tambor orgulloso\nEn los anales del error, una suma de advertencia\nPorque la arrogancia cobra un alto precio\nAsí que presta atención a la advertencia, oh alma mortal\n",
                esMX = "\n{gray}Siete poemas advierten sobre el tambor orgulloso\nEn los anales del error, una suma de advertencia\nPorque la arrogancia cobra un alto precio\nAsí que presta atención a la advertencia, oh alma mortal\n",
                frFR = "\n{gray}Sept poèmes mettent en garde contre le tambour orgueilleux\nDans les annales de l'erreur, une somme d'avertissement\nCar l'orgueil exige un lourd tribut\nAlors tenez compte de la prudence, ô âme mortelle\n",
                itIT = "\n{gray}Sette poesie mettono in guardia dal tamburo orgoglioso\nNegli annali dell'errore, una somma cautelativa\nPerché l'arroganza esige un pesante tributo\nQuindi presta attenzione, oh anima mortale\n",
                jaJP = "\n{gray}7 つの詩が高慢な太鼓を警告しています\n誤謬の記録では、警告の額\n傲慢は多大な犠牲を伴います\nだから注意を払いなさい、おお定命の魂よ\n",
                koKR = "\n{gray}7개의 시는 교만한 북소리에 대해 경고합니다\n오류의 연대기에서 경고의 요약\n오만은 막대한 대가를 치르게 합니다\n그러니 주의하십시오, 오 필멸의 영혼이여\n",
                plPL = "\n{gray}Siedem wierszy ostrzega przed dumnym bębnem\nW annałach błędów jest to przestroga\nGdy pycha zbiera ogromne żniwo\nWięc zachowaj ostrożność, o śmiertelna duszo\n",
                ptBR = "\n{gray}Sete poemas alertam sobre o tambor orgulhoso\nNos anais do erro, uma quantia de advertência\nA arrogância cobra um alto preço\nEntão preste atenção à cautela, ó alma mortal\n",
                ruRU = "\n{gray}Семь стихотворений предупреждают о гордом барабане\nВ анналах ошибок есть предостерегающая сумма\nЗа гордыню приходится платить огромную цену\nТак что внимай осторожности, о смертная душа\n",
                zhCN = "\n{gray}七首诗警告骄傲的鼓\n在错误的编年史中，一个警示性的总和\n因为傲慢会造成巨大的损失\n所以请注意警告，哦凡人的灵魂\n",
                zhTW = "\n{gray}七首詩警告驕傲的鼓\n在錯誤的編年史中，一個警示性的總和\n因為傲慢會造成巨大的損失\n所以請注意警告，哦凡人的靈魂\n",
            }
        },
        { --Edyrem's Encylopedia Description
            code = "a66",
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Deine Prüfungen sind vorbei, Abenteurer, aber deine Reise hat gerade erst begonnen...\n{gray}Es lässt dich fast die Last des Blutes und den widerlichen Gestank des Todes vergessen\n{gray}Das Sammeln von Wissen aus den entlegensten Winkeln dieses verdrehten Reiches hat dir immense Macht verliehen\n",
                enUS = "\n{gray}And may you find peace, wherever you are\nLet virtue alone be your north star\nNavigate the pitfalls and re-kindle hope\nSo Traveler be wary, of your journey's scope\n\nFor in the shadows, the deadliest sins hide\nIn virtues, find strength, let wisdom guide\nGuard thy heart from sins' treacherous sea\nOh, wayfarer, heed this poetic decree\n",
                esES = "\n{gray}Tus pruebas han terminado, aventurero, pero tu viaje acaba de comenzar...\n{gray}Casi te hace olvidar la carga de sangre y el hedor fétido de la muerte\n{gray}Reunir conocimientos de los rincones más lejanos de este reino retorcido te ha otorgado un poder inmenso\n",
                esMX = "\n{gray}Tus pruebas han terminado, aventurero, pero tu viaje acaba de comenzar...\n{gray}Casi te hace olvidar la carga de sangre y el hedor fétido de la muerte\n{gray}Reunir conocimientos de los rincones más lejanos de este reino retorcido te ha otorgado un poder inmenso\n",
                frFR = "\n{gray}Vos épreuves sont terminées, aventurier, mais votre voyage ne fait que commencer...\n{gray}Cela vous fait presque oublier le fardeau du sang et la puanteur nauséabonde de la mort\n{gray}La collecte de connaissances des coins les plus reculés de ce royaume tordu vous a conféré un pouvoir immense.\n",
                itIT = "\n{gray}Le tue prove sono finite, avventuriero, ma il tuo viaggio è appena iniziato...\n{gray}Ti fa quasi dimenticare il peso del sangue e il fetore della morte\n{gray}Raccogliere conoscenza dagli angoli più remoti di questo regno contorto ti ha concesso un potere immenso\n",
                jaJP = "\n{gray}冒険者よ、あなたの試練は終わりました、しかし、あなたの旅は始まったばかりです...\n{gray}それはあなたに血の重荷と死の悪臭をほとんど忘れさせます\n{gray}このねじれた領域の隅々から知識を集めることは、あなたに計り知れない力を与えました\n",
                koKR = "\n{gray}ULTIMATE CHARM",
                plPL = "\n{gray}Twoje próby dobiegły końca, poszukiwaczu przygód, ale twoja podróż dopiero się zaczęła...\n{gray}To prawie sprawia, żezapominasz o ciężarze krwi i okropnym smrodzie śmierci\n{gray}Zbieranie wiedzy z odległych zakątków tej pokręconej krainy dało ci ogromną moc\n",
                ptBR = "\n{gray}Suas provações terminaram, aventureiro, mas sua jornada apenas começou...\n{gray}Isso quase faz você esquecer o peso do sangue e o fedor fétido da morte\n{gray}Reunir conhecimento dos cantos mais distantes deste reino distorcido lhe concedeu imenso poder\n",
                ruRU = "\n{gray}Твои испытания закончились, искатель приключений, но твоё путешествие только началось...\n{gray}Это почти заставит тебя забыть бремя крови и отвратительный запах смерти\n{gray}Сбор знаний из дальних уголков этого извращенного мира дал тебе огромную силу\n",
                zhCN = "\n{gray}冒险家，你的考验已经结束，但你的旅程才刚刚开始...\n{gray}它几乎让你忘记血液的负担和死亡的恶臭\n{gray}从这个扭曲领域的遥远角落收集知识赋予了你巨大的力量\n",
                zhTW = "\n{gray}冒險家，你的考驗已經結束，但你的旅程才剛開始...\n{gray}它幾乎讓你忘記了血液的負擔和死亡的惡臭\n{gray}從這個扭曲領域的遙遠角落收集知識賦予了你巨大的力量\n",
            }
        },
                {
            codes = { "y01", "y02", "y03", "y04", "y05", "y06", "y07", "y34", "y35", "y36", "y37", "y38", "y39", "y40" },
            location = "onplayer",
            prefix = {
                deDE = "\n{gray}Mana-Regeneration, Lauftempo, alle Fähigkeiten, Geschicklichkeit, Max HP %%, Lichtradius\n{turquoise}Derzeit geänderte Stats:\n\n{white}Siehe Mod-Infoseite für Details\nKills, Tode und Charm-Gewicht verändern Stats\n{tan}Ein uraltes Artefakt, dan an deine Seele gebunden ist und diese formt{gold}\n",
                enUS = "\n{gray}Mana Regen, Faster Run/Walk, All Skills, Dexterity, Max HP%%, Light Radius\n{turquoise}Currently altered stats:\n\n{white}View the mod info page for full details\nVarious stats will be modified based on your kills, deaths and charm weight used\n{tan}An ancient artifact that is bound to your soul, shaping it's very form{gold}\n",
                esES = "\n{gray}Regeneración de maná, correr/caminar más rápido, todas las habilidades, destreza, %% de HP máx., radio de luz\n{turquoise}Estadísticas actualmente modificadas:\n\n{white}Consulta la página de información del mod para obtener todos los detalles\nVarias estadísticas se modificarán en función de tus asesinatos, muertes y  Peso del amuleto usado\n{tan}Un artefacto antiguo que está ligado a tu alma y le da forma.{gold}\n",
                esMX = "\n{gray}Regeneración de maná, correr/caminar más rápido, todas las habilidades, destreza, %% de HP máx., radio de luz\n{turquoise}Estadísticas actualmente modificadas:\n\n{white}Consulta la página de información del mod para obtener todos los detalles\nVarias estadísticas se modificarán en función de tus asesinatos, muertes y  Peso del amuleto usado\n{tan}Un artefacto antiguo que está ligado a tu alma y le da forma.{gold}\n",
                frFR = "\n{gray}Régénération de mana, course/marche plus rapide, toutes les compétences, dextérité, PV max%%, rayon de lumière\n{turquoise}CStatistiques actuellement modifiées :\n\n{white}Consultez la page d'informations du mod pour plus de détails\nDiverses statistiques seront modifiées en fonction de vos éliminations, de vos morts et  poids de charme utilisé\n{tan}Un artefact ancien lié à votre âme, façonnant sa forme même{gold}\n",
                itIT = "\n{gray}Mana Regen, Corsa/Cammina più veloce, Tutte le abilità, Destrezza, HP% massimo%, Raggio di luce\n{turquoise}CStatistiche attualmente modificate:\n\n{white}Visualizza la pagina delle informazioni sulla mod per i dettagli completi\nVarie statistiche verranno modificate in base alle tue uccisioni, morti e  peso del fascino utilizzato\n{tan}Un antico manufatto legato alla tua anima, modellandone la forma stessa{gold}\n",
                jaJP = "\n{gray}マナ回復、より速い走力/歩行、すべてのスキル、器用さ、最大HP%%、光の半径\n{turquoise}現在変更されている統計:\n\n{white}詳細についてはMOD情報ページをご覧ください\nさまざまな統計はキル数、死亡数、およびキル数に基づいて変更されます。 使用されるチャームウェイト\n{tan}あなたの魂に結びつけられ、まさにその形を形作る古代のアーティファクト{gold}\n",
                koKR = "\n{gray}마나 재생, 더 빠른 달리기/걷기, 모든 기술, 민첩, 최대 HP%%, 가벼운 반경\n{turquoise}현재 변경된 통계:\n\n{white}자세한 내용은 모드 정보 페이지를 확인하세요\n다양한 통계는 처치, 사망 및  사용된 부적 무게\n{tan}당신의 영혼에 결속되어 형태를 형성하는 고대 유물입니다{gold}\n",
                plPL = "\n{gray}Regeneracja many, szybszy bieg/chodzenie, wszystkie umiejętności, zręczność, maksymalne HP%%, promień światła\n{turquoise}Aktualnie zmienione statystyki:\n\n{white}Zobacz stronę z informacjami o modzie, aby uzyskać szczegółowe informacje\nRóżne statystyki zostaną zmodyfikowane w oparciu o twoje zabójstwa, śmierć i  użyto ciężaru uroku\n{tan}Starożytny artefakt związany z twoją duszą, kształtujący jej formę{gold}\n",
                ptBR = "\n{gray}Regeneração de Mana, Corrida/Caminhada mais rápida, Todas as habilidades, Destreza, HP máximo%%, Raio de luz\n{turquoise}Estatísticas alteradas atualmente:\n\n{white}Veja a página de informações do mod para detalhes completos\nVárias estatísticas serão modificadas com base em suas mortes, mortes e  peso do amuleto usado\n{tan}Um artefato antigo que está ligado à sua alma, moldando sua própria forma{gold}\n",
                ruRU = "\n{gray}Регенерация маны, более быстрый бег/ходьба, все навыки, ловкость, макс. HP%%, радиус света\n{turquoise}Текущая измененная статистика:\n\n{white}Посмотрите страницу с информацией о моде для получения полной информации\nРазличные характеристики будут изменены в зависимости от ваших убийств, смертей и  использованный вес очарования\n{tan}Древний артефакт, связанный с вашей душой, формирующий ее форму.{gold}\n",
                zhCN = "\n{gray}法力回复、更快的奔跑/行走、所有技能、敏捷、最大 HP%%、光半径\n{turquoise}当前更改的统计数据：\n\n{white}查看 mod 信息页面以获取完整详细信息\n各种统计数据将根据您的杀戮、死亡和死亡进行修改 使用的符咒重量\n{tan}与你的灵魂绑定的古老神器，塑造它的形状{gold}",
                zhTW = "\n{gray}法力回复、更快的奔跑/行走、所有技能、敏捷、最大HP%%、光半徑\n{turquoise}當前更改的統計數據：\n\n{white}查看mod 信息頁面以獲取完整詳細信息\n各種統計數據將根據您的殺戮、死亡和死亡進行修改使用的符咒重量\n{tan}與你的靈魂綁定的古老神器，塑造它的形狀{gold}",
            }
        },
        {
            code = "rc1d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Wechseln)\n{blue}(2048 Niedrig {white}->{blue} 1 Mittel)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 Bajo {white}->{blue} 1 Medio)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 Bajo {white}->{blue} 1 Medio)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(2048 Basso {white}->{blue} 1 Medio)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                koKR = "{gray}(변환기 유형을 변경하는 큐브)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(2048 Niski {white}->{blue} 1 Średni)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(2048 Baixo {white}->{blue} 1 Médio)",
                ruRU = "{gray}(Куб для изменения типа преобразователя)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                zhCN = "{gray}(改变转换器类型的立方体)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
                zhTW = "{gray}(改變轉換器類型的立方體)\n{blue}(2048 Low {white}->{blue} 1 Mid)",
            }
        },
        {
            code = "rc2d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Wechseln)\n{blue}(2048 Mittel {white}->{blue} 1 Hoch)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(2048 Mid {white}->{blue} 1 Alto)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                koKR = "{gray}(변환기 유형을 변경하는 큐브)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                ruRU = "{gray}(Куб для изменения типа конвертера)\n{blue}(2048 Mid {white}->{blue} 1 High)",
                zhCN = "{gray}（用于更改转换器类型的立方体）\n{blue}（2048 Mid {white}->{blue} 1 High）",
                zhTW = "{gray}（用於更改轉換器類型的立方體）\n{blue}（2048 Mid {white}->{blue} 1 High）",
            }
        },
        {
            code = "rc3d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Wechseln)\n{blue}(2048 Hoch {white}->{blue} 1 Ultra)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(2048 Alto {white}->{blue} 1 Ultra)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                koKR = "{gray}(변환기 유형을 변경하기 위한 큐브)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                ruRU = "{gray}(Куб для изменения типа конвертера)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                zhCN = "{gray}(改变转换器类型的立方体)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
                zhTW = "{gray}(改變轉換器類型的立方體)\n{blue}(2048 High {white}->{blue} 1 Ultra)",
            }
        },
        {
            code = "rc4d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Ändern des Konvertertyps)\n{blue}(1 Mittel {white}->{blue} 2048 Niedrig)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(1 Medium {white}->{blue} 2048 Low)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Medio {white}->{blue} 2048 Bajo)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Medio {white}->{blue} 2048 Bajo)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(1 Medio {white}->{blue} 2048 Basso)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(1 Moyen {white}->{blue} 2048 Faible)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(1 中 {white}->{blue} 2048 低)",
                koKR = "{gray}(변환기 유형을 변경하는 큐브)\n{blue}(1 중간 {white}->{blue} 2048 낮음)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(1 Średni {white}->{blue} 2048 Niski)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(1 Médio {white}->{blue} 2048 Baixo)",
                ruRU = "{gray}(Куб для изменения типа конвертера)\n{blue}(1 Средний {white}->{blue} 2048 Низкий)",
                zhCN = "{gray}（用于更改转换器类型的立方体）\n{blue}（1 中 {white}->{blue} 2048 低）",
                zhTW = "{gray}（用於更改轉換器類型的立方體）\n{blue}（1 中 {white}->{blue} 2048 低）",
            }
        },
        {
            code = "rc5d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Ändern des Konvertertyps)\n{blue}(1 Hoch {white}->{blue} 2048 Mittel)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(1 High {white}->{blue} 2048 Medium)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Alto {white}->{blue} 2048 Medio)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Alto {white}->{blue} 2048 Medio)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(1 Alto {white}->{blue} 2048 Medio)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(1 Élevé {white}->{blue} 2048 Moyen)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(1 High {white}->{blue} 2048 Medium)",
                koKR = "{gray}(변환기 유형을 변경하는 큐브)\n{blue}(1 높음 {white}->{blue} 2048 중간)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(1 Wysoka {white}->{blue} 2048 Średnia)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(1 Alto {white}->{blue} 2048 Médio)",
                ruRU = "{gray}(Куб для изменения типа конвертера)\n{blue}(1 Высокий {white}->{blue} 2048 Средний)",
                zhCN = "{gray}（用于更改转换器类型的立方体）\n{blue}（1 高 {white}->{blue} 2048 中）",
                zhTW = "{gray}（用於更改轉換器類型的立方體）\n{blue}（1 高 {white}->{blue} 2048 中）",
            }
        },
        {
            code = "rc6d",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Würfel zum Ändern des Konvertertyps)\n{blue}(1 Ultra {white}->{blue} 2048 Hoch)",
                enUS = "{gray}(Cube to change converter type)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                esES = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Ultra {white}->{blue} 2048 Alto)",
                esMX = "{gray}(Cubo para cambiar el tipo de convertidor)\n{blue}(1 Ultra {white}->{blue} 2048 Alto)",
                frFR = "{gray}(Cubo per cambiare tipo di convertitore)\n{blue}(1 Ultra {white}->{blue} 2048 Alto)",
                itIT = "{gray}(Cube pour changer le type de convertisseur)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                jaJP = "{gray}(コンバータ タイプを変更するキューブ)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                koKR = "{gray}(변환기 유형 변경용 큐브)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                plPL = "{gray}(Kostka do zmiany typu konwertera)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                ptBR = "{gray}(Cubo para alterar o tipo de conversor)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                ruRU = "{gray}(Куб для изменения типа конвертера)\n{blue}(1 Ultra {white}->{blue} 2048 High)",
                zhCN = "{gray}（用于更改转换器类型的立方体）\n{blue}（1 Ultra {white}->{blue} 2048 High）",
                zhTW = "{gray}（用於更改轉換器類型的立方體）\n{blue}（1 Ultra {white}->{blue} 2048 High）",
            }
        },
        {
            code = "Z09",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+15 Verteidigung, +1 Lichtradius\n{green}Helm/Gürtel: {white}+10 Verteidigung, +1 Lichtradius\n{green}Rüstungen/Stiefel: {white}+10 Verteidigung, +1 Lichtradius\nn{green}Waffen/Handschuhe: {white}+30 Angriffswert, +1 Lichtradius\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-1{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+15 Defense, +1 to Light Radius\n{green}Helms/Belts: {white}+10 Defense, +1 to Light Radius\n{green}Armors/Boots: {white}+10 Defense, +1 to Light Radius\n{green}Weapons/Gloves: {white}+30 to Attack Rating, +1 to Light Radius\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-1{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyería: {white} 15 Defensa, 1 a radio de luz\n{green}Yelmos/Cinturones: {white} 10 Defensa, 1 a radio de luz\n{green}Armaduras/Botas: {white} 10 Defensa, 1 a radio de luz\nn{green}Armas/guantes: {white} 30 de índice de ataque, 1 de radio de luz\nÿcVista previa de la carrera:\n\n{white}(Puntos bajos {blue}-1{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyería: {white} 15 Defensa, 1 a radio de luz\n{green}Yelmos/Cinturones: {white} 10 Defensa, 1 a radio de luz\n{green}Armaduras/Botas: {white} 10 Defensa, 1 a radio de luz\nn{green}Armas/guantes: {white} 30 de índice de ataque, 1 de radio de luz\nÿcVista previa de la carrera:\n\n{white}(Puntos bajos {blue}-1{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 15 Difesa, 1 a raggio leggero\n{green}Elmi/Cinture: {white} 10 Difesa, 1 a raggio leggero\n{green}Armature/Stivali: {white} 10 Difesa, 1 a raggio leggero\nn{green}Armi/Guanti: {white} 30 al grado di attacco, 1 al raggio di luce\n{turquoise}Rune Anteprima:\n\n{white}(Punti bassi {blue}-1{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 15Défense, 1 à Rayon léger\n{green}Casques/Ceintures: {white} 10Défense, 1 à Rayon léger\n{green}Armures/Bottes: {white} 10Défense, 1 à Rayon léger\nn{green}Armes/Gants: {white} 30 au Score d'attaque, 1 au Rayon lumineux\n{turquoise}Rune Preview:\n\n{white}(Bas Points {blue}-1{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 15 Defense、1 to Light Radius\n{green}Helms/Belts: {white} 10 Defense、1 to Light Radius\n{green}Armors/Boots: {white} 10 Defense、1 to Light Radius\nn{green}Weapons/Gloves: {white} 30 to Attack Rating、1 to Light Radius\n{turquoise}Rune プレビュー:\n\n{white}(Low Points {blue}-1{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}방어력 +15, 빛 반경 +1\n{green}헬름/벨트: {white}방어력 +10, 빛 반경 +1\n{green}갑옷/장화: {white}방어력 +10, 빛 반경 +1{white}\n{green}무기/장갑: {white}공격 등급 +30, 빛 반경 +1\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-1{white})\n",
                plPL = "{tan}Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 15 Obrona, 1 do Promień Światła\n{green}Hełmy/Pasy: {white} 10 Obrona, 1 do Promień Światła\n{green}Pancerz/Buty: {white} 10 Obrona, 1 do Promień Światła\nn{green}Bronie/rękawice: {white} 30 do współczynnika ataku, 1 do promienia światła\n{turquoise}Rune Podgląd:\n\n{white}(niskie punkty {blue}-1{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 15 Defesa, 1 para Raio de Luz\n{green} Elmos/Cintos: {white} 10 Defesa, 1 para Raio de Luz\n{green}Armaduras/Botas: {white} 10 Defesa, 1 para Raio de Luz\nn{green}Armas/Luvas: {white} 30 para Classificação de Ataque, 1 para Raio de Luz\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-1{white})\n",
                ruRU = "{tan}Куб в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 15 защиты, 1 радиус света\n{green}Шлемы/ремни: {white} 10 защиты, 1 радиус света\n{green}Доспехи/обувь: {white} 10 защиты, 1 радиус света\nn{green}Оружие/перчатки: {white} 30 к рейтингу атаки, 1 к радиусу света\n{turquoise}Rune Preview:\n\n{white}(Низкие очки {blue}-1{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 15 防御，1 至光范围\n{green}头盔/腰带：{white} 10 防御，1 至光范围\n{green}盔甲/靴子：{white} 10 防御，1 至光范围\nn{green}武器/手套：{white} 30 至攻击等级，1 至轻型半径\n{turquoise}Rune 预览：\n\n{white}（低点 {blue}-1{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 15 防禦，1 至光範圍\n{green}頭盔/腰帶：{white} 10 防禦，1 至光範圍\n{green}盔甲/靴子：{white} 10 防禦，1 至光範圍\nn{green}武器/手套：{white} 30 至攻擊等級，1 至輕型半徑\n{turquoise}Rune 預覽：\n\n{white}（低點 {blue}-1{white}）\n",
            }
        },
        {
            code = "Z10",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}7% Blockchance\n{green}Helme/Gürtel: {white}+5% Lauftempo\n{green}Rüstungen/Stiefel: {white}+5% Lauftempo\n{green}Waffen/Handschuhe: {white}+75% Schaden und 50% Angriffswert gegen Untote\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-2{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}7% Increased Chance of Blocking\n{green}Helms/Belts: {white}+5% Faster Run/Walk\n{green}Armors/Boots: {white}+5% Faster Run/Walk\n{green}Weapons/Gloves: {white}+75% Damage and +50% Attack Rating to Undead\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-2{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}7 % de mayor probabilidad de bloqueo\n{green}Yelmos/cinturones: {white} 5 % más rápido para correr/caminar\n{green}Armaduras/botas: {white} {white} 5 % más rápido para correr/caminar\n{green}Armas/guantes:  {white} 75 % de daño y 50 % de índice de ataque a muertos vivientes\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-2{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}7 % de mayor probabilidad de bloqueo\n{green}Yelmos/cinturones: {white} 5 % más rápido para correr/caminar\n{green}Armaduras/botas: {white} {white} 5 % más rápido para correr/caminar\n{green}Armas/guantes:  {white} 75 % de daño y 50 % de índice de ataque a muertos vivientes\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-2{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}7% Aumentata possibilità di blocco\n{green}Elmi/Cinture: {white} Corsa/camminata più veloce del 5%\n{green}Armature/Stivali: {white} Corsa/camminata più veloce del 5%\n{green}Armi/Guanti:  {white} 75% di danno e 50% di attacco ai non morti\n{turquoise}Rune Anteprima:\n\n{white}(Punti bassi {blue}-2{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}7% de chances de bloquer\n{green}Casques/Ceintures: {white} Course/marche 5% plus rapide\n{green}Armures/Bottes: {white} Course/marche 5% plus rapide\n{green}Armes/Gants:  {white} 75% de dégâts et 50% de taux d'attaque contre les morts-vivants\n{turquoise}Rune Preview:\n\n{white}(Points bas {blue}-2{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}7% 防御の可能性が増加\n{green}Helms/Belts: {white} 5% 速く走る/歩く\n{green}Armors/Boots: {white} 5% 速く走る/歩く\n{green}Weapons/Gloves:  {white} アンデッドに対する 75% のダメージと 50% の攻撃力\n{turquoise}Rune プレビュー:\n\n{white}(低ポイント {blue}-2{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}차단 확률 +7%\n{green}헬름/벨트: {white}걷기/달리기 속도 +5%\n{green}갑옷/장화: {white}걷기/달리기 속도 +2%{white}\n{green}무기/장갑: {white}언데드에 대한 피해 +75% 및 언데드에 대한 공격 등급 +50%\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-2{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}7% Zwiększona szansa na blokowanie\n{green}Hełmy/Pasy: {white} 5% szybsze bieganie/chodzenie\n{green}Pancerze/Buty: {white} 5% szybsze biegi/bronie: c2  {white} 75% Obrażeń i 50% Ataku Nieumarłych\n{turquoise}Rune Podgląd:\n\n{white}(Niskie Punkty {blue}-2{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}7% Maior Chance de Bloqueio\n{green}Capacetes/Cintos: {white} 5% Correr/Andar Mais Rápido\n{green}Armaduras/Botas: {white} Correr/Andar 5% Mais Rápido\n{green}Armas/Luvas:  {white} 75% de Dano e 50% de Classificação de Ataque para Mortos-vivos\n{turquoise}Rune Pré-visualização:\n\n{white}(Pontos baixos {blue}-2{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white}7% повышенный шанс блокировки\n{green}Шлемы/пояса: {white} 5% Быстрее бега/ходьбы\n{green}Доспехи/обувь: {white} 5% Быстрее бега/ходьбы\n{green}Оружие/перчатки:  {white} 75% урона и 50% рейтинга атаки для нежити\n{turquoise}Rune Preview:\n\n{white}(Низкие очки {blue}-2{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}7% 增加阻挡的机会\n{green}头盔/腰带：{white} 5% 更快的跑步/步行\n{green}盔甲/靴子：{white} 5% 更快的跑步/步行\n{green}武器/手套：  {white} 75% 伤害和 50% 对不死生物的攻击等级\n{turquoise}Rune 预览：\n\n{white}（低分 {blue}-2{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}7% 增加阻擋的機會\n{green}頭盔/腰帶：{white} 5% 更快的跑步/步行\n{green}盔甲/靴子：{white} 5% 更快的跑步/步行\n{green}武器/手套：  {white} 75% 傷害和 50% 對不死生物的攻擊等級\n{turquoise}Rune 預覽：\n\n{white}（低分 {blue}-2{white}）\n",
            }
        },
        {
            code = "Z11",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+2 Mana pro Kill\n{green}Helme/Gürtel: {white}+2 Mana pro Kill\n{green}Rüstungen/Stiefel: {white}+2 Mana pro Kill\n{green}Waffen/Handschuhe: {white}+2 Mana pro Kill\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-4{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+2 Mana after each kill\n{green}Helms/Belts: {white}+2 Mana after each kill\n{green}Armors/Boots: {white}+2 Mana after each kill\n{green}Weapons/Gloves: {white}+2 Mana after each kill\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-4{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 2 de maná después de cada muerte\n{green}Yelmos/cinturones: {white} 2 de maná después de cada muerte\n{green}Armaduras/botas: {white} 2 de maná después de cada muerte\n{green}Armas/guantes: {white} 2  Maná después de cada muerte\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-4{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 2 de maná después de cada muerte\n{green}Yelmos/cinturones: {white} 2 de maná después de cada muerte\n{green}Armaduras/botas: {white} 2 de maná después de cada muerte\n{green}Armas/guantes: {white} 2  Maná después de cada muerte\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-4{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 2 Mana dopo ogni uccisione\n{green}Elmi/Cinture: {white} 2 Mana dopo ogni uccisione\n{green}Armature/Stivali: {white} 2 Mana dopo ogni uccisione\n{green}Armi/Guanti: {white} 2  Mana dopo ogni uccisione\n{turquoise}Rune Anteprima:\n\n{white}(Punti bassi {blue}-4{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 2Mana après chaque élimination\n{green}Casques/Ceintures: {white} 2Mana après chaque élimination\n{green}Armures/Bottes: {white} 2Mana après chaque élimination\n{green}Armes/Gants: {white} 2  Mana après chaque kill\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-4{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 2 キルごとのマナ\n{green}Helms/Belts: {white} 2 マナごとのキル\n{green}Armors/Boots: {white} 2 マナごとのキル\n{green}Weapons/Gloves: {white} 2 各キル後のマナ\n{turquoise}Rune プレビュー:\n\n{white}(低いポイント {blue}-4{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}처치 당 마나 +2\n{green}헬름/벨트: {white}처치 당 +2 마나\n{green}갑옷/장화: {white}처치 당 +2 마나{white}\n{green}무기/장갑: {white}처치 당 +2 마나\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-4{white})\n",
                plPL = "{tan}Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 2 Many po każdym zabiciu\n{green}Hełmy/Pasy: {white} 2 Many po każdym zabiciu\n{green}Pancerz/Buty: {white} 2 Many po każdym zabiciu\n{green}Broń: ÿc  Mana po każdym zabiciu\n{turquoise}Rune Podgląd:\n\n{white}(Niskie punkty {blue}-4{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 2 Mana após cada morte\n{green}Capacetes/Cintos: {white} 2 Mana após cada morte\n{green}Armaduras/Botas: {white} 2 Mana após cada morte\n{green}Armas/Luvas: {white} 2  Mana após cada morte\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-4{white})\n",
                ruRU = "{tan}Один куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 2 маны после каждого убийства\n{green}Шлемы/ремни: {white} 2 маны после каждого убийства\n{green}Доспехи/ботинки: {white} 2 маны после каждого убийства\n{green}Оружие/перчатки: {white} 2  Мана после каждого убийства\n{turquoise}Rune Preview:\n\n{white}(Низкие очки {blue}-4{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 每次击杀后 2 法力\n{green}头盔/腰带：{white} 每次击杀后 2 法力\n{green}盔甲/靴子：{white} 每次击杀后 2 法力\n{green}武器/手套：{white} 2 每次击杀后的法力值\n{turquoise}Rune 预览：\n\n{white}(低点 {blue}-4{white})\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 每次擊殺後 2 法力\n{green}頭盔/腰帶：{white} 每次擊殺後 2 法力\n{green}盔甲/靴子：{white} 每次擊殺後 2 法力\n{green}武器/手套：{white} 2 每次擊殺後的法力值\n{turquoise}Rune 預覽：\n\n{white}(低點 {blue}-4{white})\n",
            }
        },
        {
            code = "Z12",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+30 Projektilverteidigung\n{green}Helm/Gürtel: {white}+30 Projektilverteidigung\n{green}Rüstungen/Stiefel: {white}+30 Projektilverteidigung\n{green}Waffen/Handschuhe: {white}Rückstoß\nn{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-8{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+30 Defense vs. Missile\n{green}Helms/Belts: {white}+30 Defense vs. Missile\n{green}Armors/Boots: {white}+30 Defense vs. Missile\n{green}Weapons/Gloves: {white}Knockback\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-8{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 30 Defensa contra misil\n{green}Yelmos/Cinturones: {white} 30 Defensa contra misil\n{green}Armaduras/Botas: {white} 30 Defensa contra misil\n{green}Armas/Guantes: {white}Retroceso\nn{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-8{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 30 Defensa contra misil\n{green}Yelmos/Cinturones: {white} 30 Defensa contra misil\n{green}Armaduras/Botas: {white} 30 Defensa contra misil\n{green}Armas/Guantes: {white}Retroceso\nn{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-8{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 30 Difesa vs. Missile\n{green}Elmi/Cinture: {white} 30 Difesa vs. Missile\n{green}Armature/Stivali: {white} 30 Difesa vs. Missile\n{green}Armi/Guanti: {white}Knockback\nAnteprima n{turquoise}Rune:\n\n{white}(Punti bassi {blue}-8{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 30 Défense contre Missile\n{green}Casques/Ceintures: {white} 30 Défense contre Missile\n{green}Armures/Bottes: {white} 30 Défense contre Missile\n{green}Armes/Gants: {white}Recul\nn{turquoise}Rune Preview:\n\n{white}(Points bas {blue}-8{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 30 Defense vs. Missile\n{green}Helms/Belts: {white} 30 Defense vs. Missile\n{green}Armors/Boots: {white} 30 Defense vs. Missile\n{green}Weapons/Gloves: {white}Knockback\nn{turquoise}Rune プレビュー:\n\n{white}(Low Points {blue}-8{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}원거리 공격 방어 +30\n{green}헬름/벨트: {white}원거리 공격 방어 +30\n{green}갑옷/장화: {white}원거리 공격 방어 +30{white}\n{green}무기/장갑: {white}밀쳐냄\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-8{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 30 Obrona przeciwko pociskom\n{green}Hełmy/Pasy: {white} 30 Obrona przeciwko pociskom\n{green}Pancerz/Buty: {white} 30 Obrona przeciwko pociskom\n{green}Broń:Broń/G  n{turquoise}Rune Podgląd:\n\n{white}(Niskie punkty {blue}-8{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 30 Defesa vs. Míssil\n{green}Elmes/Cintos: {white} 30 Defesa vs. Míssil\n{green}Armaduras/Botas: {white} 30 Defesa vs. Míssil\n{green}Armas/Luvas: {white}Knockback\nn{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-8{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 30 Защита против ракет\n{green}Шлемы/ремни: {white} 30 Защита против ракет\n{green}Броня/обувь: {white} 30 Защита против ракет\n{green}Оружие/перчатки: {white}Отбрасывание\nn{turquoise}Rune Preview:\n\n{white}(Низкие баллы {blue}-8{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 30 防御与导弹\n{green}头盔/腰带：{white} 30 防御与导弹\n{green}盔甲/靴子：{white} 30 防御与导弹\n{green}武器/手套：{white}Knockback\nn{turquoise}Rune 预览：\n\n{white}（低点 {blue}-8{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 30 防禦與導彈\n{green}頭盔/腰帶：{white} 30 防禦與導彈\n{green}盔甲/靴子：{white} 30 防禦與導彈\n{green}武器/手套：{white}Knockback\nn{turquoise}Rune 預覽：\n\n{white}（低點 {blue}-8{white}）\n",
            }
        },
        {
            code = "Z13",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Regeneriere Mana 15%\n{green}Helme/Gürtel: {white}Regeneriere Mana 10%\n{green}Rüstungen/Stiefel: {white}Regeneriere Mana 10%\n{green}Waffen/Handschuhe: {white}-25% Zielverteidigung\nÿcRune Preview:\n\n{white}(Niedrig {blue}-16{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Regenerate Mana 15%\n{green}Helms/Belts: {white}Regenerate Mana 10%\n{green}Armors/Boots: {white}Regenerate Mana 10%\n{green}Weapons/Gloves: {white}-25% Target Defense\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-16{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Regenerar maná 15 %\n{green}Yelmos/Cinturones: {white}Regenerar maná 10 %\n{green}Armaduras/botas: {white}Regenerar maná 10 %\n{green}Armas/guantes: {white}-25 %cune Defense  Vista previa:\n\n{white}(Puntos bajos {blue}-16{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Regenerar maná 15 %\n{green}Yelmos/Cinturones: {white}Regenerar maná 10 %\n{green}Armaduras/botas: {white}Regenerar maná 10 %\n{green}Armas/guantes: {white}-25 %cune Defense  Vista previa:\n\n{white}(Puntos bajos {blue}-16{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Rigenera mana 15%\n{green}Elmi/Cinture: {white}Rigenera mana 10%\n{green}Armature/Stivali: {white}Rigenera mana 10%\n{green}Armi/Guanti: {white}-25%Difesa bersaglio{white}-25%cNRune  Anteprima:\n\n{white}(Punti bassi {blue}-16{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Régénérer le mana 15%\n{green}Casques/Ceintures: {white}Régénérer le mana 10%\n{green}Armures/Bottes: {white}Régénérer le mana 10%\n{green}Armes/Gants: {white}-25% Défense de cible\nÿc  Aperçu:\n\n{white}(Points bas {blue}-16{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Regenerate Mana 15%\n{green}Helms/Belts: {white}Regenerate Mana 10%\n{green}Armors/Boots: {white}Regenerate Mana 10%\n{green}Weapons/Gloves: ÿcune0-25% ターゲット防御 プレビュー:\n\n{white}(Low Points {blue}-16{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}마나 재생 +15%\n{green}헬름/벨트: {white}마나 재생 +10%\n{green}갑옷/장화: {white}마나 재생 +10%{white}\n{green}무기/장갑: {white}대상 방어력 -25%\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-16{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Regeneracja many 15%\n{green}Hełmy/Pasy: {white}Regeneracja many 10%\n{green}Pancerz/Buty: {white}Regeneracja many 10%\n{green}-25% broni ÿcG  Podgląd:\n\n{white}(Niskie punkty {blue}-16{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Regenerar Mana 15%\n{green}Capacetes/Cintos: {white}Regenerar Mana 10%\n{green}Armaduras/Botas: {white}Regenerar Mana 10%\n{green}Armas/Luvas: {white}-25% Defesa do Alvo\n  Visualização:\n\n{white}(Low Points {blue}-16{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Регенерация маны 15%\n{green}Шлемы/ремни: {white}Регенерация маны 10%\n{green}Доспехи/обувь: {white}Регенерация маны 10%\n{green}Оружие/перчатки: {white}\n{green} Защита цели  Предварительный просмотр:\n\n{white}(Низкие баллы {blue}-16{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个移除器类型\n\n{green}盾牌/珠宝：{white}Regenerate Mana 15%\n{green}Helms/Belts：{white}Regenerate Mana 10%\n{green}Armors/Boots：{white}Regenerate Mana 10%\n{green}武器/手套：{white}-25% 目标\n 预览：\n\n{white}（低分 {blue}-16{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個移除器類型\n\n{green}盾牌/珠寶：{white}Regenerate Mana 15%\n{green}Helms/Belts：{white}Regenerate Mana 10%\n{green}Armors/Boots：{white}Regenerate Mana 10%\n{green}武器/手套：{white}-25% 目標\n 預覽：\n\n{white}（低分 {blue}-16{white}）\n",
            }
        },
        {
            code = "Z14",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+15% erlittener Schaden geht in Mana\n{green}Helme/Gürtel: {white}+10% erlittener Schaden geht in Mana\n{green}Rüstungen/Stiefel: {white}+10% erlittener Schaden geht in Mana\nn{green}Waffen/Handschuhe: {white}+6 maximaler Schaden\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-32{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+15% Damage Taken Goes to Mana\n{green}Helms/Belts: {white}+10% Damage Taken Goes to Mana\n{green}Armors/Boots: {white}+10% Damage Taken Goes to Mana\n{green}Weapons/Gloves: {white}+6 to Maximum Damage\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-32{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 15 % del daño recibido va a maná\n{green}Yelmos/cinturones: {white} 10 % del daño recibido va a maná\n{green}Armaduras/botas: {white} 10 % del daño recibido va a maná\nn{green}Armas/guantes: {white} 6 al daño máximo\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-32{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 15 % del daño recibido va a maná\n{green}Yelmos/cinturones: {white} 10 % del daño recibido va a maná\n{green}Armaduras/botas: {white} 10 % del daño recibido va a maná\nn{green}Armas/guantes: {white} 6 al daño máximo\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-32{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 15% dei danni subiti va a Mana\n{green}Elmi/Cinture: {white} 10% dei danni subiti va a Mana\n{green}Armature/Stivali: {white} 10% dei danni subiti va a Mana\nn{green}Armi/Guanti: da {white} 6 a danno massimo\n{turquoise}Rune Anteprima:\n\n{white}(Punti bassi {blue}-32{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 15% de dégâts subis vont au mana\n{green}Casques/ceintures: {white} 10% de dégâts subis vont au mana\n{green}Armures/bottes: {white} 10% de dégâts subis vont au mana\nn{green}Armes/Gants: {white} 6 aux dégâts maximum\n{turquoise}Rune Preview:\n\n{white}(Points bas {blue}-32{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 15% 被ダメージがマナ\n{green}Helms/Belts: {white} 10% 被ダメージが Mana\n{green}Armors/Boots: {white} 10% 被ダメージが Mana\nn{green}Weapons/Gloves: {white} 6 から最大ダメージ\n{turquoise}Rune プレビュー:\n\n{white}(Low Points {blue}-32{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}받는 피해의 15%만큼 마나 회복\n{green}헬름/벨트: {white}받는 피해의 10%만큼 마나 회복\n{green}갑옷/장화: {white}받는 피해의 10%만큼 마나 회복{white}\n{green}무기/장갑: {white}최대 피해 +6\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-32{white})\n",
                plPL = "{tan}Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 15% otrzymanych obrażeń przechodzi do many\n{green}Hełmy/pasy: {white} 10% otrzymywanych obrażeń przechodzi do many\n{green}Pancerz/Buty: {white} 10% otrzymywanych obrażeń przechodzi do many\nn{green}Bronie/rękawice: {white} 6 do maksymalnych obrażeń\n{turquoise}Rune Podgląd:\n\n{white}(niskie punkty {blue}-32{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 15% do Dano Sofrido vai para Mana\n{green}Helmes/Cintos: {white} 10% do Dano Sofrido vai para Mana\n{green}Armaduras/Botas: {white} 10% do Dano Sofrido vai para Mana\nn{green}Armas/Luvas: {white} 6 ao Dano Máximo\n{turquoise}Rune Preview:\n\n{white}(Baixo Pontos {blue}-32{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 15% получаемого урона переходит в ману\n{green}Шлемы/ремни: {white} 10% получаемого урона переходит в ману\n{green}Доспехи/обувь: {white} 10% получаемого урона переходит в ману\nn{green}Оружие/перчатки: от {white} 6 до максимального урона\n{turquoise}Rune Preview:\n\n{white}(Низкие очки {blue}-32{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 15% 受到的伤害转入法力\n{green}头盔/腰带：{white} 10% 受到的伤害转入法力\n{green}盔甲/靴子：{white} 10% 受到的伤害转入法力\nn{green}武器/手套：{white} 6 至最大伤害\n{turquoise}Rune 预览：\n\n{white}（低分 {blue}-32{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 15% 受到的傷害轉入法力\n{green}頭盔/腰帶：{white} 10% 受到的傷害轉入法力\n{green}盔甲/靴子：{white} 10% 受到的傷害轉入法力\nn{green}武器/手套：{white} 6 至最大傷害\n{turquoise}Rune 預覽：\n\n{white}（低分 {blue}-32{white}）\n",
            }
        },
        {
            code = "Z15",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Giftwiderstand +20%\n{green}Helme/Gürtel: {white}Giftwiderstand +10%\n{green}Rüstungen/Stiefel: {white}Giftwiderstand +10%\n{green}Waffen/Handschuhe: {white}+38 Giftschaden über 5 Sekunden\nn{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-64{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Poison Resist +20%\n{green}Helms/Belts: {white}Poison Resist +10%\n{green}Armors/Boots: {white}Poison Resist +10%\n{green}Weapons/Gloves: {white}+38 Poison Damage over 5 Seconds\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-64{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia al veneno 20 %\n{green}Yelmos/Cinturones: {white}Resistencia al veneno 10 %\n{green}Armaduras/Botas: {white}Resistencia al veneno 10 %\n{green}Armas/Guantes: {white} 58segundos de daño por veneno  n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-64{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia al veneno 20 %\n{green}Yelmos/Cinturones: {white}Resistencia al veneno 10 %\n{green}Armaduras/Botas: {white}Resistencia al veneno 10 %\n{green}Armas/Guantes: {white} 58segundos de daño por veneno  n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-64{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Resiste al veleno del 20%\n{green}Elmi/Cinture: {white}Resiste al veleno del 10%\n{green}Armature/Stivali: {white}Resiste al veleno del 10%\n{green}Armi/Guanti: {white} Danno da veleno superiore a 35 secondi\n{green}  Anteprima n{turquoise}Rune:\n\n{white}(Punti bassi {blue}-64{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white}Résistance au poison 20%\n{green}Casques/Ceintures: {white}Résistance au poison 10%\n{green}Armures/Bottes: {white}Résistance au poison 10%\n{green}Armes/Gants: {white} 38dégâts de poison en 5secondes  n{turquoise}Rune Preview:\n\n{white}(Points bas {blue}-64{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Poison Resist 20%\n{green}Helms/Belts: {white}Poison Resist 10%\n{green}Armors/Boots: {white}Poison Resist 10%\n{green}Weapons/Gloves: {white} 38 Poison Damage over 5 Seconds  n{turquoise}Rune プレビュー:\n\n{white}(Low Points {blue}-64{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}독 저항 +20%\n{green}헬름/벨트: {white}독 저항 +10%\n{green}갑옷/장화: {white}독 저항 +10%{white}\n{green}무기/장갑: {white}독 피해 +38(5초에 걸쳐)\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-64{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Odporność na truciznę 20%\n{green}Hełmy/Pasy: {white}Odporność na truciznę 10%\n{green}Pancerz/Buty: {white}Odporność na truciznę 10%\n{green}Odporność na truciznę {white} 38 sekund:  n{turquoise}Rune Podgląd:\n\n{white}(niskie punkty {blue}-64{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Resistir a Veneno 20%\n{green}Elmos/Cintos: {white}Resistir a Veneno 10%\n{green}Armaduras/Botas: {white}Resistir a Veneno 10%\n{green}Armas/Luvas: {white} 38 Dano a Veneno em 5 segundos\nn{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-64{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Сопротивление яду 20%\n{green}Шлемы/ремни: {white}Сопротивление яду 10%\n{green}Доспехи/обувь: {white}Сопротивление яду 10%\n{green}Оружие/перчатки: {white} 38 Seconds Poison Damage  n{turquoise}Rune Preview:\n\n{white}(Низкие баллы {blue}-64{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green} 盾牌/珠宝：{white} 抗毒 20%\n{green} 头盔/腰带：{white} 抗毒 10%\n{green} 盔甲/靴子：{white} 抗毒 10%\n{green}武器/手套：{white} 38 秒以上的毒伤害 n{turquoise}Rune 预览：\n\n{white}（低点 {blue}-64{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green} 盾牌/珠寶：{white} 抗毒 20%\n{green} 頭盔/腰帶：{white} 抗毒 10%\n{green} 盔甲/靴子：{white} 抗毒 10%\n{green}武器/手套：{white} 38 秒以上的毒傷害 n{turquoise}Rune 預覽：\n\n{white}（低點 {blue}-64{white}）\n",
            }
        },
        {
            code = "Z16",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Feuerresistenz +20%\n{green}Helme/Gürtel: {white}Feuerresistenz +10%\n{green}Rüstungen/Stiefel: {white}Feuerresistenz +10%\n{green}Waffen/Handschuhe: {white}+3-15 Feuerschaden\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-128{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Fire Resist +20%\n{green}Helms/Belts: {white}Fire Resist +10%\n{green}Armors/Boots: {white}Fire Resist +10%\n{green}Weapons/Gloves: {white}Adds 3-15 Fire Damage\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-128{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia al fuego 20%\n{green}Yelmos/Cinturones: {white}Resistencia al fuego 10%\n{green}Armaduras/Botas: {white}Resistencia al fuego 10%\n{green}Armas/Guantes: {white}Agrega 3-15NR de daño por fuego  Vista previa:\n\n{white}(Puntos bajos {blue}-128{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia al fuego 20%\n{green}Yelmos/Cinturones: {white}Resistencia al fuego 10%\n{green}Armaduras/Botas: {white}Resistencia al fuego 10%\n{green}Armas/Guantes: {white}Agrega 3-15NR de daño por fuego  Vista previa:\n\n{white}(Puntos bajos {blue}-128{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di dispositivo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Resistenze al fuoco 20%\n{green}Elmi/Cinture: {white}Resistenze al fuoco 10%\n{green}Armature/Stivali: {white}Resiste al fuoco 10%\n{green}Armi/Guanti: {white}Nrdanni 3n\n\n\nFire aggiunti 3  Anteprima:\n\n{white}(Punti bassi {blue}-128{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Résistance au feu 20%\n{green}Casques/Ceintures: {white}Résistance au feu 10%\n{green}Armures/Bottes: {white}Résistance au feu 10%\n{green}Armes/Gants: {white}Ajoute 3 à 15dégâts de feu\nÿc  Aperçu:\n\n{white}(Points bas {blue}-128{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry:{white}Fire Resist 20%\n{green}Helms/Belts:{white}Fire Resist 10%\n{green}Armors/Boots:{white}Fire Resist 10%\n{green}Weapons/Gloves:{white}NR 3-15 Fire Damageを追加\nÿc プレビュー:\n\n{white}(Low Points {blue}-128{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}화염 저항 +20%\n{green}헬름/벨트: {white}화염 저항 +10%\n{green}갑옷/장화: {white}화염 저항 +10%{white}\n{green}무기/장갑: {white}화염 피해 3-15 추가\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-128{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Odporność na ogień 20%\n{green}Hełmy/Pasy: {white}Odporność na ogień 10%\n{green}Pancerze/Buty: {white}Odporność na ogień 10%\n{green}Broń{blue}-150obrażenia  Podgląd:\n\n{white}(Niskie punkty {blue}-128{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Resistência ao Fogo 20%\n{green}Capacetes/Cintos: {white}Resistência ao Fogo 10%\n{green}Armaduras/Botas: {white}Resistência ao Fogo 10%\n{green}Armas/Luvas: {white}Adiciona 3-15 Dano de Fogo\n  Visualização:\n\n{white}(Low Points {blue}-128{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Сопротивление огню 20%\n{green}Шлемы/пояса: {white}Сопротивление огню 10%\n{green}Доспехи/обувь: {white}Сопротивление огню 10%\n{green}Оружие/перчатки: NR1D Damune\n{white}5 Увеличивает урон от огня 3-10  Предварительный просмотр:\n\n{white}(Низкие баллы {blue}-128{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}防火 20%\n{green}头盔/腰带：{white}防火 10%\n{green}盔甲/靴子：{white}防火 10%\n{green}武器/手套：{white}增加 3-15 火焰伤害\n 预览：\n\n{white}（低分 {blue}-128{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}防火 20%\n{green}頭盔/腰帶：{white}防火 10%\n{green}盔甲/靴子：{white}防火 10%\n{green}武器/手套：{white}增加 3-15 火焰傷害\n 預覽：\n\n{white}（低分 {blue}-128{white}）\n",
            }
        },
        {
            code = "Z17",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Blitzwiderstand +20%\n{green}Helme/Gürtel: {white}Blitzwiderstand +10%\n{green}Rüstungen/Stiefel: {white}Blitzwiderstand +10%\n{green}Waffen/Handschuhe: {white}+1-25 Blitzschaden\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-256{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Lightning Resist +20%\n{green}Helms/Belts: {white}Lightning Resist +10%\n{green}Armors/Boots: {white}Lightning Resist +10%\n{green}Weapons/Gloves: {white}Adds 1-25 Lightning Damage\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-256{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia a los rayos 20 %\n{green}Yelmos/Cinturones: {white}Resistencia a los rayos 10 %\n{green}Armaduras/Botas: {white}Resistencia a los rayos 10 %\n{green}Armas/Guantes: {white}Agrega 1-25cNR de daño por rayos  Vista previa:\n\n{white}(Puntos bajos {blue}-256{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Resistencia a los rayos 20 %\n{green}Yelmos/Cinturones: {white}Resistencia a los rayos 10 %\n{green}Armaduras/Botas: {white}Resistencia a los rayos 10 %\n{green}Armas/Guantes: {white}Agrega 1-25cNR de daño por rayos  Vista previa:\n\n{white}(Puntos bajos {blue}-256{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Resistenza ai fulmini del 20%\n{green}Elmi/Cinture: {white}Resistenza ai fulmini del 10%\n{green}Armature/Stivali: {white}Resistenza ai fulmini del 10%\n{green}Armi/Guanti: ÿ25NRi danni: ÿ25ÿAggiunta 1 fulmine  Anteprima:\n\n{white}(Punti bassi {blue}-256{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Résistance à la foudre 20%\n{green}Casques/Ceintures: {white}Résistance à la foudre 10%\n{green}Armures/Bottes: {white}Résistance à la foudre 10%\n{green}Armes/Gants: {white}Ajoute 1 à 25dégâts de foudre\nÿc  Aperçu:\n\n{white}(Points bas {blue}-256{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Lightning Resist 20%\n{green}Helms/Belts: {white}Lightning Resist 10%\n{green}Armors/Boots: {white}Lightning Resist 10%\n{green}Weapons/Gloves: {white}Adds 1-25 Lightning Damage\n\n プレビュー:\n\n{white}(Low Points {blue}-256{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}번개 저항 +20%\n{green}헬름/벨트: {white}번개 저항 +10%\n{green}갑옷/장화: {white}번개 저항 +10%{white}\n{green}무기/장갑: {white}번개 피해 1-25 추가\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-256{white})\n{tan}오르트 {gold}제거기\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Odporność na Błyskawicę 20%\n{green}Hełmy/Pasy: {white}Odporność na Błyskawice 10%\n{green}Pancerze/Buty: {white}Odporność na Błyskawice 10%\n{green}Broń przeciwbłyskawiczna: 1-25G  Podgląd:\n\n{white}(niskie punkty {blue}-256{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Resistência a raios 20%\n{green}Capacetes/Cintos: {white}Resistência a raios 10%\n{green}Armaduras/Botas: {white}Resistência a raios 10%\n{green}Armas/Luvas: {white}Adiciona 1-25  Visualização:\n\n{white}(Pontos baixos {blue}-256{white})\n",
                ruRU = "{tan}Только куб для смены на следующий тип ремувера\n\n{green}Щиты/украшения: {white}Сопротивление молнии 20%\n{green}Шлемы/ремни: {white}Сопротивление молнии 10%\n{green}Доспехи/обувь: {white}Сопротивление молнии 10%\n{green}Оружие/перчатки: {white}Урон от молнии {white}25Добавки {white}  Предварительный просмотр:\n\n{white}(Низкие точки {blue}-256{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}Lightning Resist 20%\n{green}头盔/腰带：{white}Lightning Resist 10%\n{green}Armors/Boots：{white}Lightning Resist 10%\n{green}武器/手套：{white}NR增加1-25闪电伤害 预览：\n\n{white}（低点 {blue}-256{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}Lightning Resist 20%\n{green}頭盔/腰帶：{white}Lightning Resist 10%\n{green}Armors/Boots：{white}Lightning Resist 10%\n{green}武器/手套：{white}NR增加1-25閃電傷害 預覽：\n\n{white}（低點 {blue}-256{white}）\n",
            }
        },
        {
            code = "Z18",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Kältewiderstand +20%\n{green}Helme/Gürtel: {white}Kältewiderstand +10%\n{green}Rüstungen/Stiefel: {white}Kältewiderstand +10%\n{green}Waffen/Handschuhe: {white}+2-7 Kälteschaden\n{turquoise}Rune Preview:\n\n{white}(Niedrig {blue}-512{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Cold Resist +20%\n{green}Helms/Belts: {white}Cold Resist +10%\n{green}Armors/Boots: {white}Cold Resist +10%\n{green}Weapons/Gloves: {white}Adds 2-7 Cold Damage\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-512{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyería: {white}Resistencia al frío 20 %\n{green}Yelmos/Cinturones: {white}Resistencia al frío 10 %\n{green}Armaduras/Botas: {white}Resistencia al frío 10 %\n{green}Armas/Guantes: {white}Agrega 2-7NR de daño por frío  Vista previa:\n\n{white}(Puntos bajos {blue}-512{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyería: {white}Resistencia al frío 20 %\n{green}Yelmos/Cinturones: {white}Resistencia al frío 10 %\n{green}Armaduras/Botas: {white}Resistencia al frío 10 %\n{green}Armas/Guantes: {white}Agrega 2-7NR de daño por frío  Vista previa:\n\n{white}(Puntos bajos {blue}-512{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Cold Resist 20%\n{green}Elmi/Cinture: {white}Cold Resist 10%\n{green}Armature/Stivali: {white}Cold Resist 10%\n{green}Armi/Guanti: {white} Cold Damage Aggiunge n2  Anteprima:\n\n{white}(Punti bassi {blue}-512{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Résistance au froid 20%\n{green}Casques/Ceintures: {white}Résistance au froid 10%\n{green}Armures/Bottes: {white}Résistance au froid 10%\n{green}Armes/Gants: {white}Ajoute 2 à 7dégâts de Coldune\n{white}  Aperçu:\n\n{white}(Points bas {blue}-512{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Cold Resist 20%\n{green}Helms/Belts: {white}Cold Resist 10%\n{green}Armors/Boots: {white}Cold Resist 10%\n{green}Weapons/Gloves: {white}追加 ÿc NR 冷気ダメージ\n プレビュー:\n\n{white}(Low Points {blue}-512{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}냉기 저항 +20%\n{green}헬름/벨트: {white}냉기 저항 +10%\n{green}갑옷/장화: {white}냉기 저항 +10%{white}\n{green}무기/장갑: {white}냉기 피해 2-7 추가\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-512{white})\n{tan}주울 {gold}제거기\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Odporność na zimno 20%\n{green}Hełmy/Pasy: {white}Odporność na zimno 10%\n{green}Zbroje/Buty: {white}Odporność na zimno 10%\n{green}Broń {green}Uzbrojenie/Rękawice:  Podgląd:\n\n{white}(niskie punkty {blue}-512{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Resistência ao Frio 20%\n{green}Capacetes/Cintos: {white}Resistência ao Frio 10%\n{green}Armaduras/Botas: {white}Resistência ao Frio 10%\n{green}Armas/Luvas: {white}Adiciona 2-7 Dano ao Frio\n{turquoise}Rune  Visualização:\n\n{white}(Low Points {blue}-512{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Сопротивление холоду 20%\n{green}Шлемы/ремни: {white}Сопротивление холоду 10%\n{green}Броня/Ботинки: {white}Сопротивление холоду 10%\n{green}Оружие/перчатки: {white}Урон 2-7 холода  Предварительный просмотр:\n\n{white}(Низкие баллы {blue}-512{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}Cold Resist 20%\n{green}头盔/腰带：{white}Cold Resist 10%\n{green}Armors/Boots：{white}Cold Resist 10%\n{green}NR武器/手套：{white} 增加 2-7 伤害\nÿc 预览：\n\n{white}（低分 {blue}-512{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}Cold Resist 20%\n{green}頭盔/腰帶：{white}Cold Resist 10%\n{green}Armors/Boots：{white}Cold Resist 10%\n{green}NR武器/手套：{white} 增加 2-7 傷害\nÿc 預覽：\n\n{white}（低分 {blue}-512{white}）\n",
            }
        },
        {
            code = "Z19",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Dornen: 14\n{green}Helme/Gürtel: {white}Dornen: 14\n{green}Rüstungen/Stiefel: {white}Dornen: 14\n{green}Waffen/Handschuhe: {white}5% Lebenraub\n{turquoise}Rune Preview:\n{white}(Niedrig {blue}-1024{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Thorns: +14\n{green}Helms/Belts: {white}Thorns: +14\n{green}Armors/Boots: {white}Thorns: +14\n{green}Weapons/Gloves: {white}5% Life Stolen Per Hit\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-1024{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Espinas: 14\n{green}Yelmos/Cinturones: {white}Espinas: 14\n{green}Armaduras/Botas: {white}Espinas: 14\n{green}Armas/Guantes: {white}5% Vida robada por golpe\nRVista previa:\n{turquoise} Por golpe\n{white}(Puntos bajos {blue}-1024{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Espinas: 14\n{green}Yelmos/Cinturones: {white}Espinas: 14\n{green}Armaduras/Botas: {white}Espinas: 14\n{green}Armas/Guantes: {white}5% Vida robada por golpe\nRVista previa:\n{turquoise} Por golpe\n{white}(Puntos bajos {blue}-1024{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Spine: 14\n{green}Elmi/Cinture: {white}Spine: 14\n{green}Armature/Stivali: {white}Spine: 14\n{green}Armi/Guanti: {white}5% Life Stolen Perune Hit\n{turquoise}R Preview:\n{turquoise}R Hits:  n\n{white}(Punti bassi {blue}-1024{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Épines: 14\n{green}Casques/Ceintures: {white}Épines: 14\n{green}Armures/Bottes: {white}Épines: 14\n{green}Armes/Gants: {white}5% de vie volée par coup:\n{turquoise}Rune Preview  n\n{white}(Points bas {blue}-1024{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Thorns: 14\n{green}Helms/Belts: {white}Thorns: 14\n{green}Armors/Boots: {white}Thorns: 14\n{green}Weapons/Gloves: {white}NR\n\nÿcune プレビュー:  n\n{white}(低点{blue}-1024{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}가시 피해 14\n{green}헬름/벨트: {white}가시 피해 14\n{green}갑옷/장화: {white}가시 피해 14{white}\n{green}무기/장갑: {white}적중당 생명력 5% 훔침\n{turquoise}룬 미리 보기:\n\n{white}(하급 점수 {blue}-1024{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Thorns: 14\n{green}Hełmy/Pasy: {white}Thorns: 14\n{green}Zbroje/Buty: {white}Thorns: 14\n{green}Podgląd broni ÿNRune\n  n\n{white}(Niskie punkty {blue}-1024{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Espinhos: 14\n{green}Capacetes/Cintos: {white}Espinhos: 14\n{green}Armaduras/Botas: {white}Espinhos: 14\n{green}Armas/Luvas: {white}5% Vida Roubada por Acerto\n{turquoise}R Visualização:\nn\n{white}(Pontos baixos {blue}-1024{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Thorns: 14\n{green}Шлемы/пояса: {white}Thorns: 14\n{green}Доспехи/ботинки: {white}Thorns: 14\n{green}Оружие/перчатки: {white}5% Life Stolen Per Hitune\n{green}  n\n{white}(Низкие точки {blue}-1024{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}Shields/Jewelry：{white}Thorns：14\n{green}Helms/Belts：{white}Thorns：14\n{green}Armors/Boots：{white}Thorns：14\n{green}Weapons/Gloves：{white}5% 每次命中偷取生命\nÿc  n\n{white}（低点 {blue}-1024{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}Shields/Jewelry：{white}Thorns：14\n{green}Helms/Belts：{white}Thorns：14\n{green}Armors/Boots：{white}Thorns：14\n{green}Weapons/Gloves：{white}5% 每次命中偷取生命\nÿc  n\n{white}（低點 {blue}-1024{white}）\n",
            }
        },
        {
            code = "Z20",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Schaden um 7 reduziert\n{green}Helme/Gürtel: {white}Schaden um 4 reduziert\n{green}Rüstungen/Stiefel: {white}Schaden um 4 reduziert\n{green}Waffen/Handschuhe: {white}+9 minimalen Schaden\n{turquoise}RunePreview :\n\n{white}(Mittel {blue}-1{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Damage Reduced by 7\n{green}Helms/Belts: {white}Damage Reduced by 4\n{green}Armors/Boots: {white}Damage Reduced by 4\n{green}Weapons/Gloves: {white}+9 to Minimum Damage\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-1{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño reducido en 7\n{green}Yelmos/Cinturones: {white}Daño reducido en 4\n{green}Armaduras/Botas: {white}Daño reducido en 4\n{green}Armas/Guantes: {white} 9 a daño mínimo NRuneview  :\n\n{white}(Puntos medios {blue}-1{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño reducido en 7\n{green}Yelmos/Cinturones: {white}Daño reducido en 4\n{green}Armaduras/Botas: {white}Daño reducido en 4\n{green}Armas/Guantes: {white} 9 a daño mínimo NRuneview  :\n\n{white}(Puntos medios {blue}-1{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Danni ridotti di 7\n{green}Elmi/Cinture: {white}Danni ridotti di 4\n{green}Armature/Stivali: {white}Danni ridotti di 4\n{green}Armi/Guanti: {white} 9 a danno minimo\n  :\n\n{white}(Punti medi {blue}-1{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Dégâts réduits de 7\n{green}Casques/Ceintures: {white}Dégâts réduits de 4\n{green}Armures/Bottes: {white}Dégâts réduits de 4\n{green}Armes/Gants: {white} 9au minimum de dégâts\n{turquoise}Runeprévisualisation  :\n\n{white}(Mid Points {blue}-1{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Damage が 7 減少\n{green}Helms/Belts: {white}Damage が 4 減少\n{green}Armors/Boots: {white}Damage が 4 減少\n{green}Weapons/Gloves: ÿNRc0 9 から最小ダメージのプレビューシーン\nÿ  :\n\n{white}(中間点{blue}-1{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}피해 7 감소\n{green}헬름/벨트: {white}피해 4 감소\n{green}갑옷/장화: {white}피해 4 감소{white}\n{green}무기/장갑: {white}최소 피해 +9\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-1{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Obrażenia zmniejszone o 7\n{green}Hełmy/Pasy: {white}Obrażenia zmniejszone o 4\n{green}Pancerze/Buty: {white}Obrażenia zmniejszone o 4\n{white}c2Uszkodzenia  :\n\n{white}(Punkty środkowe {blue}-1{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Dano Reduzido em 7\n{green}Elmos/Cintos: {white}Dano Reduzido em 4\n{green}Armaduras/Botas: {white}Dano Reduzido em 4\n{green}Armas/Luvas: {white} 9 ao Dano Mínimo Visualização\n{turquoise}  :\n\n{white}(Pontos médios {blue}-1{white})\n",
                ruRU = "{tan}Cube один, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Урон уменьшен на 7\n{green}Шлемы/ремни: {white}Урон уменьшен на 4\n{green}Доспехи/ботинки: {white}Урон уменьшен на 4\n{green}Оружие/перчатки: {white} 9 до минимального урона\nПредварительный просмотрÿ  :\n\n{white}(Средние точки {blue}-1{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}伤害减少 7\n{green}头盔/腰带：{white}伤害减少 4\n{green}盔甲/靴子：{white}伤害减少 4\n{green}武器/手套：{white} 9 至最低伤害\nÿc  :\n\n{white}(中间点 {blue}-1{white})\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}傷害減少 7\n{green}頭盔/腰帶：{white}傷害減少 4\n{green}盔甲/靴子：{white}傷害減少 4\n{green}武器/手套：{white} 9 至最低傷害\nÿc  :\n\n{white}(中間點 {blue}-1{white})\n",
            }
        },
        {
            code = "Z21",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}20% schnellere Blockrate\n{green}Helme/Gürtel: {white}10% schnellere Erholung\n{green}Rüstungen/Stiefel: {white}10% schnellere Erholung\n{green}Waffen/Handschuhe: {white}+10% Angriffstempo\n{turquoise}Rune-Vorschau:\n\n{white}(Mittel {blue}-2{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}20% Faster Block Rate\n{green}Helms/Belts: {white}10% Faster Hit Recovery\n{green}Armors/Boots: {white}10% Faster Hit Recovery\n{green}Weapons/Gloves: {white}10% Increased Attack Speed\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-2{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}20 % Tasa de bloqueo más rápida\n{green}Cinturones: {white}10 % Recuperación de golpes más rápida\n{green}Armaduras/Botas: {white}10 % Recuperación de golpes más rápida\n{green}Armas/Guantes: {white}10 % Velocidad de ataque aumentada  \n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-2{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}20 % Tasa de bloqueo más rápida\n{green}Cinturones: {white}10 % Recuperación de golpes más rápida\n{green}Armaduras/Botas: {white}10 % Recuperación de golpes más rápida\n{green}Armas/Guantes: {white}10 % Velocidad de ataque aumentada  \n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-2{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di dispositivo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}20% Tasso di blocco più rapido\n{green}Elmi/Cinture: {white}10% Recupero del colpo più rapido\n{green}Armature/Stivali: {white}10% Recupero del colpo più rapido\n{green}Armi/Guanti: {white}10% Velocità d'attacco aumentata  \n{turquoise}Rune Anteprima:\n\n{white}(Punti medi {blue}-2{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}20% de taux de blocage plus rapide\n{green}Casques/Ceintures: {white}10% de récupération de coup plus rapide\n{green}Armures/bottes: {white}10% de récupération de coup plus rapide\n{green}Armes/Gants: {white}10% de vitesse d'attaque accrue  \n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-2{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}20% 高速ブロック率\n{green}Helms/Belts: {white}10% 高速ヒット回復\n{green}Armors/Boots: {white}10% 高速ヒット回復\n{green}Weapons/Gloves: {white}10% 攻撃速度増加 \n{turquoise}Rune プレビュー:\n\n{white}(中間点 {blue}-2{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}막기 속도 +20%\n{green}헬름/벨트: {white}타격 회복 속도 +10%\n{green}갑옷/장화: {white}타격 회복 속도 +10%{white}\n{green}무기/장갑: {white}공격 속도 +10%\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-2{white})\n",
                plPL = "ÿC7 sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}20% szybsze blokowanie\n{green}Hełmy/pasy: {white}10% szybsze odzyskiwanie trafień\n{green}Pancerz/Buty: {white}10% Szybsze odzyskiwanie trafień\n{green}Wzrost prędkości ataku/c010%  \n{turquoise}Rune Podgląd:\n\n{white}(Punkty środkowe {blue}-2{white})\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}20% Taxa de Bloqueio Mais Rápida\n{green}Capacetes/Cintos: {white}10% Recuperação de Acertos Mais Rápida\n{green}Armaduras/Botas: {white}10% Recuperação de Acertos Mais Rápida\n{green}Armas/Luvas: {white}10% Maior Velocidade de Ataque  \n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-2{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}20% более высокая скорость блока\n{green}Шлемы/пояса: {white}10% более быстрое восстановление после удара\n{green}Доспехи/обувь: {white}10% более быстрое восстановление после удара\n{green}Оружие/перчатки: {white}10% повышенная скорость атаки  \n{turquoise}Rune Preview:\n\n{white}(Средние точки {blue}-2{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}20% 更快的格挡率\n{green}头盔/腰带：{white}10% 更快的命中恢复\n{green}盔甲/靴子：{white}10% 更快的命中恢复\n{green}武器/手套：{white}10% 提高攻击速度 \n{turquoise}Rune 预览：\n\n{white}（中点 {blue}-2{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}20% 更快的格擋率\n{green}頭盔/腰帶：{white}10% 更快的命中恢復\n{green}盔甲/靴子：{white}10% 更快的命中恢復\n{green}武器/手套：{white}10% 提高攻擊速度 \n{turquoise}Rune 預覽：\n\n{white}（中點 {blue}-2{white}）\n",
            }
        },
        {
            code = "Z22",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Leben auffüllen +7\n{green}Helme/Gürtel: {white}Leben auffüllen +3\n{green}Rüstungen/Stiefel: {white}Leben auffüllen +3\n{green}Waffen/Handschuhe: {white}Treffer lässt Monster fliehen 25%\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-4{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Replenish Life +7\n{green}Helms/Belts: {white}Replenish Life +3\n{green}Armors/Boots: {white}Replenish Life +3\n{green}Weapons/Gloves: {white}Hit Causes Monster to Flee 25%\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-4{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Reponer vida 7\n{green}Yelmos/Cinturones: {white}Reponer vida 3\n{green}Armaduras/Botas: {white}Reponer vida 3\n{green}Armas/guantes: {white}Golpear hace que el monstruo huya 25%\nRuneview:  \n\n{white}(Puntos medios {blue}-4{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Reponer vida 7\n{green}Yelmos/Cinturones: {white}Reponer vida 3\n{green}Armaduras/Botas: {white}Reponer vida 3\n{green}Armas/guantes: {white}Golpear hace que el monstruo huya 25%\nRuneview:  \n\n{white}(Puntos medios {blue}-4{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Replenish Life 7\n{green}Elmi/Cinture: {white}Replenish Life 3\n{green}Armature/Stivali: {white}Replenish Life 3\n{green}Armi/Guanti: {white}Il colpo fa fuggire il mostro 25%ÿNRcune: Anteprima  \n\n{white}(Punti medi {blue}-4{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Replenish Life 7\n{green}Casques/Ceintures: {white}Replenish Life 3\n{green}Armures/Bottes: {white}Replenish Life 3\n{green}Armes/Gants: {white}Le coup fait fuir le monstre de 25%\n{dark green}perçu NR:  \n\n{white}(Points médians {blue}-4{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Replenish Life 7\n{green}Helms/Belts: {white}Replenish Life 3\n{green}Armors/Boots: {white}Replenish Life 3\n{green}Weapons/Gloves: {white}Hit NR Monster to Flee 25% プレビューcuneÿn:  \n\n{white}(中間点{blue}-4{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}생명력 회복 +7\n{green}헬름/벨트: {white}생명력 회복 +3\n{green}갑옷/장화: {white}생명력 회복 +3{white}\n{green}무기/장갑: {white}적중 시 괴물 도주 +25%\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-4{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Uzupełnij życie 7\n{green}Hełmy/pasy: {white}Uzupełnij życie 3\n{green}Zbroje/Buty: {white}Uzupełnij życie 3\n{green}Przyczyny{green}Przyczyny{white}Rękawice:  \n\n{white}(punkty środkowe {blue}-4{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Reabastecer Vida 7\n{green}Capacetes/Cintos: {white}Reabastecer Vida 3\n{green}Armaduras/Botas: {white}Reabastecer Vida 3\n{green}Armas/Luvas: {white}Acerto Faz com que o Monstro Fuja 25%\nÿ  \n\n{white}(Pontos médios {blue}-4{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Replenish Life 7\n{green}Шлемы/ремни: {white}Replenish Life 3\n{green}Доспехи/обувь: {white}Replenish Life 3\n{green}Оружие/перчатки: {white}Hit заставляет монстра бежать 25%NRcune:ÿ\n  \n\n{white}(Средние точки {blue}-4{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}Shields/Jewelry：{white}Replenish Life 7\n{green}Helms/Belts：{white}Replenish Life 3\n{green}Armors/Boots：{white}Replenish Life 3\n{green}Weapons/Gloves：{white}Hit Causes Monster to Flee 25%\nÿc  \n\n{white}（中点 {blue}-4{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}Shields/Jewelry：{white}Replenish Life 7\n{green}Helms/Belts：{white}Replenish Life 3\n{green}Armors/Boots：{white}Replenish Life 3\n{green}Weapons/Gloves：{white}Hit 導致怪物逃跑預覽：25%\nÿ  \n\n{white}（中點 {blue}-4{white}）\n",
            }
        },
        {
            code = "Z23",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Anforderungen -15%\n{green}Helme/Gürtel: {white}Anforderungen -15%\n{green}Rüstungen/Stiefel: {white}Anforderungen -15%\n{green}Waffen/Handschuhe: {white}Anforderungen -20%\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-8{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Requirements -15%\n{green}Helms/Belts: {white}Requirements -15%\n{green}Armors/Boots: {white}Requirements -15%\n{green}Weapons/Gloves: {white}Requirements -20%\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-8{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Requisitos -15%\n{green}Yelmos/Cinturones: {white}Requisitos -15%\n{green}Armaduras/Botas: {white}Requisitos -15%\n{green}Armas/Guantes: {white}Requisitos -c0%NRuneVista previa:  \n\n{white}(Puntos medios {blue}-8{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Requisitos -15%\n{green}Yelmos/Cinturones: {white}Requisitos -15%\n{green}Armaduras/Botas: {white}Requisitos -15%\n{green}Armas/Guantes: {white}Requisitos -c0%NRuneVista previa:  \n\n{white}(Puntos medios {blue}-8{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Requirements -15%\n{green}Elmi/Cinture: {white}Requirements -15%\n{green}Armature/Stivali: {white}Requirements -15%\n{green}Armi/Guanti: {white}Requirements -20%NR Preview:n{green}NR Preview:n{green}  \n\n{white}(Punti medi {blue}-8{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Exigences -15%\n{green}Casques/Ceintures: {white}Exigences -15%\n{green}Armures/Bottes: {white}Exigences -15%\n{green}Armes/Gants: {white}Exigences -20%\n{turquoise}Rune Preview  \n\n{white}(Points médians {blue}-8{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Requirements -15%\n{green}Helms/Belts: {white}Requirements -15%\n{green}Armors/Boots: {white}Requirements -15%\n{green}Weapons/Gloves: {white}Requirements -20%\n{turquoise}Rune プレビュー:  \n\n{white}(中間点{blue}-8{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}착용 조건 -15%{white}\n{green}무기/장갑: {white}착용 조건 -20%\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-8{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Wymagania -15%\n{green}Hełmy/Pasy: {white}Wymagania -15%\n{green}Pancerze/Buty: {white}Wymagania -15%\n{green}Wymagania Previewc2Weapons: -20G  \n\n{white}(punkty środkowe {blue}-8{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Requisitos -15%\n{green}Capacetes/Cintos: {white}Requisitos -15%\n{green}Armaduras/Botas: {white}Requisitos -15%\n{green}Armas/Luvas: {white}Requisitos -20%\n{turquoise}R Pré-visualização: {white}Requisitos -20%\n{turquoise}R  \n\n{white}(Pontos médios {blue}-8{white})\n",
                ruRU = "{tan}Cube один, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Требования -15%\n{green}Шлемы/ремни: {white}Требования -15%\n{green}Доспехи/обувь: {white}Требования -15%\n{green}Оружие/перчатки: {white}Требования -20%\nÿcune Preview:  \n\n{white}(Средние точки {blue}-8{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}要求 -15%\n{green}头盔/腰带：{white}要求 -15%\n{green}盔甲/靴子：{white}要求 -15%\n{green}武器/手套：{white}要求 -20%\n{turquoise}Rune 预览：  \n\n{white}（中间点 {blue}-8{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}要求 -15%\n{green}頭盔/腰帶：{white}要求 -15%\n{green}盔甲/靴子：{white}要求 -15%\n{green}武器/手套：{white}要求 -20%\n{turquoise}Rune 預覽：  \n\n{white}（中間點 {blue}-8{white}）\n",
            }
        },
        {
            code = "Z24",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+10 Vitalität\n{green}Helme/Gürtel: {white}+10 Vitalität\n{green}Rüstungen/Stiefel: {white}+10 Vitalität\n{green}Waffen/Handschuhe: {white}+10 Vitalität\n{turquoise}RunePreview:\n\n{white}(Mittel {blue}-16{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+10 to Vitality\n{green}Helms/Belts: {white}+10 to Vitality\n{green}Armors/Boots: {white}+10 to Vitality\n{green}Weapons/Gloves: {white}+10 to Vitality\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-16{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Vitalidad\n{green}Yelmos/Cinturones: {white} 10 a Vitalidad\n{green}Armaduras/Botas: {white} 10 a Vitalidad\n{green}Armas/Guantes: {white} 10 a Vitalidad\n{turquoise}Rune Preview:  \n\n{white}(Puntos medios {blue}-16{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Vitalidad\n{green}Yelmos/Cinturones: {white} 10 a Vitalidad\n{green}Armaduras/Botas: {white} 10 a Vitalidad\n{green}Armas/Guantes: {white} 10 a Vitalidad\n{turquoise}Rune Preview:  \n\n{white}(Puntos medios {blue}-16{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: da {white} 10 a Vitality\n{green}Elmi/Cinture: da {white} 10 a Vitality\n{green}Armature/Stivali: da {white} 10 a Vitality\n{green}Armi/Guanti: da {white} 10 a Vitality\n{turquoise}Rune:  \n\n{white}(Punti medi {blue}-16{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 10 à Vitality\n{green}Casques/Ceintures: {white} 10 à Vitality\n{green}Armures/Bottes: {white} 10 à Vitality\n{green}Armes/Gants: {white} 10 à Vitality\n{turquoise}Rune Preview:  \n\n{white}(Mid Points {blue}-16{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 10 to Vitality\n{green}Helms/Belts: {white} 10 to Vitality\n{green}Armors/Boots: {white} 10 to Vitality\n{green}Weapons/Gloves Preview: {white} 10 to Vitality\nÿcune:  \n\n{white}(中間点{blue}-16{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}무기/장갑/갑옷/장화/헬름/벨트/방패/장신구: {white}활력 +10\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-16{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 10 do witalności\n{green}Hełmy/pasy: {white} 10 do witalności\n{green}Zbroje/Buty: {white} 10 do witalności\n{green}Podgląd broni/Rękawiczki:  \n\n{white}(punkty środkowe {blue}-16{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 10 para Vitalidade\n{green}Capacetes/Cintos: {white} 10 para Vitalidade\n{green}Armaduras/Botas: {white} 10 para Vitalidade\n{green}Armas/Luvas: {white} 10 para Vitalidade\n{turquoise}R Visualização:  \n\n{white}(Pontos médios {blue}-16{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 10 к живучести\n{green}Шлемы/ремни: {white} 10 к живучести\n{green}Доспехи/обувь: {white} 10 к живучести\n{green}Оружие/перчатки: {white} 10 к живучести\nÿпредварительный просмотр:  \n\n{white}(Средние точки {blue}-16{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 10 至活力\n{green}头盔/腰带：{white} 10 至活力\n{green}盔甲/靴子：{white} 10 至活力\n{green}武器/手套：{white} 10 至活力\n{turquoise}R  \n\n{white}（中点 {blue}-16{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 10 至活力\n{green}頭盔/腰帶：{white} 10 至活力\n{green}盔甲/靴子：{white} 10 至活力\n{green}武器/手套：{white} 10 至活力\n{turquoise}R  \n\n{white}（中點 {blue}-16{white}）\n",
            }
        },
        {
            code = "Z25",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+10 Energie\n{green}Helme/Gürtel: {white}+10 Energie\n{green}Rüstungen/Stiefel: {white}+10 Energie\n{green}Waffen/Handschuhe: {white}+10 Energie\n{turquoise}RunePreview:\n\n{white}(Mittel {blue}-32{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+10 to Energy\n{green}Helms/Belts: {white}+10 to Energy\n{green}Armors/Boots: {white}+10 to Energy\n{green}Weapons/Gloves: {white}+10 to Energy\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-32{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Energía\n{green}Yelmos/Cinturones: {white} 10 a Energía\n{green}Armaduras/Botas: {white} 10 a Energía\n{green}Armas/Guantes: {white} 10 a Energía\nÿcVista previa de NRune:  \n\n{white}(Puntos medios {blue}-32{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Energía\n{green}Yelmos/Cinturones: {white} 10 a Energía\n{green}Armaduras/Botas: {white} 10 a Energía\n{green}Armas/Guantes: {white} 10 a Energía\nÿcVista previa de NRune:  \n\n{white}(Puntos medios {blue}-32{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 10 a Energia\n{green}Elmi/Cinture: {white} 10 a Energia\n{green}Armature/Stivali: {white} 10 a Energia\n{green}Armi/Guanti: {white} 10 a Energia\n{turquoise}Rune Anteprima:  \n\n{white}(Punti medi {blue}-32{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 10 vers Énergie\n{green}Casques/Ceintures: {white} 10 vers Énergie\n{green}Armures/Bottes: {white} 10 vers Énergie\n{green}Armes/Gants: {white} 10 vers Énergie\n{turquoise}Rune Preview:  \n\n{white}(Mid Points {blue}-32{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 10 を Energy\n{green}Helms/Belts: {white} 10 を Energy\n{green}Armors/Boots: {white} 10 を Energy\n{green}Weapons/Gloves: {white} 10 を Energy\n{turquoise}Rune プレビュー:  \n\n{white}(中間点{blue}-32{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}무기/장갑/갑옷/장화/헬름/벨트/방패/장신구: {white}마력 +10\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-32{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 10 na Energię\n{green}Hełmy/Pasy: {white} 10 na Energię\n{green}Zbroje/Buty: {white} 10 na Energię\n{green}Bronie/Rękawice: nenec0 10 na Energię  \n\n{white}(Punkty środkowe {blue}-32{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 10 para Energia\n{green}Capacetes/Cintos: {white} 10 para Energia\n{green}Armaduras/Botas: {white} 10 para Energia\n{green}Armas/Luvas: {white} 10 para Energia\n{turquoise}Rune Preview:  \n\n{white}(Pontos médios {blue}-32{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы изменить на следующий тип ремувера\n\n{green}Щиты/Ювелирные изделия: {white} 10 на Энергию\n{green}Шлемы/Пояса: {white} 10 на Энергию\n{green}Доспехи/Ботинки: {white} 10 на Энергию\n{green}Оружие/Перчатки: {white} 10 на Энергию\n{turquoise}Rune Preview:  \n\n{white}(Средние точки {blue}-32{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 10 至能源\n{green}头盔/腰带：{white} 10 至能源\n{green}盔甲/靴子：{white} 10 至能源\n{green}武器/手套：{white} 10 至能源\n{turquoise}Rune 预览：  \n\n{white}（中间点 {blue}-32{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 10 至能源\n{green}頭盔/腰帶：{white} 10 至能源\n{green}盔甲/靴子：{white} 10 至能源\n{green}武器/手套：{white} 10 至能源\n{turquoise}Rune 預覽：  \n\n{white}（中間點 {blue}-32{white}）\n",
            }
        },
        {
            code = "Z26",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+10 Geschicklichkeit\n{green}Helme/Gürtel: {white}+10 Geschicklichkeit\n{green}Rüstungen/Stiefel: {white}+10 Geschicklichkeit\n{green}Waffen/Handschuhe: {white}+10 Geschicklichkeit\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-64{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+10 to Dexterity\n{green}Helms/Belts: {white}+10 to Dexterity\n{green}Armors/Boots: {white}+10 to Dexterity\n{green}Weapons/Gloves: {white}+10 to Dexterity\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-64{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Destreza\n{green}Yelmos/Cinturones: {white} 10 a Destreza\n{green}Armaduras/Botas: {white} 10 a Destreza\n{green}Armas/Guantes: \n{white} 10 a Dexterityune Vista previa:  \n\n{white}(Puntos medios {blue}-64{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Destreza\n{green}Yelmos/Cinturones: {white} 10 a Destreza\n{green}Armaduras/Botas: {white} 10 a Destreza\n{green}Armas/Guantes: \n{white} 10 a Dexterityune Vista previa:  \n\n{white}(Puntos medios {blue}-64{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 10 a Destrezza\n{green}Elmi/Cinture: {white} 10 a Destrezza\n{green}Armature/Stivali: {white} 10 a Destrezza\n{green}Armi/Guanti: \n{white}10 a Destrezza  \n\n{white}(Punti medi {blue}-64{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 10 pour Dextérité\n{green}Casques/Ceintures: {white} 10 pour Dextérité\n{green}Armures/Bottes: {white} 10 pour Dextérité\n{green}Armes/Gants: {white} 10 pour Dextérité\n{turquoise}RAperçu:  \n\n{white}(Points médians {blue}-64{white})\n",
                jaJP = "{tan}キューブだけで次のリムーバー タイプに変更\n\n{green}シールド/ジュエリー: {white} 10から器用さ\n{green}ヘルム/ベルト: {white} 10から器用さ\n{green}アーマー/ブーツ: {white} 10から器用さ\n{green}武器/手袋: {white} 10から器用さ\n:  \n\n{white}(中間点{blue}-64{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}무기/장갑/갑옷/장화/헬름/벨트/방패/장신구: {white}민첩 +10\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-64{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 10 na Zręczność\n{green}Hełmy/Pasy: {white} 10 na Zręczność\n{green}Pancerze/Buty: {white} 10 na Zręczność\n{green}{green} ÿPodgląd Zręczności/NRu  \n\n{white}(punkty środkowe {blue}-64{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 10 para Destreza\n{green}Capacetes/Cintos: {white} 10 para Destreza\n{green}Armaduras/Botas: {white} 10 para Destreza\n{green}Armas/Luvas: {white} 10 para Destreza\n{turquoise}R  \n\n{white}(Pontos médios {blue}-64{white})\n",
                ruRU = "{tan}Куб в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/Ювелирные изделия: {white} 10 к Ловкости\n{green}Шлемы/Пояса: {white} 10 к Ловкости\n{green}Доспехи/Ботинки: {white} 10 к Ловкости\n{green}Оружие/Перчатки: {white} 10 к Ловкости\n{green}Оружие/Перчатки: {white} 10 к Ловкости:{white} 10 к Ловкости  \n\n{white}(Средние точки {blue}-64{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 10 至敏捷\n{green}头盔/腰带：{white} 10 至敏捷\n{green}盔甲/靴子：{white} 10 至敏捷\n{green}武器/手套预览：{white} 10 至敏捷\n  \n\n{white}（中间点 {blue}-64{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 10 至敏捷\n{green}頭盔/腰帶：{white} 10 至敏捷\n{green}盔甲/靴子：{white} 10 至敏捷\n{green}武器/手套預覽：{white} 10 至敏捷\n  \n\n{white}（中間點 {blue}-64{white}）\n",
            }
        },
        {
            code = "Z27",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+10 Stärke\n{green}Helme/Gürtel: {white}+10 Stärke\n{green}Rüstungen/Stiefel: {white}+10 Stärke\n{green}Waffen/Handschuhe: {white}+10 Stärke\n{turquoise}RunePreview:\n\n{white}(Mittel {blue}-128{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+10 to Strength\n{green}Helms/Belts: {white}+10 to Strength\n{green}Armors/Boots: {white}+10 to Strength\n{green}Weapons/Gloves: {white}+10 to Strength\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-128{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Fuerza\n{green}Yelmos/Cinturones: {white} 10 a Fuerza\n{green}Armaduras/Botas: {white} 10 a Fuerza\n{green}Armas/Guantes: {white} 10 a Fuerza\nÿcVista previa de NRune:  \n\n{white}(Puntos bajos {blue}-128{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 10 a Fuerza\n{green}Yelmos/Cinturones: {white} 10 a Fuerza\n{green}Armaduras/Botas: {white} 10 a Fuerza\n{green}Armas/Guantes: {white} 10 a Fuerza\nÿcVista previa de NRune:  \n\n{white}(Puntos bajos {blue}-128{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: da {white} 10 a Forza\n{green}Elmi/Cinture: da {white} 10 a Forza\n{green}Armature/Stivali: da {white} 10 a Forza\n{green}Armi/Guanti: {white} 10 a Forza\n{turquoise}Rune Anteprima:  \n\n{white}(Punti bassi {blue}-128{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 10 pour Force\n{green}Casques/Ceintures: {white} 10 pour Force\n{green}Armures/Bottes: {white} 10 pour Force\n{green}Armes/Gants: {white} 10 pour Force\n{turquoise}Rune Preview:  \n\n{white}(Points bas {blue}-128{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 10 から強度\n{green}Helms/Belts: {white} 10 から強度\n{green}Armors/Boots: {white} 10 から強度\n{green}Weapons/Gloves: {white} 10 から強度\n{turquoise}Rune プレビュー:  \n\n{white}(低点{blue}-128{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}무기/장갑/갑옷/장화/헬름/벨트/방패/장신구: {white}힘 +10\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-128{white})\n",
                plPL = "{tan}Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 10 do Wytrzymałości\n{green}Hełmy/Pasy: {white} 10 do Wytrzymałości\n{green}Pancerze/Buty: {white} 10 do Wytrzymałości\n{green}Bronie/Rękawice: nenc0 do 10 do  \n\n{white}(Niskie punkty {blue}-128{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 10 para Força\n{green}Elmos/Cintos: {white} 10 para Força\n{green}Armaduras/Botas: {white} 10 para Força\n{green}Armas/Luvas: {white} 10 para Força\n{turquoise}Rune Preview:  \n\n{white}(Low Points {blue}-128{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы изменить на следующий тип ремувера\n\n{green}Щиты/Ювелирные изделия: {white} 10 до Силы\n{green}Шлемы/Пояса: {white} 10 до Силы\n{green}Доспехи/Ботинки: {white} 10 до Силы\n{green}Оружие/Перчатки: {white} 10 до Силы\n{turquoise}Rune Preview:  \n\n{white}(Низкие точки {blue}-128{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 10 至力量\n{green}头盔/腰带：{white} 10 至力量\n{green}盔甲/靴子：{white} 10 至力量\n{green}武器/手套：{white} 10 至力量\n{turquoise}Rune 预览：  \n\n{white}（低点 {blue}-128{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 10 至力量\n{green}頭盔/腰帶：{white} 10 至力量\n{green}盔甲/靴子：{white} 10 至力量\n{green}武器/手套：{white} 10 至力量\n{turquoise}Rune 預覽：  \n\n{white}（低點 {blue}-128{white}）\n",
            }
        },
        {
            code = "Z28",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+50% mehr Gold\n{green}Helme/Gürtel: {white}+50% mehr Gold\n{green}Rüstungen/Stiefel: {white}+50% mehr Gold\n{green}Waffen/Handschuhe: {white}+75% mehr Gold\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-256{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+50% Extra Gold from Monsters\n{green}Helms/Belts: {white}+50% Extra Gold from Monsters\n{green}Armors/Boots: {white}+50% Extra Gold from Monsters\n{green}Weapons/Gloves: {white}+75% Extra Gold from Monsters\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-256{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 % de oro extra de monstruos\n{green}Yelmos/cinturones: {white} 50 % de oro extra de monstruos\n{green}Armaduras/botas: {white} 50 % de oro extra de monstruos\n{green}Armas/guantes  : {white} 75 % de oro extra de Monsters\n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-256{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 % de oro extra de monstruos\n{green}Yelmos/cinturones: {white} 50 % de oro extra de monstruos\n{green}Armaduras/botas: {white} 50 % de oro extra de monstruos\n{green}Armas/guantes  : {white} 75 % de oro extra de Monsters\n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-256{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 50% di oro extra dai mostri\n{green}Elmi/Cinture: {white} 50% di oro extra dai mostri\n{green}Armature/Stivali: {white} 50% oro extra dai mostri\n{green}Armi/Guanti  : {white} 75% di oro extra da Monsters\n{turquoise}Rune Anteprima:\n\n{white}(Punti medi {blue}-256{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 50% d'or supplémentaire des monstres\n{green}Casques/ceintures: {white} 50% d'or supplémentaire des monstres\n{green}Armures/bottes: {white} 50% d'or supplémentaire des monstres\n{green}Armes/Gants : {white} 75% d'or supplémentaire des monstres\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-256{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}盾/ジュエリー: {white} モンスターから 50% 追加ゴールド\n{green}ヘルム/ベルト: {white} モンスターから 50% 追加ゴールド\n{green}防具/ブーツ: {white} モンスターから 50% 追加ゴールド\n{green}武器/手袋 : {white} モンスターから 75% 追加ゴールド\n{turquoise}Rune プレビュー:\n\n{white}(中間点 {blue}-256{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}골찬 50% 증가\n{green}헬름/벨트: {white}골찬 50% 증가\n{green}갑옷/장화: {white}골찬 50% 증가{white}\n{green}무기/장갑: {white}골찬 75% 증가\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-256{white})\n",
                plPL = "{tan}Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 50% dodatkowego złota z potworów\n{green}Hełmy/pasy: {white} 50% dodatkowego złota z potworów\n{green}Zbroje/Buty: {white} 50% dodatkowego złota z potworów\n{green}Broń/G  : {white} 75% Dodatkowego Złota z Potworów\n{turquoise}Rune Podgląd:\n\n{white}(Mid Punkty {blue}-256{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 50% de Ouro Extra de Monstros\n{green}Elmos/Cintos: {white} 50% de Ouro Extra de Monstros\n{green}Armaduras/Botas: {white} 50% de Ouro Extra de Monstros\n{green}Armas/Luvas  : {white} 75% Extra Gold de Monstros\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-256{white})\n",
                ruRU = "{tan}Один куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 50% дополнительного золота от монстров\n{green}Шлемы/ремни: {white} 50% дополнительного золота от монстров\n{green}Доспехи/обувь: {white} 50% дополнительного золота от монстров\n{green}Оружие/перчатки  : {white} 75% дополнительного золота от монстров\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-256{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 50% 来自怪物的额外金币\n{green}头盔/腰带：{white} 50% 来自怪物的额外金币\n{green} 盔甲/靴子：{white} 50% 来自怪物的额外金币\n{green}武器/手套 ：{white} 75% 来自怪物的额外金币\n{turquoise}Rune 预览：\n\n{white}（中点 {blue}-256{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 50% 來自怪物的額外金幣\n{green}頭盔/腰帶：{white} 50% 來自怪物的額外金幣\n{green} 盔甲/靴子：{white} 50% 來自怪物的額外金幣\n{green}武器/手套 ：{white} 75% 來自怪物的額外金幣\n{turquoise}Rune 預覽：\n\n{white}（中點 {blue}-256{white}）\n",
            }
        },
        {
            code = "Z29",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+30% Verteidigung\n{green}Helme/Gürtel: {white}+20% Verteidigung\n{green}Rüstungen/Stiefel: {white}+20% Verteidigung\n{green}Waffen/Handschuhe: {white}+50 Angriffswert und +40% Schaden an Dämonen\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-512{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+30% Enhanced Defense\n{green}Helms/Belts: {white}+20% Enhanced Defense\n{green}Armors/Boots: {white}+20% Enhanced Defense\n{green}Weapons/Gloves: {white}+50 to Attack Rating and +40% Damage to Demons\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-512{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 30 % de defensa mejorada\n{green}Yelmos/cinturones: {white} 20 % de defensa mejorada\n{green}Armaduras/botas: {white} 20 % de defensa mejorada\n{green}Armas/guantes: {white} 50 de índice de ataque  y 40 % de daño a los demonios\n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-512{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 30 % de defensa mejorada\n{green}Yelmos/cinturones: {white} 20 % de defensa mejorada\n{green}Armaduras/botas: {white} 20 % de defensa mejorada\n{green}Armas/guantes: {white} 50 de índice de ataque  y 40 % de daño a los demonios\n{turquoise}Rune Preview:\n\n{white}(Puntos medios {blue}-512{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 30% Difesa migliorata\n{green}Elmi/Cinture: {white} 20% Difesa migliorata\n{green}Armature/Stivali: {white} 20% Difesa migliorata\n{green}Armi/Guanti: {white} 50 al Rating Attacco  e 40% di danni ai demoni\n{turquoise}Rune Anteprima:\n\n{white}(Punti medi {blue}-512{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 30% de Défense améliorée\n{green}Casques/Ceintures: {white} 20% de Défense améliorée\n{green}Armures/Bottes: {white} 20% de Défense améliorée\n{green}Armes/Gants: {white} 50 au Taux d'attaque  et 40% de dégâts aux démons\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-512{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 30% 防御力強化\n{green}Helms/Belts: {white} 20% 防御力強化\n{green}Armors/Boots: {white} 20% 防御力強化\n{green}Weapons/Gloves: {white} 50 攻撃力 および悪魔への 40% のダメージ\n{turquoise}Rune プレビュー:\n\n{white}(中間点 {blue}-512{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}방어력 +30% 증가\n{green}헬름/벨트: {white}방어력 +20% 증가\n{green}갑옷/장화: {white}방어력 +20% 증가{white}\n{green}무기/장갑: {white}악마에게 주는 피해 +40%, 악마에 대한 명중률 +50\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-512{white})\n",
                plPL = "ÿC7Sam Kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 30% Ulepszona obrona\n{green}Hełmy/Pasy: {white} 20% Ulepszona obrona\n{green}Zbroje/Buty: {white} 20% Ulepszona obrona\n{green} Broń/Rękawice 50 do ataku: ÿ  i 40% Obrażeń Demonom\n{turquoise}Rune Podgląd:\n\n{white}(Mid Punkty {blue}-4{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 30% de Defesa Aprimorada\n{green}Capacetes/Cintos: {white} 20% de Defesa Aprimorada\n{green}Armaduras/Botas: {white} 20% de Defesa Aprimorada\n{green}Armas/Luvas: {white} 50 de Classificação de Ataque  e 40% de Dano aos Demônios\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-512{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 30% усиленной защиты\n{green}Шлемы/пояса: {white} 20% усиленной защиты\n{green}Доспехи/ботинки: {white} 20% усиленной защиты\n{green}Оружие/перчатки: {white} 50 к рейтингу атаки  и 40% урона демонам\n{turquoise}RПредварительный просмотр руны:\n\n{white}(Средние точки {blue}-512{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 30% 增强防御\n{green}头盔/腰带：{white} 20% 增强防御\n{green}盔甲/靴子：{white} 20% 增强防御\n{green}武器/手套：{white} 50 至攻击等级 和 40% 对恶魔的伤害\n{turquoise}Rune 预览：\n\n{white}（中点 {blue}-512{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 30% 增強防禦\n{green}頭盔/腰帶：{white} 20% 增強防禦\n{green}盔甲/靴子：{white} 20% 增強防禦\n{green}武器/手套：{white} 50 至攻擊等級 和 40% 對惡魔的傷害\n{turquoise}Rune 預覽：\n\n{white}（中點 {blue}-512{white}）\n",
            }
        },
        {
            code = "Z30",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Alle Widerstände +22%\n{green}Helme/Gürtel: {white}Alle Widerstände +10%\n{green}Rüstungen/Stiefel: {white}Alle Widerstände +10%\n{green}Waffen/Handschuhe: {white}10% Chance auf offene Wunden\n{turquoise}Rune Preview:\n\n{white}(Mittel {blue}-1024{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}All Resistances +22\n{green}Helms/Belts: {white}All Resistances +10\n{green}Armors/Boots: {white}All Resistances +10\n{green}Weapons/Gloves: {white}10% Chance of Open Wounds\n{turquoise}Rune Preview:\n\n{white}(Mid Points {blue}-1024{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de removedor\n\n{green}Escudos/Joyas: {white}Todas las resistencias 22\n{green}Yelmos/Cinturones: {white}Todas las resistencias 10\n{green}Armaduras/Botas: {white}Todas las resistencias 10\n{green}Armas/Guantes: {white}10% de probabilidad de heridas abiertas\nVista previa de heridas abiertas\n{green}  n\n{white}(Puntos medios {blue}-1024{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de removedor\n\n{green}Escudos/Joyas: {white}Todas las resistencias 22\n{green}Yelmos/Cinturones: {white}Todas las resistencias 10\n{green}Armaduras/Botas: {white}Todas las resistencias 10\n{green}Armas/Guantes: {white}10% de probabilidad de heridas abiertas\nVista previa de heridas abiertas\n{green}  n\n{white}(Puntos medios {blue}-1024{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}All Resistances 22\n{green}Elmi/Cinture: {white}All Resistances 10\n{green}Armature/Stivali: {white}All Resistances 10\n{green}Armi/Guanti: {white}10% Chance of Open Woundune\n{turquoise}R Preview:  n\n{white}(Punti medi {blue}-1024{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white}Toutes les résistances 22\n{green}Casques/Ceintures: {white}Toutes les résistances 10\n{green}Armures/Bottes: {white}Toutes les résistances 10\n{green}Armes/Gants: {white}10% de chances de blessures ouvertes\n{turquoise}Rune Preview:  n\n{white}(Points médians {blue}-1024{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}All Resistances 22\n{green}Helms/Belts: {white}All Resistances 10\n{green}Armors/Boots: {white}All Resistances 10\n{green}Weapons/Gloves: {white}10% 開いた傷のプレビュー\n{turquoise}R:\n{turquoise}R  n\n{white}(中間点{blue}-1024{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}모든 저항 +22\n{green}헬름/벨트: {white}모든 저항 +10\n{green}갑옷/장화: {white}모든 저항 +10{white}\n{green}무기/장갑: {white}상처 악화 확률 10%\n{turquoise}룬 미리 보기:\n\n{white}(중급 점수 {blue}-1024{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Wszystkie odporności 22\n{green}Hełmy/pasy: {white}Wszystkie odporności 10\n{green}Pancerz/Buty: {white}Wszystkie odporności 10\n{green}Podgląd broni/rękawice%:c ÿ  n\n{white}(Punkty środkowe {blue}-1024{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Todas as Resistências 22\n{green}Capacetes/Cintos: {white}Todas as Resistências 10\n{green}Armaduras/Botas: {white}Todas as Resistências 10\n{green}Armas/Luvas: {white}10% Chance de Abrir Feridas\n{turquoise}RVisualizar  n\n{white}(Pontos médios {blue}-1024{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Все сопротивления 22\n{green}Шлемы/пояса: {white}Все сопротивления 10\n{green}Доспехи/ботинки: {white}Все сопротивления 10\n{green}Оружие/перчатки: {white}10% шанс открытых ран\nR Preview:\nÿview  n\n{white}(Средние точки {blue}-1024{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}所有抗性 22\n{green}头盔/腰带：{white}所有抗性 10\n{green}盔甲/靴子：{white}所有抗性 10\n{green}武器/手套：{white}10% 机会预览伤口：\n{turquoise}R  n\n{white}（中点 {blue}-1024{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}所有抗性 22\n{green}頭盔/腰帶：{white}所有抗性 10\n{green}盔甲/靴子：{white}所有抗性 10\n{green}武器/手套：{white}10% 機會預覽傷口：\n{turquoise}R  n\n{white}（中點 {blue}-1024{white}）\n",
            }
        },
        {
            code = "Z31",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Magischer Schaden um 7 verringert\n{green}Helme/Gürtel: {white}Magischer Schaden um 3 verringert\n{green}Rüstungen/Stiefel: {white}Magischer Schaden um 3 verringert\n{green}Waffen/Handschuhe: {white}Monsterheilung verhindern\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-1{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Magic Damage Reduced by 7\n{green}Helms/Belts: {white}Magic Damage Reduced by 3\n{green}Armors/Boots: {white}Magic Damage Reduced by 3\n{green}Weapons/Gloves: {white}Prevent Monster Heal\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-1{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño mágico reducido en 7\n{green}Yelmos/Cinturones: {white}Daño mágico reducido en 3\n{green}Armaduras/Botas: {white}Daño mágico reducido en 3\n{green}Armas/Guantes: {white}Evitar la curación de monstruos\n  Vista previa:\n\n{white}(Puntos altos {blue}-1{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño mágico reducido en 7\n{green}Yelmos/Cinturones: {white}Daño mágico reducido en 3\n{green}Armaduras/Botas: {white}Daño mágico reducido en 3\n{green}Armas/Guantes: {white}Evitar la curación de monstruos\n  Vista previa:\n\n{white}(Puntos altos {blue}-1{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Danno magico ridotto di 7\n{green}Elmi/Cinture: {white}Danno magico ridotto di 3\n{green}Armature/Stivali: {white}Danno magico ridotto di 3\n{green}Armi/Guanti: {white}Prevenzione cura dei mostri\n{green}  Anteprima:\n\n{white}(Punti massimi {blue}-1{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white}Dégâts magiques réduits de 7\n{green}Casques/Ceintures: {white}Dégâts magiques réduits de 3\n{green}Armures/Bottes: {white}Dégâts magiques réduits de 3\n{green}Armes/Gants: {white}Empêcher les soins des monstres\n{turquoise}Rune  Aperçu:\n\n{white}(High Points {blue}-1{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Magic Damage が 7 減少\n{green}Helms/Belts: {white}Magic Damage が 3 減少\n{green}Armors/Boots: {white}Magic Damage が 3 減少\n{green}Weapons/Gloves: {white}Prevent Monster Heal\n{turquoise}Rune プレビュー:\n\n{white}(ハイ ポイント {blue}-1{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}마법 피해 7 감소\n{green}헬름/벨트: {white}마법 피해 3 감소\n{green}갑옷/장화: {white}마법 피해 3 감소{white}\n{green}무기/장갑: {white}괴물 회복 저지\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-1{white})\n",
                plPL = "ÿC7Sam kostka, aby zmienić na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Magiczne obrażenia zmniejszone o 7\n{green}Hełmy/Pasy: {white}Magiczne obrażenia zmniejszone o 3\n{green}Pancerz/Buty: {white}Magiczne obrażenia zmniejszone o 3\n0Hełmy c2  Podgląd:\n\n{white}(Wysokie punkty {blue}-1{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Dano Mágico Reduzido em 7\n{green}Elmos/Cintos: {white}Dano Mágico Reduzido em 3\n{green}Armaduras/Botas: {white}Dano Mágico Reduzido em 3\n{green}Armas/Luvas: {white}Prevenir Cura de Monstros\n{turquoise}Rune  Visualização:\n\n{white}(Pontos altos {blue}-1{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Магический урон уменьшен на 7\n{green}Шлемы/ремни: {white}Магический урон уменьшен на 3\n{green}Доспехи/обувь: {white}Магический урон уменьшен на 3\n{green}Оружие/перчатки: ÿcuneNRevent Monster\n{green}  Предварительный просмотр:\n\n{white}(Высокие баллы {blue}-1{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}魔法伤害减少 7\n{green}头盔/腰带：{white}魔法伤害减少 3\n{green}盔甲/靴子：{white}魔法伤害减少 3\n{green}武器/手套：{white}Prevent Monster Heal\nÿc 预览：\n\n{white}（高点 {blue}-1{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}魔法傷害減少 7\n{green}頭盔/腰帶：{white}魔法傷害減少 3\n{green}盔甲/靴子：{white}魔法傷害減少 3\n{green}武器/手套：{white}Prevent Monster Heal\nÿc 預覽：\n\n{white}（高點 {blue}-1{white}）\n",
            }
        },
        {
            code = "Z32",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+25% Magiefund\n{green}Helme/Gürtel: {white}+10% Magiefund\n{green}Rüstungen/Stiefel: {white}+10% Magiefund\n{green}Waffen/Handschuhe: {white}+15% Magiefund\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-2{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+25% Increased Magic Find\n{green}Helms/Belts: {white}+10% Increased Magic Find\n{green}Armors/Boots: {white}+10% Increased Magic Find\n{green}Weapons/Gloves: {white}+15% Increased Magic find\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-2{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 25 % de aumento del hallazgo mágico\n{green}Yelmos/cinturones: {white} 10 % de aumento del hallazgo mágico\n{green}Armaduras/botas: {white} 10 % de aumento del hallazgo mágico\n{green}Armas/guantes: {white} 15  % de búsqueda mágica aumentada\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-2{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 25 % de aumento del hallazgo mágico\n{green}Yelmos/cinturones: {white} 10 % de aumento del hallazgo mágico\n{green}Armaduras/botas: {white} 10 % de aumento del hallazgo mágico\n{green}Armas/guantes: {white} 15  % de búsqueda mágica aumentada\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-2{white})\n",
                frFR = "{tan}Solo cubo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 25% ritrovamento magico aumentato\n{green}Elmi/cinture: {white} 10% ritrovamento magico aumentato\n{green}Armature/stivali: {white} 10% ritrovamento magico aumentato\n{green}Armi/guanti: {white} 15  % di ritrovamento magico aumentato\n{turquoise}Rune Anteprima:\n\n{white}(Punti massimi {blue}-2{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux:{white}25% d'Augmentation de la Recherche de Magie\n{green}Casques/Ceintures:{white} 10% d'Augmentation de la Recherche de Magie\n{green}Armures/Bottes:{white} 10% d'Augmentation de la Recherche de Magie\n{green}Armes/Gants:{white} 15  %Augmentation de la recherche magique\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-2{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 25% 増加 Magic Find\n{green}Helms/Belts: {white} 10% 増加 Magic Find\n{green}Armors/Boots: {white} 10% 増加 Magic Find\n{green}Weapons/Gloves: {white} 15  % 増加した魔法の発見\n{turquoise}Rune プレビュー:\n\n{white}(ハイポイント {blue}-2{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}매찬 25% 증가\n{green}헬름/벨트: {white}매찬 10% 증가\n{green}갑옷/장화: {white}매찬 10% 증가{white}\n{green}무기/장갑: {white}매찬 15% 증가\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-2{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 25% Zwiększone odnajdywanie magii\n{green}Hełmy/pasy: {white} 10% Zwiększone odnajdywanie magii\n{green}Pancerz/Buty: {white} 10% Zwiększone odnajdywanie magii\n{green}Broń/c0 15:  % Zwiększone znajdowanie magii\n{turquoise}Rune Podgląd:\n\n{white}(Wysokie punkty {blue}-2{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} Aumento de 25% em Achados Mágicos\n{green}Elmos/Cintos: {white} Aumento de 10% em Achados Mágicos\n{green}Armaduras/Botas: {white} Aumento de 10% em Achados Mágicos\n{green}Armas/Luvas: {white} 15  % de aumento de Magic find\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-2{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 25% увеличение скорости поиска магии\n{green}Шлемы/ремни: {white} 10% увеличение скорости поиска магии\n{green}Доспехи/обувь: {white} 10% увеличение скорости поиска магии\n{green}Оружие/перчатки: {white} 15  % увеличение количества магических находок\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-2{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 增加 25% 魔法查找\n{green}头盔/腰带：{white} 增加 10% 魔法查找\n{green}盔甲/靴子：{white} 增加 10% 魔法查找\n{green}武器/手套：{white} 15  % 增加魔法查找\n{turquoise}Rune 预览：\n\n{white}（高点 {blue}-2{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 增加 25% 魔法查找\n{green}頭盔/腰帶：{white} 增加 10% 魔法查找\n{green}盔甲/靴子：{white} 增加 10% 魔法查找\n{green}武器/手套：{white} 15  % 增加魔法查找\n{turquoise}Rune 預覽：\n\n{white}（高點 {blue}-2{white}）\n",
            }
        },
        {
            code = "Z33",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+5% maximalen Giftwiderstand\n{green}Helme/Gürtel: {white}+5% maximalen Giftwiderstand\n{green}Rüstungen/Stiefel: {white}+5% maximalen Giftwiderstand\n{green}Waffen/Handschuhe: {white}+15% Angriffswert\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-4{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+5% to Maximum Poison Resist\n{green}Helms/Belts: {white}+5% to Maximum Poison Resist\n{green}Armors/Boots: {white}+5% to Maximum Poison Resist\n{green}Weapons/Gloves: {white}15% Bonus to Attack Rating\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-4{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % hasta la resistencia máxima al veneno\n{green}Yelmos/cinturones: {white} 5 % hasta la resistencia máxima al veneno\n{green}Armaduras/botas: {white} 5 % hasta la resistencia máxima al veneno\n{green}Armas/guantes  : {white}15 % de bonificación al índice de ataque\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-4{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % hasta la resistencia máxima al veneno\n{green}Yelmos/cinturones: {white} 5 % hasta la resistencia máxima al veneno\n{green}Armaduras/botas: {white} 5 % hasta la resistencia máxima al veneno\n{green}Armas/guantes  : {white}15 % de bonificación al índice de ataque\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-4{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 5% alla massima resistenza al veleno\n{green}Elmi/Cinture: {white} 5% alla massima resistenza al veleno\n{green}Armature/Stivali: {white} 5% alla massima resistenza al veleno\n{green}Armi/guanti  : {white}15% Bonus al Rating Attacco\n{turquoise}Rune Anteprima:\n\n{white}(Punti più alti {blue}-4{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 5% à la résistance maximale au poison\n{green}Casques/ceintures: {white} 5% à la résistance maximale au poison\n{green}Armures/bottes: {white} 5% à la résistance maximale au poison\n{green}Armes/Gants : {white}15% de bonus au niveau d'attaque\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-4{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 5% から最大毒耐性\n{green}Helms/Belts: {white} 5% から最大毒耐性\n{green}Armors/Boots: {white} 5% から最大毒耐性\n{green}Weapons/Gloves  : {white}15% 攻撃レーティングへのボーナス\n{turquoise}Rune プレビュー:\n\n{white}(ハイポイント {blue}-4{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}최대 독 저항 +5%{white}\n{green}무기/장갑: {white}명중률 보너스 15%\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-4{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 5% do maksymalnej odporności na trucizny\n{green}Hełmy/pasy: {white} 5% do maksymalnej odporności na trucizny\n{green}Pancerze/Buty: {white} 5% do maksymalnej odporności na trucizny\n{green}Wesa  : {white}15% premii do oceny ataku\n{turquoise}Rune Podgląd:\n\n{white}(Wysokie punkty {blue}-4{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 5% para Resistência Máxima a Veneno\n{green}Capacetes/Cintos: {white} 5% para Resistência Máxima a Veneno\n{green}Armaduras/Botas: {white} 5% para Resistência Máxima a Veneno\n{green}Armas/Luvas  : {white}15% Bônus de Classificação de Ataque\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-4{white})\n",
                ruRU = "{tan}Один куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 5% к максимальному сопротивлению яду\n{green}Шлемы/пояса: {white} 5% к максимальному сопротивлению яду\n{green}Доспехи/обувь: {white} 5% к максимальному сопротивлению яду\n{green}Оружие/перчатки  : {white}15% Бонус к рейтингу атаки\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-4{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 5% 至最大毒抗\n{green}头盔/腰带：{white} 5% 至最大毒抗\n{green}盔甲/靴子：{white} 5% 至最大毒抗\n{green}武器/手套 ：{white}15% 攻击等级加成\n{turquoise}Rune 预览：\n\n{white}（高点 {blue}-4{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 5% 至最大毒抗\n{green}頭盔/腰帶：{white} 5% 至最大毒抗\n{green}盔甲/靴子：{white} 5% 至最大毒抗\n{green}武器/手套 ：{white}15% 攻擊等級加成\n{turquoise}Rune 預覽：\n\n{white}（高點 {blue}-4{white}）\n",
            }
        },
        {
            code = "Z34",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+5% maximalen Feuerwiderstand\n{green}Helme/Gürtel: {white}+5% maximalen Feuerwiderstand\n{green}Rüstungen/Stiefel: {white}+5% maximalen Feuerwiderstand\n{green}Waffen/Handschuhe: {white}+5% Manaraub\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-8{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+5% to Maximum Fire Resist\n{green}Helms/Belts: {white}+5% to Maximum Fire Resist\n{green}Armors/Boots: {white}+5% to Maximum Fire Resist\n{green}Weapons/Gloves: {white}5% Mana Stolen Per Hit\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-8{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % hasta la resistencia máxima al fuego\n{green}Yelmos/cinturones: {white} 5 % hasta la resistencia máxima al fuego\n{green}Armaduras/botas: {white} 5 % hasta la resistencia máxima al fuego\n{green}Armas/guantes  : {white}5% de maná robado por golpe\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-8{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % hasta la resistencia máxima al fuego\n{green}Yelmos/cinturones: {white} 5 % hasta la resistencia máxima al fuego\n{green}Armaduras/botas: {white} 5 % hasta la resistencia máxima al fuego\n{green}Armas/guantes  : {white}5% de maná robado por golpe\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-8{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 5% alla massima resistenza al fuoco\n{green}Elmi/Cinture: {white} 5% alla massima resistenza al fuoco\n{green}Armature/Stivali: {white} 5% alla massima resistenza al fuoco\n{green}Armi/Guanti  : {white}5% Mana rubato per colpo\n{turquoise}Rune Anteprima:\n\n{white}(Punti massimi {blue}-8{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 5% pour la résistance au feu maximale\n{green}Casques/Ceintures: {white} 5% pour la résistance au feu maximale\n{green}Armures/Bottes: {white} 5% pour la résistance au feu maximale\n{green}Armes/Gants : {white}5% de mana volé par coup\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-8{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 5% で最大耐火力\n{green}Helms/Belts: {white} 5% で最大耐火力\n{green}Armors/Boots: {white} 5% で最大耐火力\n{green}Weapons/Gloves  : ヒットごとに {white}5% マナが奪われます\n{turquoise}Rune プレビュー:\n\n{white}(ハイポイント {blue}-8{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}최대 화염 저항 +5%{white}\n{green}무기/장갑: {white}적중당 마나 5% 훔침\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-8{white})\n",
                plPL = "{tan}Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 5% do maksymalnej odporności na ogień\n{green}Hełmy/pasy: {white} 5% do maksymalnej odporności na ogień\n{green}Pancerze/Buty: {white} 5% do maksymalnej odporności na ogień\n{green}Broń/rękawice  : {white}5% skradzionej many za trafienie\n{turquoise}RunePodgląd:\n\n{white}(Wysokie punkty {blue}-8{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 5% para Resistência Máxima ao Fogo\n{green}Capacetes/Cintos: {white} 5% para Resistência Máxima ao Fogo\n{green}Armaduras/Botas: {white} 5% para Resistência Máxima ao Fogo\n{green}Armas/Luvas  : {white}5% de Mana Roubada por Hit\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-8{white})\n",
                ruRU = "{tan}Только куб, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white} 5% к максимальному сопротивлению огню\n{green}Шлемы/ремни: {white} 5% к максимальному сопротивлению огню\n{green}Доспехи/обувь: {white} 5% к максимальному сопротивлению огню\n{green}Оружие/перчатки  : {white}5% кражи маны за удар\n{turquoise}RПредварительный просмотр трассы:\n\n{white}(Высокие баллы {blue}-8{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 5% 至最大防火\n{green}头盔/腰带：{white} 5% 至最大防火\n{green}盔甲/靴子：{white} 5% 至最大防火\n{green}武器/手套 : {white}5% 每次命中偷取的法力\n{turquoise}Rune 预览：\n\n{white}(高点 {blue}-8{white})\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 5% 至最大防火\n{green}頭盔/腰帶：{white} 5% 至最大防火\n{green}盔甲/靴子：{white} 5% 至最大防火\n{green}武器/手套 : {white}5% 每次命中偷取的法力\n{turquoise}Rune 預覽：\n\n{white}(高點 {blue}-8{white})\n",
            }
        },
        {
            code = "Z35",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+5% maximalen Kältewiderstand\n{green}Helme/Gürtel: {white}+5% maximalen Kältewiderstand\n{green}Rüstungen/Stiefel: {white}+5% maximalen Kältewiderstand\n{green}Waffen/Handschuhe: {white}+35% Schaden\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-16{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+5% to Maximum Cold Resist\n{green}Helms/Belts: {white}+5% to Maximum Cold Resist\n{green}Armors/Boots: {white}+5% to Maximum Cold Resist\n{green}Weapons/Gloves: {white}+35% Enhanced Damage\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-16{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % para resistencia máxima al frío\n{green}Cascos/cinturones: {white} 5 % para resistencia máxima al frío\n{green}Armaduras/botas: {white} 5 % para resistencia máxima al frío\n{green}Armas/guantes  : {white} 35 % de daño mejorado\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-16{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % para resistencia máxima al frío\n{green}Cascos/cinturones: {white} 5 % para resistencia máxima al frío\n{green}Armaduras/botas: {white} 5 % para resistencia máxima al frío\n{green}Armas/guantes  : {white} 35 % de daño mejorado\n{turquoise}Rune Preview:\n\n{white}(Puntos altos {blue}-16{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 5% alla massima resistenza al freddo\n{green}Elmi/Cinture: {white} 5% alla massima resistenza al freddo\n{green}Armature/Stivali: {white} 5% alla massima resistenza al freddo\n{green}Armi/Guanti  : {white} 35% del danno potenziato\n{turquoise}Rune Anteprima:\n\n{white}(Punti massimi {blue}-16{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 5% pour la résistance maximale au froid\n{green}Casques/Ceintures: {white} 5% pour la résistance maximale au froid\n{green}Armures/Bottes: {white} 5% pour la résistance maximale au froid\n{green}Armes/Gants : {white} Dégâts améliorés de 35%\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-16{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 5% から最大耐寒性\n{green}Helms/Belts: {white} 5% から最大耐寒性\n{green}Armors/Boots: {white} 5% から最大耐寒性\n{green}Weapons/Gloves  : {white} 35% 強化されたダメージ\n{turquoise}Rune プレビュー:\n\n{white}(ハイポイント {blue}-16{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}최대 냉기 저항 +5%{white}\n{green}무기/장갑: {white}피해 +35% 증가\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-16{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 5% do maksymalnej odporności na zimno\n{green}Hełmy/pasy: {white} 5% do maksymalnej odporności na zimno\n{green}Pancerze/Buty: {white} 5% do maksymalnej odporności na zimno\n{green}Broń/Broń  : {white} 35% zwiększone obrażenia\n{turquoise}Rune Podgląd:\n\n{white}(Wysokie punkty {blue}-16{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 5% para Resistência Máxima ao Frio\n{green}Capacetes/Cintos: {white} 5% para Resistência Máxima ao Frio\n{green}Armaduras/Botas: {white} 5% para Resistência Máxima ao Frio\n{green}Armas/Luvas  : {white} 35% de dano aprimorado\n{turquoise}Rune Preview:\n\n{white}(Pontos altos {blue}-16{white})\n",
                ruRU = "{tan}Только куб для смены на следующий тип ремувера\n\n{green}Щиты/украшения: {white} 5% от максимального сопротивления холоду\n{green}Шлемы/пояса: {white} 5% до максимального сопротивления холоду\n{green}Доспехи/ботинки: {white} 5% до максимального сопротивления холоду\n{green}Оружие/перчатки  : {white} Увеличение урона на 35%\n{turquoise}RПредварительный просмотр руны:\n\n{white}(Высокие точки {blue}-16{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 5% 至最大抗寒性\n{green}头盔/腰带：{white} 5% 至最大抗寒性\n{green}盔甲/靴子：{white} 5% 至最大抗寒性\n{green}武器/手套 ：{white} 35% 增强伤害\n{turquoise}Rune 预览：\n\n{white}（高点 {blue}-16{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 5% 至最大抗寒性\n{green}頭盔/腰帶：{white} 5% 至最大抗寒性\n{green}盔甲/靴子：{white} 5% 至最大抗寒性\n{green}武器/手套 ：{white} 35% 增強傷害\n{turquoise}Rune 預覽：\n\n{white}（高點 {blue}-16{white}）\n",
            }
        },
        {
            code = "Z36",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+5% maximale Blitzwiderstand\n{green}Helme/Gürtel: {white}+5% maximale Blitzwiderstand\n{green}Rüstungen/Stiefel: {white}+5% maximale Blitzwiderstand\n{green}Waffen/Handschuhe: {white}10% Tödlichen Schlag\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-32{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+5% to Maximum Lightning Resist\n{green}Helms/Belts: {white}+5% to Maximum Lightning Resist\n{green}Armors/Boots: {white}+5% to Maximum Lightning Resist\n{green}Weapons/Gloves: {white}10% Deadly Strike\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-32{white})\n",
                esES = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % a la resistencia máxima a los rayos\n{green}Yelmos/cinturones: {white} 5 % a la resistencia máxima a los rayos\n{green}Armaduras/botas: {white} 5 % a la resistencia máxima a los rayos\n{green}Armas/guantes  : {white}10% Golpe mortal\nÿcVista previa de NRune:\n\n{white}(Puntos altos {blue}-32{white})\n",
                esMX = "{tan}Cube solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 5 % a la resistencia máxima a los rayos\n{green}Yelmos/cinturones: {white} 5 % a la resistencia máxima a los rayos\n{green}Armaduras/botas: {white} 5 % a la resistencia máxima a los rayos\n{green}Armas/guantes  : {white}10% Golpe mortal\nÿcVista previa de NRune:\n\n{white}(Puntos altos {blue}-32{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 5% alla massima resistenza ai fulmini\n{green}Elmi/Cinture: {white} 5% alla massima resistenza ai fulmini\n{green}Armature/Stivali: {white} 5% alla massima resistenza ai fulmini\n{green}Armi/Guanti  : {white}10% Attacco mortale\n{turquoise}Rune Anteprima:\n\n{white}(Punti alti {blue}-32{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux: {white} 5% pour la résistance maximale à la foudre\n{green}Casques/Ceintures: {white} 5% pour la résistance maximale à la foudre\n{green}Armures/Bottes: {white} 5% pour la résistance maximale à la foudre\n{green}Armes/Gants : {white}10% Frappe mortelle\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-32{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 5% で最大雷耐性\n{green}Helms/Belts: {white} 5% で最大雷耐性\n{green}Armors/Boots: {white} 5% で最大雷耐性\n{green}Weapons/Gloves  : {white}10% Deadly Strike\n{turquoise}Rune プレビュー:\n\n{white}(High Points {blue}-32{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}최대 번개 저항 +5%{white}\n{green}무기/장갑: {white}치명적 공격 10%\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-32{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 5% do maksymalnej odporności na błyskawice\n{green}Hełmy/pasy: {white} 5% do maksymalnej odporności na błyskawice\n{green}Pancerze/Buty: {white} 5% do maksymalnej odporności na błyskawice\n{green}Wea  : {white}10% Śmiertelne Uderzenie\n{turquoise}Rune Podgląd:\n\n{white}(Wysokie Punkty {blue}-32{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 5% para Resistência Máxima a Raios\n{green}Capacetes/Cintos: {white} 5% para Resistência Máxima a Raios\n{green}Armaduras/Botas: {white} 5% para Resistência Máxima a Raios\n{green}Armas/Luvas  : {white}10% Deadly Strike\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-32{white})\n",
                ruRU = "{tan}Только куб для смены на следующий тип ремувера\n\n{green}Щиты/украшения: {white} 5% от максимального сопротивления молнии\n{green}Шлемы/пояса: {white} 5% до максимального сопротивления молнии\n{green}Доспехи/обувь: {white} 5% до максимального сопротивления молнии\n{green}Оружие/перчатки  : {white}10% Deadly Strike\n{turquoise}RПредварительный просмотр руны:\n\n{white}(Высокие баллы {blue}-32{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 5% 至最大闪电抗性\n{green}头盔/腰带：{white} 5% 至最大闪电抗性\n{green}盔甲/靴子：{white} 5% 至最大闪电抗性\n{green}武器/手套 : {white}10% 致命一击\n{turquoise}Rune 预览：\n\n{white}(高点 {blue}-32{white})\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 5% 至最大閃電抗性\n{green}頭盔/腰帶：{white} 5% 至最大閃電抗性\n{green}盔甲/靴子：{white} 5% 至最大閃電抗性\n{green}武器/手套 : {white}10% 致命一擊\n{turquoise}Rune 預覽：\n\n{white}(高點 {blue}-32{white})\n",
            }
        },
        {
            code = "Z37",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+50 Mana\n{green}Helme/Gürtel: {white}Max Mana +5%\n{green}Rüstungen/Stiefel: {white}Max Mana +5%\n{green}Waffen/Handschuhe: {white}TZreffer blendet Ziel\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-64{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+50 to Mana\n{green}Helms/Belts: {white}Maximum Mana +5%\n{green}Armors/Boots: {white}Maximum Mana +5%\n{green}Weapons/Gloves: {white}Hit Blinds Target\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-64{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 a maná\n{green}Yelmos/cinturones: {white}Máximo de maná 5 %\n{green}Armaduras/botas: {white}Máximo de maná 5 %\n{green}Armas/guantes: {white}Hit Blinds Target Preview\nÿc  n\n{white}(Puntos altos {blue}-64{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 a maná\n{green}Yelmos/cinturones: {white}Máximo de maná 5 %\n{green}Armaduras/botas: {white}Máximo de maná 5 %\n{green}Armas/guantes: {white}Hit Blinds Target Preview\nÿc  n\n{white}(Puntos altos {blue}-64{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 50 a Mana\n{green}Elmi/Cinture: {white}Mana massimo 5%\n{green}Armature/Stivali: {white}Mana massimo 5%\n{green}Armi/Guanti: {white}Bersaglio ciechi colpisci\n{turquoise}RAnteprima:\n{turquoise}R  n\n{white}(Punti massimi {blue}-64{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 50 à Mana\n{green}Casques/Ceintures: {white}Mana maximum 5%\n{green}Armures/Bottes: {white}Mana maximum 5%\n{green}Armes/Gants: {white}Hit Blinds Target\n{turquoise}Rune Preview  n\n{white}(High Points {blue}-64{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 50 to Mana\n{green}Helms/Belts: {white}Maximum Mana 5%\n{green}Armors/Boots: {white}Maximum Mana 5%\n{green}Weapons/Gloves: {white}ヒット ブラインド プレビュー\nÿc:  n\n{white}(ハイポイント{blue}-64{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}마나 +50\n{green}헬름/벨트: {white}최대 마나 5% 증가\n{green}갑옷/장화: {white}최대 마나 5% 증가{white}\n{green}무기/장갑: {white}적중 시 대상 실명\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-64{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 50 do Many\n{green}Hełmy/Pasy: {white}Maksymalna Mana 5%\n{green}Pancerz/Buty: {white}Maksymalna Mana 5%\n{green}BrońÿNruRękawice:  n\n{white}(Wysokie punkty {blue}-64{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 50 para Mana\n{green}Capacetes/Cintos: {white}Máximo de Mana 5%\n{green}Armaduras/Botas: {white}Máximo de Mana 5%\n{green}Armas/Luvas: {white}Atingir Alvo de Blinds\nÿ  n\n{white}(Pontos altos {blue}-64{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 50 на ману\n{green}Шлемы/пояса: {white}Максимум маны 5%\n{green}Доспехи/обувь: {white}Максимум маны 5%\n{green}Оружие/перчатки: {white}Hit Blindsune\n{white}Hit Blindsune  n\n{white}(Высокие точки {blue}-64{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 50 到法力\n{green}头盔/腰带：{white}最大法力 5%\n{green}盔甲/靴子：{white}最大法力 5%\n{green}武器/手套：{white}Hit Blinds Target\n{turquoise}R  n\n{white}（高点 {blue}-64{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 50 到法力\n{green}頭盔/腰帶：{white}最大法力 5%\n{green}盔甲/靴子：{white}最大法力 5%\n{green}武器/手套：{white}Hit Blinds Target\n{turquoise}R  n\n{white}（高點 {blue}-64{white}）\n",
            }
        },
        {
            code = "Z38",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}Schaden um 8% reduziert\n{green}Helme/Gürtel: {white}Schaden um 8% reduziert\n{green}Rüstungen/Stiefel: {white}Schaden um 8% reduziert\n{green}Waffen/Handschuhe: {white}+10% Chance auf Vernichtenden Schlag\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-128{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Damage Reduced by 8%\n{green}Helms/Belts: {white}Damage Reduced by 8%\n{green}Armors/Boots: {white}Damage Reduced by 8%\n{green}Weapons/Gloves: {white}+10% Chance of Crushing Blow\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-128{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño reducido en un 8%\n{green}Yelmos/Cinturones: {white}Daño reducido en un 8%\n{green}Armaduras/Botas: {white}Daño reducido en un 8%\n{green}Armas/Guantes: {white} Probabilidad de 10%  Golpe aplastante\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-128{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Daño reducido en un 8%\n{green}Yelmos/Cinturones: {white}Daño reducido en un 8%\n{green}Armaduras/Botas: {white}Daño reducido en un 8%\n{green}Armas/Guantes: {white} Probabilidad de 10%  Golpe aplastante\n{turquoise}Rune Preview:\n\n{white}(Puntos bajos {blue}-128{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Danni ridotti dell'8%\n{green}Elmi/Cinture: {white}Danni ridotti dell'8%\n{green}Armature/Stivali: {white}Danni ridotti dell'8%\n{green}Armi/Guanti: {white} 10% di probabilità  Colpo schiacciante\n{turquoise}Rune Anteprima:\n\n{white}(Punti bassi {blue}-128{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white}Dégâts réduits de 8%\n{green}Casques/Ceintures: {white}Dégâts réduits de 8%\n{green}Armures/Bottes: {white}Dégâts réduits de 8%\n{green}Armes/Gants: {white} 10% de chances de  Coup écrasant\n{turquoise}RAperçu de l'une:\n\n{white}(Points bas {blue}-128{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white}Damage が 8% 減少\n{green}Helms/Belts: {white}Damage が 8% 減少\n{green}Armors/Boots: {white}Damage が 8% 減少\n{green}Weapons/Gloves: {white} 10% のチャンス クラッシュ ブロー\n{turquoise}Rune プレビュー:\n\n{white}(ロー ポイント {blue}-128{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}갑옷/장화/헬름/벨트/방패/장신구: {white}피해 8% 감소{white}\n{green}무기/장갑: {white}강타 확률 10%\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-128{white})\n",
                plPL = "ÿC7Sama kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white}Obrażenia zmniejszone o 8%\n{green}Hełmy/Pasy: {white}Obrażenia zmniejszone o 8%\n{green}Zbroje/Buty: {white}Obrażenia zmniejszone o 8% broni0%\ncG2  Miażdżący cios\n{turquoise}Rune Podgląd:\n\n{white}(niskie punkty {blue}-128{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Dano reduzido em 8%\n{green}Capacetes/Cintos: {white}Dano reduzido em 8%\n{green}Armaduras/Botas: {white}Dano reduzido em 8%\n{green}Armas/Luvas: {white} 10% de chance de  Crushing Blow\n{turquoise}Rune Preview:\n\n{white}(Low Points {blue}-128{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/украшения: {white}Урон уменьшен на 8%\n{green}Шлемы/ремни: {white}Урон уменьшен на 8%\n{green}Доспехи/обувь: {white}Урон уменьшен на 8%\n{green}Оружие/перчатки: {white} 10% шанс  Crushing Blow\n{turquoise}Rune Preview:\n\n{white}(Низкие баллы {blue}-128{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white}伤害降低 8%\n{green}头盔/腰带：{white}伤害降低 8%\n{green}盔甲/靴子：{white}伤害降低 8%\n{green}武器/手套：{white} 10% 几率 粉碎打击\n{turquoise}Rune 预览：\n\n{white}（低分 {blue}-128{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white}傷害減少 8%\n{green}頭盔/腰帶：{white}傷害減少 8%\n{green}盔甲/靴子：{white}傷害減少 8%\n{green}武器/手套：{white} 10% 機率 粉碎打擊\n{turquoise}Rune 預覽：\n\n{white}（低分 {blue}-128{white}）\n",
            }
        },
        {
            code = "Z39",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, zum Removertyp wechseln\n\n{green}Schilde/Schmuck: {white}+50 Leben\n{green}Helme/Gürtel: {white}Max Leben +2%\n{green}Rüstungen/Stiefel: {white}Max Leben +2%\n{green}Waffen/Handschuhe: {white}Ignoriert Verteidigung\n{turquoise}Rune Preview:\n\n{white}(Hohe {blue}-256{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+50 to Life\n{green}Helms/Belts: {white}Maximum Life +2%\n{green}Armors/Boots: {white}Maximum Life +2%\n{green}Weapons/Gloves: {white}Ignore Target's Defense\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-256{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 a la Vida\n{green}Yelmos/Cinturones: {white}Vida máxima 2%\n{green}Armaduras/Botas: {white}Vida máxima 2%\n{green}Armas/Guantes: {white}Ignorar la defensa del objetivo\nVista previa de NRune:ÿc  n\n{white}(Puntos altos {blue}-256{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 50 a la Vida\n{green}Yelmos/Cinturones: {white}Vida máxima 2%\n{green}Armaduras/Botas: {white}Vida máxima 2%\n{green}Armas/Guantes: {white}Ignorar la defensa del objetivo\nVista previa de NRune:ÿc  n\n{white}(Puntos altos {blue}-256{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 50 a Vita\n{green}Elmi/Cinture: {white}Vita massima 2%\n{green}Armature/Stivali: {white}Vita massima 2%\n{green}Armi/Guanti: {white}Ignora difesa del bersaglio\n{turquoise}R Anteprima:\n{turquoise}R  n\n{white}(Punti massimi {blue}-256{white})\n",
                itIT = "{tan}Cube seul pour passer au type de décapant suivant\n\n{green}Boucliers/Bijoux: {white} 50 à Vie\n{green}Casques/Ceintures: {white}Durée de vie maximale 2%\n{green}Armures/Bottes: {white}Durée de vie maximale 2%\n{green}Armes/Gants: {white}Ignorer la défense de la cible\n{turquoise}Rune Preview:  n\n{white}(High Points {blue}-256{white})\n",
                jaJP = "{tan}Cube だけで次のリムーバー タイプに変更\n\n{green}Shields/Jewelry: {white} 50 to Life\n{green}Helms/Belts: {white}Maximum Life 2%\n{green}Armors/Boots: {white}Maximum Life 2%\n{green}Weapons/Gloves: {white}ターゲットの防御を無視\n{turquoise}Rune: Preview  n\n{white}(ハイポイント{blue}-256{white})\n",
                koKR = "{tan}큐빙해서 변경\n\n{green}방패/장신구: {white}생명력 +50\n{green}헬름/벨트: {white}최대 생명력 2% 증가\n{green}갑옷/장화: {white}최대 생명력 2% 증가{white}\n{green}무기/장갑: {white}대상의 방어력 무시\n{turquoise}룬 미리 보기:\n\n{white}(상급 점수 {blue}-256{white})\n",
                plPL = "ÿC7Sam kostka do zmiany na następny typ usuwania\n\n{green}Tarcze/Biżuteria: {white} 50 do życia\n{green}Hełmy/Pasy: {white}Maksymalne życie 2%\n{green}Pancerz/Buty: {white}Maksymalne życie 2%\n{green}Zapowiedź\n{white}Rękawice:  n\n{white}(Wysokie punkty {blue}-256{white})\n",
                ptBR = "{tan}Cubo sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 50 para Vida\n{green}Capacetes/Cintos: {white}Vida Máxima 2%\n{green}Armaduras/Botas: {white}Vida Máxima 2%\n{green}Armas/Luvas: {white}Ignorar Defesa do Alvo\n{turquoise}R Visualização:\n\n{white}(Pontos altos {blue}-256{white})\n",
                ruRU = "{tan}Cube один, чтобы перейти к следующему типу ремувера\n\n{green}Щиты/ювелирные изделия: {white} 50 к жизни\n{green}Шлемы/ремни: {white}Maximum Life 2%\n{green}Доспехи/обувь: {white}Maximum Life 2%\n{green}Оружие/перчатки: {white}Ignore Target's Defense\nÿview:\n{green}  n\n{white}(Высокие точки {blue}-256{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个卸妆类型\n\n{green}盾牌/珠宝：{white} 50 生命\n{green}头盔/腰带：{white}最大生命 2%\n{green}盔甲/靴子：{white}最大生命 2%\n{green}武器/手套：{white}忽略目标的防御\n{turquoise}Rune：  n\n{white}（高点 {blue}-256{white}）\n",
                zhTW = "{tan}Cube 單獨更改為下一個卸妝類型\n\n{green}盾牌/珠寶：{white} 50 生命\n{green}頭盔/腰帶：{white}最大生命 2%\n{green}盔甲/靴子：{white}最大生命 2%\n{green}武器/手套：{white}忽略目標的防禦\n{turquoise}Rune：  n\n{white}（高點 {blue}-256{white}）\n",
            }
        },
        {
            code = "Z40",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, um zum nächsten Entfernertyp zu wechseln\n\n{green}Schilde/Schmuck: {white}Halbe Einfrierdauer\n{green}Helme/Gürtel: {white}Halbe Einfrierdauer\n{green}Rüstungen/Stiefel: {white}Halbe Einfrierdauer\n{green}Waffen/Handschuhe: {white}Friert das Ziel 2 ein\nÿc NRune-Vorschau:\n\n{white}  (Höhepunkte {blue}-512{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Half Freeze Duration\n{green}Helms/Belts: {white}Half Freeze Duration\n{green}Armors/Boots: {white}Half Freeze Duration\n{green}Weapons/Gloves: {white}Freezes Target +2\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-512{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Duración de media congelación\n{green}Cascos/cinturones: {white}Duración de media congelación\n{green}Armas/Botas: {white}Duración de media congelación\n{green}Armas/Guantes: {white}Objetivo 2 de congelación\n {turquoise}Rune Vista previa:\n\n{white}  (Puntos altos {blue}-512{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Duración de media congelación\n{green}Cascos/cinturones: {white}Duración de media congelación\n{green}Armas/Botas: {white}Duración de media congelación\n{green}Armas/Guantes: {white}Objetivo 2 de congelación\n {turquoise}Rune Vista previa:\n\n{white}  (Puntos altos {blue}-512{white})\n",
                frFR = "{tan}Cube da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Durata di congelamento a metà\n{green}Elmi/Cinture: {white}Durata di congelamento a metà\n{green}Armature/Stivali: {white}Durata di congelamento a metà\n{green}Armi/Guanti: {white}Obiettivo di congelamento 2\n{turquoise}R un'anteprima:\n\n{white}  (Punti più alti {blue}-512{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux : {white}Demi-durée de gel\n{green}Casques/ceintures : {white}Demi-durée de gel\n{green}Armures/bottes : {white}Demi-durée de gel\n{green}Armes/Gants : {white}Cible de gel 2\n{turquoise}R une Aperçu :\n\n{white}  (Points forts {blue}-512{white})\n",
                jaJP = "{tan}Cube のみで次のリムーバー タイプに変更します\n\n{green}シールド/ジュエリー: {white} 半分のフリーズ期間\n{green} ヘルム/ベルト: {white} 半分のフリーズ期間\n{green} アーマー/ブーツ: {white} 半分のフリーズ期間\n{green}武器/グローブ: {white} ターゲット 2 をフリーズ\n{turquoise}Rune プレビュー: \n\n{white}  (ハイポイント {blue}-512{white})\n",
                koKR = "{tan}큐브만 사용하여 다음 제거제 유형으로 변경\n\n{green}방패/장신구: {white}냉동 지속시간 절반\n{green}헬름/벨트: {white}냉동 지속시간 절반\n{green}방어구/부츠: {white}냉동 지속시간 절반\n{green}무기/장갑: {white}대상 2냉동\nÿ cNRune 미리보기:\n\n{white}  (하이 포인트 {blue}-512{white})\n",
                plPL = "{tan}Cube, aby zmienić na następny typ narzędzia do usuwania\n\n{green}Tarcze/biżuteria: {white}Czas trwania połowy zamrożenia\n{green}Helmy/pasy: {white}Czas trwania połowy zamrożenia\n{green}Zbroje/buty: {white}Czas trwania połowy zamrożenia\n{green}Broń/rękawice: {white}Zamraża cel 2\n Podgląd {turquoise}Rune:\n\n{white}  (Wysokie punkty {blue}-512{white})\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Half Freeze Duration\n{green}Helms/Belts: {white}Half Freeze Duration\n{green}Armors/Boots: {white}Half Freeze Duration\n{green}Weapons/Luvas: {white}Freezes Target 2\nÿc Visualização do NRune:\n\n{white}  (Pontos altos {blue}-512{white})\n",
                ruRU = "{tan}Cube самостоятельно, чтобы перейти к следующему типу средства удаления.\n\n{green}Щиты/Ювелирные изделия: {white}Половинная продолжительность заморозки\n{green}Шлемы/Ремни: {white}Половинная продолжительность заморозки\n{green}Броня/Ботинки: {white}Половинная продолжительность заморозки\n{green}Оружие/перчатки: {white}Freezes Target 2\nПредварительный просмотр n{turquoise}Rune:\n\n{white}  (Высокие баллы {blue}-512{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个去除剂类型\n\n{green}盾牌/珠宝：{white}半冻结持续时间\n{green}头盔/腰带：{white}半冻结持续时间\n{green}盔甲/靴子：{white}半冻结持续时间\n{green}武器/手套：{white}冻结目标2\n{turquoise}Rune预览：\n\n{white}  （高点{blue}-512{white}）\n",
                zhTW = "{tan}Cube 單獨改為下一個去除劑類型\n\n{green}盾牌/珠寶：{white}半凍結持續時間\n{green}頭盔/腰帶：{white}半凍結持續時間\n{green}盔甲/靴子：{white}半凍結持續時間\n{green}武器/手套： {white}凍結目標2\n{turquoise}Rune預覽：\n\n{white} （高點{blue}-512{white}）\n",
            }
        },
        {
            code = "Z41",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Würfel allein, um zum nächsten Entfernertyp zu wechseln\n\n{green}Schilde/Schmuck: {white}Unzerstörbar, 5 % Elementarabsorption\n{green}Helme/Gürtel: {white}Unzerstörbar, 5 % Elementarabsorption\n{green}Rüstungen/Stiefel: {white}Unzerstörbar, 5 % Elementarabsorption\n{green}Waffen/Handschuhe: {white}Unzerstörbar,  5 % Elementarabsorption\n{turquoise}Rune-Vorschau:\n\n{white}(High Points {blue}-1024{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Indestructible, +5% Cold, Lightning, Fire, Magic Absorb\n{green}Helms/Belts: {white}Indestructible, +5% Cold, Lightning, Fire, Magic Absorb\n{green}Armors/Boots: {white}Indestructible, +5% Cold, Lightning, Fire, Magic Absorb\n{green}Weapons/Gloves: {white}Indestructible, +5% Cold, Lightning, Fire, Magic Absorb\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-1024{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Indestructible, 5% de absorción elemental\n{green}Cascos/cinturones: {white}Indestructible, 5% de absorción elemental\n{green}Armas/Botas: {white}Indestructible, 5% de absorción elemental\n{green}Armas/ Guantes: {white}Indestructible,  5 % de absorción elemental\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-1024{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Indestructible, 5% de absorción elemental\n{green}Cascos/cinturones: {white}Indestructible, 5% de absorción elemental\n{green}Armas/Botas: {white}Indestructible, 5% de absorción elemental\n{green}Armas/ Guantes: {white}Indestructible,  5 % de absorción elemental\n{turquoise}Rune Preview:\n\n{white}(High Points {blue}-1024{white})\n",
                frFR = "{tan}Cube da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white}Indistruttibile, 5% Assorbimento elementale\n{green}Elmi/Cinture: {white}Indistruttibile, 5% Assorbimento elementale\n{green}Armature/Stivali: {white}Indistruttibile, 5% Assorbimento elementale\n{green}Armi/Guanti : {white}Indistruttibile,  Assorbimento elementale 5%\n{turquoise}Rune Anteprima:\n\n{white}(Punti alti {blue}-1024{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux : {white}Indestructible, 5 % d'absorption élémentaire\n{green}Casques/ceintures : {white}Indestructible, 5 % d'absorption élémentaire\n{green}Armures/bottes : {white}Indestructible, 5 % d'absorption élémentaire\n{green}Armes/Gants : {white}Indestructible,  5 % d'absorption élémentaire\n{turquoise}Rune Preview :\n\n{white}(High Points {blue}-1024{white})\n",
                jaJP = "次のリムーバー タイプに変更するには {tan}Cube のみ\n\n{green}シールド/ジュエリー: {white} 破壊不能、5% 属性吸収\n{green} ヘルム/ベルト: {white} 破壊不能、5% 属性吸収\n{green} アーマー/ブーツ: {white} 破壊不能、5% 属性吸収\n{green} 武器/G大好き: {white}Indestructible、  5% エレメンタル吸収\n{turquoise}Rune プレビュー:\n\n{white}(ハイポイント {blue}-1024{white})\n",
                koKR = "{tan}큐브만 사용하여 다음 제거제 유형으로 변경 가능\n\n{green}방패/장신구: {white}불멸, 5% 원소 흡수\n{green}헬름/벨트: {white}불멸, 5% 원소 흡수\n{green}방어구/부츠: {white}불멸, 5% 원소 흡수\n{green}Weapons/G 사랑함: {white}Indestructible,  5% 원소 흡수\n{turquoise}Rune 미리보기:\n\n{white}(높은 포인트 {blue}-1024{white})\n",
                plPL = "{tan}Kostka do zmiany na następny typ narzędzia do usuwania\n\n{green}Tarcze/biżuteria: {white}Niezniszczalny, 5% absorpcji żywiołów\n{green}Helmy/pasy: {white}Niezniszczalny, 5% absorpcji żywiołów\n{green}Zbroje/buty: {white}Niezniszczalny, 5% absorpcji żywiołów\n{green}Broń /Rękawice: {white}Niezniszczalne,  5% absorpcji żywiołów\nÿcPodgląd NRune:\n\n{white} (najwyższe punkty {blue}-1024{white})\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white}Indestrutível, 5% de Absorção Elemental\n{green}Elmos/Cintos: {white}Indestrutível, 5% de Absorção Elemental\n{green}Armaduras/Botas: {white}Indestrutível, 5% de Absorção Elemental\n{green}Weapons/G ama: {white}Indestrutível,  5% de absorção elementar\n{turquoise}Rune Preview:\n\n{white}(Pontos altos {blue}-1024{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу средства удаления\n\n{green}Щиты/Ювелирные изделия: {white}Неразрушимость, 5% поглощения стихий\n{green}Шлемы/Ремни: {white}Неразрушимость, 5% поглощения стихий\n{green}Броня/Ботинки: {white}Неразрушимость, 5% поглощения стихий\n{green}Weapons/G любит: {white}Indestructible,  5% поглощения стихий\n{turquoise}Rune Preview:\n\n{white}(Высокие очки {blue}-1024{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个去除剂类型\n\n{green}盾牌/珠宝：{white}坚不可摧，5%元素吸收\n{green}头盔/腰带：{white}坚不可摧，5%元素吸收\n{green}盔甲/靴子：{white}坚不可摧，5%元素吸收\n{green}武器/G喜欢：{white}坚不可摧，  5% 元素吸收\n{turquoise}Rune 预览:\n\n{white}(高点{blue}-1024{white})\n",
                zhTW = "{tan}Cube 單獨改為下一個去除劑類型\n\n{green}盾牌/珠寶：{white}堅不可摧，5%元素吸收\n{green}頭盔/腰帶：{white}堅不可摧，5%元素吸收\n{green}盔甲/靴子：{white}堅不可摧，5%元素吸收\n{green}武器/G喜歡：{white}堅不可摧， 5% 元素吸收\n{turquoise}Rune 預覽:\n\n{white}(高點{blue}-1024{white})\n",
            }
        },
        {
            code = "Z60",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 3 Stärke \nŸc; für Schmiede: \n \nbinc3 2 Level -Anforderung \n 2 Stärke\n",
                enUS = "{blue}+2 Level Requirement\n+3 Strength\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+2 Strength\n",
                esES = "ÿC3 2 Requisito de nivel \n 3 Fuerza \n{purple} para herreros: \n \nÿC3 2 requisito de nivel \n 2 fuerza\n",
                esMX = "ÿC3 2 Requisito de nivel \n 3 Fuerza \n{purple} para herreros: \n \nÿC3 2 requisito de nivel \n 2 fuerza\n",
                frFR = "{blue} 2 Niveau Exigence \n 3 Force \n{purple} Pour les forgerons: \n \n{blue} 2 Niveau exigence \n 2 Force\n",
                itIT = "{blue} requisito di livello 2 \n 3 resistenza \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \n 2 resistenza\n",
                jaJP = "°2レベル要件\n 3強度\n{purple}鍛冶屋の場合：\n \n{blue} 2レベル要件\n 2強さ\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 3 강도 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 2 강도\n",
                plPL = "{blue} 2 Wymagania poziomu \n 3 siła \n{purple} dla kowalczy: \n \n{blue} 2 Wymagania poziomu \n 2 siła\n",
                ptBR = "{blue} 2 Requisito de nível \n 3 Força \n{purple} para ferreiros: \n \n{blue} 2 Requisito de nível \n 2 Força\n",
                ruRU = "{blue} 2 Требование уровня \n 3 прочность \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 2 Прочность\n",
                zhCN = "•C3 2级别要求\n 3强度\n设备;对于铁匠：\n \n〜C3 2级别要求\n 2强度\n",
                zhTW = "•C3 2級別要求\n 3強度\n設備;對於鐵匠：\n \n〜C3 2級別要求\n 2強度\n",
            }
        },
        {
            code = "Z61",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 3 Geschicklichkeit \nŸc; für Schmiede: \n \nŸc3 2 Level -Anforderung \n 2 Geschicklichkeit\n",
                enUS = "{blue}+2 Level Requirement\n+3 Dexterity\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+2 Dexterity\n",
                esES = "ÿC3 2 Requisito de nivel \n 3 Dexteridad \n{purple} Para herreros: \n \nÿC3 2 requisito de nivel \n 2 dexteridad\n",
                esMX = "ÿC3 2 Requisito de nivel \n 3 Dexteridad \n{purple} Para herreros: \n \nÿC3 2 requisito de nivel \n 2 dexteridad\n",
                frFR = "{blue} 2 Niveau exigence \n 3 Dextérité \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 2 Dextérité\n",
                itIT = "ÿC3 requisito di livello 2 \n 3 destrezza \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \n 2 destrezza\n",
                jaJP = "°2レベル要件\n 3 DEXTERITY \nÿC;鍛冶屋の場合：\n \nc32レベル要件\n 2 Dexterity\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 3 Dexterity \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 2 Dexterity\n",
                plPL = "{blue} 2 Wymagania poziomu \n 3 Zręczność \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Nível Requisito \n 3 DeSTerity \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 2 Destreity\n",
                ruRU = "{blue} 2 Требование уровня \n 3 Дексейность \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 2 Лесвяти\n",
                zhCN = "C3 2级别要求\n 3敏感性\n〜C;对于铁匠：\n \n〜C3 2级别要求\n 2敏捷性\n",
                zhTW = "C3 2級別要求\n 3敏感性\n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 2敏捷性\n",
            }
        },
        {
            code = "Z62",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 3 Vitalität \nsprache; für Schmiede: \n \nbinc3 2 Level -Anforderung \n 2 Vitalität\n",
                enUS = "{blue}+2 Level Requirement\n+3 Vitality\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+2 Vitality\n",
                esES = "ÿC3 2 Requisito de nivel \n 3 Vitalidad \n{purple} para herreros: \n \nÿC3 2 requisito de nivel \n 2 vitalidad\n",
                esMX = "ÿC3 2 Requisito de nivel \n 3 Vitalidad \n{purple} para herreros: \n \nÿC3 2 requisito de nivel \n 2 vitalidad\n",
                frFR = "{blue} 2 Niveau exigence \n 3 vitalité \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 2 Vitality\n",
                itIT = "ÿC3 requisito a 2 livelli \n 3 vitality \n{purple} per i fabbri: \n \n{blue} 2 Livello Requisito \n 2 Vitalità\n",
                jaJP = "°2レベル要件\n 3バイタリティ\n{purple}鍛冶屋の場合：\n \n{blue}2レベル要件\n 2活力\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 3 활력 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 2 Vitality\n",
                plPL = "{blue} 2 Wymagania poziomu \n 3 witalność \n{purple} dla kowalczy: \n \n{blue} 2 wymagania poziomu \n 2 witalność\n",
                ptBR = "{blue} 2 Requisito de nível \n 3 vitalidade \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 2 vitalidade\n",
                ruRU = "{blue} 2 Требование уровня \n 3 жизнеспособность \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 2 жизнеспособность\n",
                zhCN = "C3 2级别要求\n 3 Vitation \n〜C;对于铁匠：\n \n〜C3 2级别要求\n 2活力\n",
                zhTW = "C3 2級別要求\n 3 Vitation \n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 2活力\n",
            }
        },
        {
            code = "Z63",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 3 Energie \nŸc; für Schmiede: \n \nbinc3 2 Level -Anforderung \n 2 Energie\n",
                enUS = "{blue}+2 Level Requirement\n+3 Energy\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+2 Energy\n",
                esES = "ÿC3 2 Requisito de nivel \n 3 Energía \nÿC; Para herreros: \n \nÿC3 2 Requisito de nivel \n 2 Energía\n",
                esMX = "ÿC3 2 Requisito de nivel \n 3 Energía \nÿC; Para herreros: \n \nÿC3 2 Requisito de nivel \n 2 Energía\n",
                frFR = "{blue} 2 Niveau exigence \n 3 Energy \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 2 énergie\n",
                itIT = "ÿC3 requisito di livello 2 \n 3 energia \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \n 2 energia\n",
                jaJP = "C32レベル要件\n 3エネルギー\n{purple}鍛冶屋の場合：\n \n{blue} 2レベル要件\n 2エネルギー\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 3 에너지 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 2 에너지\n",
                plPL = "{blue} 2 Wymagania poziomu \n 3 energia \n{purple} dla kowalczy: \n \n{blue} 2 Wymagania poziomu \n 2 Energia\n",
                ptBR = "{blue} 2 Requisito de nível \n 3 Energia \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 2 energia\n",
                ruRU = "{blue} 2 Требование уровня \n 3 энергия \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 2 энергия\n",
                zhCN = "C3 2级别要求\n 3 Energy \n〜C;对于铁匠：\n \n〜C3 2级别要求\n 2 Energy\n",
                zhTW = "C3 2級別要求\n 3 Energy \n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 2 Energy\n",
            }
        },
        {
            code = "Z64",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 2%% schneller Lauf/Walk \nŸc; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 1%% schnellerer Lauf/Walk\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Faster Run/Walk\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Faster Run/Walk\n",
                esES = "ÿC3 3 Nivel Requisito \n 2%% Run/caminata más rápido\n",
                esMX = "ÿC3 3 Nivel Requisito \n 2%% Run/caminata más rápido\n",
                frFR = "ÿC3 3 Niveau exigence \n 2%% Run / Walk plus rapide \n{purple} pour les forgerons: \n \n{blue} 3 Niveau exigence \n 1%% Run / marche plus rapide\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 2%% più veloce run/walk \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% più veloce run/walk\n",
                jaJP = "C33レベル要件\n 2%%ラン/ウォーク\nc;鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%高速のラン/ウォーク\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 더 빠른 달리기/보행 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 더 빠른 달리기/보행\n",
                plPL = "ÿC3 3 Wymagania poziomu \n 2%% szybciej bieg/spacer \n{purple} dla kowalczy: \n \nÿC3 3 wymagania poziomu \n 1%% szybsze run/spacer\n",
                ptBR = "{blue} Requisito de 3 níveis \n 2%% Run/Walk \n{purple} para ferreiros: \n \n{blue} Requisito de 3 níveis \n 1%% Run/Walk mais rápido\n",
                ruRU = "ÿC3 3 Требование уровня \n 2%% быстрее пробежать/ходить \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% быстрее пробега/ходьба\n",
                zhCN = "ÿC33级别要求\n 2%%快速运行/步行\n设备;对于铁匠：\n \n〜C3 3级别要求\n 1%%快速运行/步行\n",
                zhTW = "ÿC33級別要求\n 2%%快速運行/步行\n設備;對於鐵匠：\n \n〜C3 3級別要求\n 1%%快速運行/步行\n",
            }
        },
        {
            code = "Z65",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level -Anforderung \n 2%% schneller Hit Recovery \nŸc; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 1%% schnellerer Trefferwiederherstellung\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Faster Hit Recovery\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Faster Hit Recovery\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 2%% Recuperación de golpe de golpe más rápido\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 2%% Recuperación de golpe de golpe más rápido\n",
                frFR = "{blue} 3 Niveau exigence \n 2%% RÉCUPTION HIT plus rapide \n{purple} Pour les forgerons: \n \n{blue} 3 Besoin de niveau \n 1%% de récupération de frappe plus rapide\n",
                itIT = "ÿC3 Requisito di livello 3 \n 2%% più veloce hit Recovery \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% più veloce Recupero hit\n",
                jaJP = "C33レベル要件\n 2%%ヒット回復\nÿC;鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%ヒット回復の高速\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 더 빠른 적중 복구 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 더 빠른 적중 복구\n",
                plPL = "ÿC3 3 Wymaganie poziomu \n 2%% szybsze odzyskiwanie uderzeń \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 2%% mais rápido recuperação \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% Recuperação de acerto mais rápido\n",
                ruRU = "ÿC3 3 Требование уровня \n 2%% более быстрое восстановление \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% быстрее удалось\n",
                zhCN = "C3 3级要求\n 2%%快速击中恢复\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 1%%快速命中率恢复\n",
                zhTW = "C3 3級要求\n 2%%快速擊中恢復\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 1%%快速命中率恢復\n",
            }
        },
        {
            code = "Z66",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 2%% schnellerer Blockrate \nŸc; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 1%% schnellere Blockrate\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Faster Block Rate\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Faster Block Rate\n",
                esES = "ÿC3 3 Requisito de nivel \n 2%% Tasa de bloqueo más rápida \n{purple} para herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Tasa de bloqueo más rápida\n",
                esMX = "ÿC3 3 Requisito de nivel \n 2%% Tasa de bloqueo más rápida \n{purple} para herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Tasa de bloqueo más rápida\n",
                frFR = "{blue} 3 Niveau exigence \n 2%% Taux de blocage plus rapide \n{purple} pour les forgerons: \n \n{blue} 3 exigence de niveau \n 1%% de taux de blocage plus rapide\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 2%% più rapido tasso di blocco \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% più veloce tasso di blocco\n",
                jaJP = "C33レベル要件\n 2%%ブロックレートの高速\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%高速ブロックレート\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 더 빠른 블록 속도 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 더 빠른 블록 속도\n",
                plPL = "{blue} 3 Wymagania poziomu \n 2%% szybsza szybkość bloków \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 2%% Taxa de bloco mais rápida \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% taxa de bloco mais rápida\n",
                ruRU = "ÿC3 3 Требование уровня \n 2%% более быстрая скорость блока \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% более быстрая скорость блока\n",
                zhCN = "C3 3级要求\n 2%%更快的块率\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 1%%更快的块率\n",
                zhTW = "C3 3級要求\n 2%%更快的塊率\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 1%%更快的塊率\n",
            }
        },
        {
            code = "Z67",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 2%% schnellere Angriffsgeschwindigkeit \nŸc; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 1%% schnellere Angriffsgeschwindigkeit\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Faster Attack Speed\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Faster Attack Speed\n",
                esES = "ÿC3 3 Nivel Requisito \n 2%% Velocidad de ataque más rápida \n{purple} para herreros: \n \n{blue} requisito de nivel 3 \n 1%% Velocidad de ataque más rápida\n",
                esMX = "ÿC3 3 Nivel Requisito \n 2%% Velocidad de ataque más rápida \n{purple} para herreros: \n \n{blue} requisito de nivel 3 \n 1%% Velocidad de ataque más rápida\n",
                frFR = "{blue} 3 Niveau exigence \n 2%% Speed ​​d'attaque plus rapide \n{purple} pour les forgerons: \n \n{blue} 3 exigence de niveau \n 1%% de vitesse d'attaque plus rapide\n",
                itIT = "ÿC3 Requisito di livello 3 \n 2%% più veloce Velocità di attacco \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% più veloce velocità di attacco\n",
                jaJP = "°3レベル要件\n 2%%攻撃速度\nc;鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%攻撃速度が高速\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 더 빠른 공격 속도 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 빠른 공격 속도\n",
                plPL = "{blue} 3 Wymagania poziomu \n 2%% szybsza prędkość ataku \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível de 3 \n 2%% Velocidade de ataque mais rápida \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% Velocidade de ataque mais rápida\n",
                ruRU = "ÿC3 3 Требование уровня \n 2%% более быстрая скорость атаки \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% более быстрая скорость атаки\n",
                zhCN = "•C3 3级要求\n 2%%更快的攻击速度\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 1%%更快的攻击速度\n",
                zhTW = "•C3 3級要求\n 2%%更快的攻擊速度\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 1%%更快的攻擊速度\n",
            }
        },
        {
            code = "Z68",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 2%% schneller Gussrate \nsprache; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 1%% schneller Gussrate\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Faster Cast Rate\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Faster Cast Rate\n",
                esES = "ÿC3 3 Requisito de nivel \n 2%% Tasa de fundición más rápida \n{purple} para herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Tasa de fundición más rápida\n",
                esMX = "ÿC3 3 Requisito de nivel \n 2%% Tasa de fundición más rápida \n{purple} para herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Tasa de fundición más rápida\n",
                frFR = "{blue} 3 Niveau exigence \n 2%% Taux de coulée plus rapide \n{purple} pour les forgerons: \n \n{blue} 3 exigence de niveau \n 1%% de taux de coulée plus rapide\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 2%% più rapido tasso di cast \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% più veloce tasso di cast\n",
                jaJP = "°3レベル要件\n 2%%キャストレートの高速\nc;鍛冶屋の場合：\n \nc33レベル要件\n 1%%キャストレートの高速\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 더 빠른 캐스트 속도 \n{purple} 대장장이의 경우 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 빠른 캐스트 속도\n",
                plPL = "{blue} 3 Wymagania poziomu \n 2%% szybsza szybkość rzucania \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 2%% Taxa de elenco mais rápida \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% taxa de elenco mais rápida\n",
                ruRU = "{blue} 3 Требование уровня \n 2%% быстрее лисовая ставка \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% быстрее лисовая ставка\n",
                zhCN = "ÿC33级别要求\n 2%%更快的铸造率\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 1%%快速的铸造率\n",
                zhTW = "ÿC33級別要求\n 2%%更快的鑄造率\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 1%%快速的鑄造率\n",
            }
        },
        {
            code = "Z69",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level -Anforderung \n 4%% beschwören HP \n¤; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 2%% beschwören HP\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Summon HP\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Summon HP\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Summon HP \nÿC; Para los herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Summon HP\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Summon HP \nÿC; Para los herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Summon HP\n",
                frFR = "{blue} 3 Niveau exigence \n 4%% invocation hp \n{purple} pour les forgerons: \n \n{blue} 3 exigence de niveau \n 2%% Summon HP\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% evoca hp \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 2%% evocare HP\n",
                jaJP = "°3レベル要件\n 4%%召喚HP \n{purple}鍛冶屋の場合：\n \nc33レベル要件\n 2%%サマンHP\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 소환 hp \n{purple} 대장장이의 경우 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 소환 hp\n",
                plPL = "{blue} 3 Wymaganie poziomu \n 4%% Przywołaj HP \n{purple} dla kowalczy: \n \n{blue} 3 wymagania poziomu \n 2%% przywołanie HP\n",
                ptBR = "{blue} Requisito de 3 níveis \n 4%% HP \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% HP HP\n",
                ruRU = "{blue} 3 Требование уровня \n 4%% вызывает HP \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 2%% вызывает HP\n",
                zhCN = "C3 3级要求\n 4%%召唤hp \n〜C;对于铁匠：\n \n〜C3 3级别要求\n 2%%召唤hp hp hp\n",
                zhTW = "C3 3級要求\n 4%%召喚hp \n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 2%%召喚hp hp hp\n",
            }
        },
        {
            code = "Z70",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level Anforderung \n 4%% Beschwörungschaden \nŸc; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 2%% Beschwörungschaden\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Summon Damage\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Summon Damage\n",
                esES = "ÿC3 3 Requisito de nivel \n 4%% Daño de convocatoria \nÿC; para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Daño de convocatoria\n",
                esMX = "ÿC3 3 Requisito de nivel \n 4%% Daño de convocatoria \nÿC; para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Daño de convocatoria\n",
                frFR = "{blue} 3 Niveau exigence \n 4%% dommage invoqué \n{purple} pour les forgerons: \n \n{blue} 3 exigence de niveau \n 2%% dommage à l'invocation\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% Evoca danni \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 2%% evocare danni\n",
                jaJP = "°3レベル要件\n 4%%召喚ダメージ\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 2%%サモンダメージ\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 소환 손상 \n{purple} 대장장이의 경우 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 소환 손상\n",
                plPL = "ÿC3 3 Wymaganie poziomu \n 4%% Przywołaj uszkodzenie \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 4%% Danos de convocação \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% de dano de convocação\n",
                ruRU = "ÿC3 3 Требование уровня \n 4%% призывают повреждение \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 2%% призыв\n",
                zhCN = "C3 3级别要求\n 4%%召唤伤害\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 2%%召唤伤害\n",
                zhTW = "C3 3級別要求\n 4%%召喚傷害\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 2%%召喚傷害\n",
            }
        },
        {
            code = "Z71",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level -Anforderung \n 2%% Summe Combat -Bewertung \n¤; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 1%% Summe Combat -Bewertung\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Summon Combat Rating\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Summon Combat Rating\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 2%% Cumplir la clasificación de combate \n{purple} para los herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Cumplimiento de la calificación de combate\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 2%% Cumplir la clasificación de combate \n{purple} para los herreros: \n \nÿC3 3 3 Nivel Requisito \n 1%% Cumplimiento de la calificación de combate\n",
                frFR = "ÿC3 3 Niveau exigence \n 2%% Invocant la cote de combat \n{purple} pour les forgerons: \n \n{blue} 3 Niveau exigence \n 1%% Invocant la cote de combat\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 2%% evocare valutazione del combattimento \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% di evoca valutazione di combattimento\n",
                jaJP = "C33レベル要件\n 2%%召喚戦闘評価\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%サマン戦闘評価\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 소환 전투 등급 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 소환 전투 등급\n",
                plPL = "ÿC3 3 Wymaganie poziomu \n 2%% Zwołaj znęcanie się nad walką \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 2%% de convocação de combate rating \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% de convocação classificação de combate\n",
                ruRU = "{blue} 3 Требование уровня \n 2%% Summon Combat Rating \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% Common Combat Rating\n",
                zhCN = "C3 3级别要求\n 2%%召唤战斗等级\n〜C;对于铁匠：\n \n设施\n",
                zhTW = "C3 3級別要求\n 2%%召喚戰斗等級\n〜C;對於鐵匠：\n \n設施\n",
            }
        },
        {
            code = "Z72",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level -Anforderung \nincrease Fluchdauer um 2 Sekunden \nŸc; für Schmiede: \n \nbinc3 3 Level -Anforderung \nincrease Fluchdauer bis 1 Sekunde\n",
                enUS = "{blue}+3 Level Requirement\nIncrease Curse Duration by 2 seconds\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\nIncrease Curse Duration by 1 second\n",
                esES = "ÿC3 3 Nivel Requisito \nincrease Curse Duración por 2 segundos \n{purple} para herreros: \n \n ÿC3 3 Nivel Requisito \nincress Duración por 1 segundo\n",
                esMX = "ÿC3 3 Nivel Requisito \nincrease Curse Duración por 2 segundos \n{purple} para herreros: \n \n ÿC3 3 Nivel Requisito \nincress Duración por 1 segundo\n",
                frFR = "ÿC3 3 Niveau exigence \ningerse durée de la malédiction de 2 secondes \n{purple} pour les forgerons: \n \n{blue} 3 Niveau exigence \ningerse Durée de la malédiction de 1 seconde\n",
                itIT = "ÿC3 Requisito di 3 livelli \nincrease Curse Durata di 2 secondi \n{purple} per i fabbri: \n \n{blue} requisito a 3 livelli \nincrease maledizione durata di 1 secondo\n",
                jaJP = "C33レベル要件\ninクリース呪いの期間程度\nc;鍛冶屋の場合：\n \nc33レベル要件\nincrease呪いの期間\n",
                koKR = "{blue} 3 레벨 요구 사항 \nincrease 저주 지속 시간 \n{purple} 대장장이의 경우 : \n \n{blue} 3 레벨 요구 사항 \n 1 초 씩 저주 기간을 1 초\n",
                plPL = "ÿC3 3 Wymaganie poziomu \ninCrease Czas trwania o 2 sekundy \nÿC; dla kowalczy: \n \n{blue} 3 Wymaganie poziomu \nincrease Klątwa do 1 sekundy\n",
                ptBR = "{blue} Requisito de 3 níveis \nincrease Duração da maldição por 2 segundos \n{purple} para ferreiros: \n \n{blue} requisito de 3 níveis \nincrease Duração da maldição por 1 Segundo Segundo\n",
                ruRU = "{blue} 3 Требование уровня \nincrease продолжительность проклятия на 2 секунды \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \nincrease продолжительность проклятия на 1 секунду\n",
                zhCN = "C3 3级别要求\nincrease诅咒持续时间持续2秒\n²;对于铁匠：\n \n〜C3 3级别要求\nincrease诅咒持续时间1秒\n",
                zhTW = "C3 3級別要求\nincrease詛咒持續時間持續2秒\n²;對於鐵匠：\n \n〜C3 3級別要求\nincrease詛咒持續時間1秒\n",
            }
        },
        {
            code = "Z73",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 5 Level -Anforderung \nincrease Fluchradius durch 2 \nsprache; für Schmiede: \n \nbinc3 5 Level -Anforderung \nincrease Fluch Radius um 1\n",
                enUS = "{blue}+5 Level Requirement\nIncrease Curse Radius by 2\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\nIncrease Curse Radius by 1\n",
                esES = "ÿC3 Requisito de nivel 5 \nincrease Curse Radius por 2 \n{purple} para herreros: \n \n{blue} 5 Nivel Requisito \nincress Curse Radius por 1\n",
                esMX = "ÿC3 Requisito de nivel 5 \nincrease Curse Radius por 2 \n{purple} para herreros: \n \n{blue} 5 Nivel Requisito \nincress Curse Radius por 1\n",
                frFR = "ÿC3 5 Niveau exigence \ningerse Crease Radius de malédiction par 2 \n{purple} pour les forgerons: \n \n{blue} 5 Niveau exigence \ningerse Crease Radius par 1\n",
                itIT = "ÿC3 Requisito di livello 5 \nincrease Curse Raggio di 2 \n{purple} per i fabbri: \n \n{blue} 5 Livello requisito \nincrease Curse Raggio di 1\n",
                jaJP = "C35レベル要件\ninクリース呪いの半径は2 \nc;鍛冶屋の場合：\n \n{blue}5レベル要件\nincrease呪いの半径は1\n",
                koKR = "{blue} 5 레벨 요구 사항 \nincrease 저주 반경으로 2 \n{purple} 대장장이의 경우 : \n \n{blue} 5 레벨 요구 사항 \nincrease radius x 1\n",
                plPL = "{blue} 5 Wymagania poziomu \ninCrease Clamit\n",
                ptBR = "{blue} 5 Requisito de nível \nincrease Radius de maldição por 2 \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \nincrease Radius por 1 por 1\n",
                ruRU = "{blue} 5 Требование уровня \nincrease Радиус проклятия на 2 \n{purple} для кузнецов: \n \n{blue} 5 Требование уровня \nincrease Радиус проклятия на 1\n",
                zhCN = "C3 5级要求\nincrease诅咒半径2 \n²;对于铁匠：\n \n〜C3 5级别要求\nincrease curse curse Radius by 1\n",
                zhTW = "C3 5級要求\nincrease詛咒半徑2 \n²;對於鐵匠：\n \n〜C3 5級別要求\nincrease curse curse Radius by 1\n",
            }
        },
        {
            code = "Z74",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 5 Level -Anforderung \ncurse -Dauer auf sich selbst reduziert um 5%%\nŸc; für Schmiede: \n \nbinc3 5 Level -Anforderung \ncurse -Dauer auf sich selbst reduziert um 3%%\n",
                enUS = "{blue}+5 Level Requirement\nCurse Duration on Self Reduced by 5%%\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\nCurse Duration on Self Reduced by 3%%\n",
                esES = "ÿC3 5 Requisito de nivel \nCurse Duración en uno mismo reducido en 5%%\n{purple} para herreros: \n \n \n{blue} 5 requisito de nivel \ncurse duración en auto -3%%\n",
                esMX = "ÿC3 5 Requisito de nivel \nCurse Duración en uno mismo reducido en 5%%\n{purple} para herreros: \n \n \n{blue} 5 requisito de nivel \ncurse duración en auto -3%%\n",
                frFR = "ÿC3 5 Niveau exigence \ncurse Durée sur auto-réduite de 5%% \n{purple} pour les forgerons: \n \n{blue} 5 Niveau exigence \ncurse Durée sur auto-réduite de 3%%\n",
                itIT = "ÿC3 Requisito di livello 5 a 5 Durata \ncurse su auto ridotta del 5%%\n{purple} per i fabbri: \n \n{blue} 5 requisiti di livello \ncurse durata su auto ridotta del 3%%\n",
                jaJP = "C35レベル要件\ncurse in fir on self dequird dequire dequire dequirds blacksmiths：\n \n{blue}5レベル要件\n",
                koKR = "{blue} 5 레벨 요구 사항 \ncurse의 자체 기간은 5%%\n{purple} 대장장이의 경우 : \n \n{blue} 5 레벨 요구 사항 \ncurse 지속 시간 자체 감소 3%%\n",
                plPL = "ÿC3 5 Wymagania poziomu \ncurse Czas trwania na siebie zmniejszony o 5%%\n{purple} dla kowalczy: \n \n{blue} 5 Wymagania poziomu \ncurse Czas trwania samowystarczalności o 3%%\n",
                ptBR = "{blue} 5 Requisito de nível \n\ncurse em si mesmo reduzido em 5%%\n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n\ncurse duração em auto -reduzida em 3%%\n",
                ruRU = "ÿC3 5 Требование уровня \ncurse продолжительность самооценки на 5%%.\n",
                zhCN = "C3 5级别要求\ncurse在自我减少的持续时间为5%%\nc;对于铁匠：\n \n〜C3 5级别要求\ncurse on curse dcurse on自我减少的持续时间增长3%%\n",
                zhTW = "C3 5級別要求\ncurse在自我減少的持續時間為5%%\nc;對於鐵匠：\n \n〜C3 5級別要求\ncurse on curse dcurse on自我減少的持續時間增長3%%\n",
            }
        },
        {
            code = "Z75",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 2%% Block Chance \n¤; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 1%% Block Chance\n",
                enUS = "{blue}+3 Level Requirement\n+2%% Block Chance\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+1%% Block Chance\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 2%% BLOQUE DE BLOQUE\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 2%% BLOQUE DE BLOQUE\n",
                frFR = "{blue} 3 Niveau exigence \n 2%% Block Chance \n{purple} Pour les forgerons: \n \n{blue} 3 exigence de niveau \n 1%% de chance\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 2%% blocco Chance \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 1%% blocco probabilità\n",
                jaJP = "°3レベル要件\n 2%%ブロックチャンス\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 1%%ブロックチャンス\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 2%% 블록 기회 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 1%% 블록 확률\n",
                plPL = "ÿC3 3 Wymaganie poziomu \n 2%% szansa blokowa \n{purple} dla kowalczy: \n \n{blue} 3\n",
                ptBR = "{blue} Requisito de nível 3 \n 2%% Chance de bloco \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 1%% Chance de bloco\n",
                ruRU = "{blue} 3 Требование уровня \n 2%% блок шанс \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 1%% блок шанс\n",
                zhCN = "C3 3级别要求\n 2%%块机会\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 1%%块机会\n",
                zhTW = "C3 3級別要求\n 2%%塊機會\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 1%%塊機會\n",
            }
        },
        {
            code = "Z76",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 4%% Feuerwehrresist \nŸc; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 2%% Feuerresist\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Fire Resist\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Fire Resist\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir al fuego \nÿC; para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Resistir al fuego\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir al fuego \nÿC; para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Resistir al fuego\n",
                frFR = "{blue} 3 Niveau exigence \n 4%% résistant au feu \n{purple} pour les forgerons: \n \n{blue} 3 exigences de niveau \n 2%% de résistance au feu\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% Resistenza di incendio \n{purple} per i fabbri: \n \n{blue} Requisito di livello 3 \n 2%% Resistenza di incendio\n",
                jaJP = "°3レベル要件\n 4%%火災抵抗\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 2%%火災抵抗\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 내화성 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 내화성\n",
                plPL = "{blue} 3 Wymagania poziomu \n 4%% Ogniarnia \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de 3 níveis \n 4%% resistência a incêndio \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% de resistência ao incêndio\n",
                ruRU = "{blue} 3 Требование уровня \n 4%% Огненное сопротивление \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 2%% пожарного сопротивления\n",
                zhCN = "•C3 3级要求\n 4%%防火\n〜C;对于铁匠：\n \n²33级别要求\n 2%%防火\n",
                zhTW = "•C3 3級要求\n 4%%防火\n〜C;對於鐵匠：\n \n²33級別要求\n 2%%防火\n",
            }
        },
        {
            code = "Z77",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 4%% Kaltresist \nŸc; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 2%% Kaltresist\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Cold Resist\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Cold Resist\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir en frío \n{purple} para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Resistir en frío\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir en frío \n{purple} para herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Resistir en frío\n",
                frFR = "{blue} 3 Niveau exigence \n 4%% résistant à froid \n{purple} pour les forgerons: \n \n{blue} 3 Besoin de niveau \n 2%% de résistance à froid\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% a freddo resistenza \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 2%% resist a freddo\n",
                jaJP = "°3レベル要件\n 4%%コールドレジスト\n{purple}鍛冶屋の場合：\n \nΩ3レベル要件\n 2%%コールドレジスト\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 콜드 저항 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 콜드 저항\n",
                plPL = "{blue} 3 Wymagania poziomu \n 4%% odporność na zimno \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de 3 níveis \n 4%% resistência a frio \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% Resistência a frio\n",
                ruRU = "{blue} 3 Требование уровня \n 4%% холодное сопротивление \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 2%% холодного сопротивления\n",
                zhCN = "C3 3级要求\n 4%%冷抗\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 2%%冷抗\n",
                zhTW = "C3 3級要求\n 4%%冷抗\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 2%%冷抗\n",
            }
        },
        {
            code = "Z78",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level -Anforderung \n 4%% Blitzresist \n¤; für Schmiede: \n \nbinc3 3 Level -Anforderung \n 2%% Lightning Resist\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Lightning Resist\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Lightning Resist\n",
                esES = "ÿC3 3 Requisito de nivel \n 4%% Lightning Resist \nÿC; Para los herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Rightning Resist\n",
                esMX = "ÿC3 3 Requisito de nivel \n 4%% Lightning Resist \nÿC; Para los herreros: \n \nÿC3 3 Nivel Requisito \n 2%% Rightning Resist\n",
                frFR = "{blue} 3 Niveau exigence \n 4%% Lightning Resist \n{purple} Pour les forgerons: \n \n{blue} 3 Besoin de niveau \n 2%% de foudre Résister\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% Lightning Resist \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 2%% fulmini resistenti\n",
                jaJP = "°3レベル要件\n 4%%Lightning Resist \n{purple}鍛冶屋の場合：\n \nc33レベル要件\n 2%%稲妻抵抗\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 번개 저항 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 번개 저항\n",
                plPL = "ÿC3 3 Wymagania poziomu \n 4%% Błyskawicy Odporność \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de 3 níveis \n 4%% resistência ao raio \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% resistência ao raio\n",
                ruRU = "{blue} 3 Требование уровня \n 4%% молния\n",
                zhCN = "•C3 3级要求\n 4%%闪电抵抗\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 2%%闪电抗性\n",
                zhTW = "•C3 3級要求\n 4%%閃電抵抗\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 2%%閃電抗性\n",
            }
        },
        {
            code = "Z79",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 4%% Giftresist \n¤; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 2%% Giftresist\n",
                enUS = "{blue}+3 Level Requirement\n+4%% Poison Resist\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+2%% Poison Resist\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir venenoso\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 4%% Resistir venenoso\n",
                frFR = "ÿC3 3 Niveau exigence \n 4%% Résisonction de poison \n{purple} Pour les forgerons: \n \n{blue} 3 Besoin de niveau \n 2%% Résister à Poison\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 4%% di veleno resiste \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 2%% di veleno resister\n",
                jaJP = "°3レベル要件\n 4%%毒抵抗\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 2%%毒抵抗\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 4%% 독에 대한 저항 \n{purple} 대장장이의 경우 : \n \n{blue} 3 레벨 요구 사항 \n 2%% 독에 대한 저항\n",
                plPL = "{blue} 3 Wymagania poziomu \n 4%% Resist \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de nível 3 \n 4%% de resistência ao veneno \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 2%% de resistência ao veneno\n",
                ruRU = "ÿC3 3 Требование уровня \n 4%% яд\n",
                zhCN = "C3 3水平要求\n 4%%毒药抵抗\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 2%%毒药抵抗\n",
                zhTW = "C3 3水平要求\n 4%%毒藥抵抗\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 2%%毒藥抵抗\n",
            }
        },
        {
            code = "Z80",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 5 Level -Anforderung \n 8%% Bonus auf Angriffsbewertung \nsprache; für Schmiede: \n \nbinc3 5 Level -Anforderung \n 5%% Bonus zur Angriffsbewertung\n",
                enUS = "{blue}+5 Level Requirement\n+8%% Bonus to Attack Rating\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+5%% Bonus to Attack Rating\n",
                esES = "ÿC3 5 Requisito de nivel \n 8%% Bonificación para atacar la clasificación \n{purple} para los herreros: \n \nÿC3 5 Requisito de nivel \n 5%% Bonificación para atacar la calificación\n",
                esMX = "ÿC3 5 Requisito de nivel \n 8%% Bonificación para atacar la clasificación \n{purple} para los herreros: \n \nÿC3 5 Requisito de nivel \n 5%% Bonificación para atacar la calificación\n",
                frFR = "ÿC3 5 Niveau exigence \n 8%% BONUS À la note d'attaque \nÿC; pour les forgerons: \n \n{blue} 5 Niveau exigence \n 5%% de bonus à l'attaque\n",
                itIT = "ÿC3 Requisito di livello 5 \n 8%% bonus al rating di attacco \n{purple} per i fabbri: \n \n{blue} 5 LIVELLO REDICAZIONE \n Bonus 5%% al rating di attacco\n",
                jaJP = "C35レベル要件\n 8%%攻撃のボーナス攻撃\n{purple}鍛冶屋の場合：\n \n{blue}5レベル要件\n 5%%ボーナス攻撃格付けのボーナス\n",
                koKR = "{blue} 5 레벨 요구 사항 \n 8%% 공격 등급에 대한 보너스 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 공격 등급에 대한 5%% 보너스\n",
                plPL = "ÿC3 5 Wymagania poziomu \n 8%% premia do oceny ataku \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de 5%% do nível de 5%% para atacar a classificação \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 5%% Bônus para atacar classificação de ataque\n",
                ruRU = "ÿC3 5 Требование уровня \n 8%% бонус к рейтингу атаки \n{purple} для кузнецов: \n \n{blue} 5 Требование уровня \n 5%% бонус к рейтингу атаки\n",
                zhCN = "C3 5级别要求\n 8%%奖励攻击等级\n〜C;对于铁匠：\n \n设施\n",
                zhTW = "C3 5級別要求\n 8%%獎勵攻擊等級\n〜C;對於鐵匠：\n \n設施\n",
            }
        },
        {
            code = "Z81",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 4 Level -Anforderung \n 250 Angriffsbewertung \n¤; für Schmiede: \n \nbinc3 4 Level -Anforderung \n 150 Angriffsbewertung\n",
                enUS = "{blue}+4 Level Requirement\n+250 Attack Rating\n{purple}For Blacksmiths:\n\n{blue}+4 Level Requirement\n+150 Attack Rating\n",
                esES = "ÿC3 4 REQUISITO DE NIVEL \n 250 Clasificación de ataque \n{purple} para herreros: \n \nÿC3 4 requisito de nivel \n 150 clasificación de ataque\n",
                esMX = "ÿC3 4 REQUISITO DE NIVEL \n 250 Clasificación de ataque \n{purple} para herreros: \n \nÿC3 4 requisito de nivel \n 150 clasificación de ataque\n",
                frFR = "ÿC3 4 Niveau exigence \n 250 Évaluation d'attaque \n{purple} pour les forgerons: \n \n{blue} 4 Niveau exigence \n 150 Évaluation d'attaque\n",
                itIT = "ÿC3 Requisito a 4 livelli \n 250 Valutazione degli attacchi \n{purple} per i fabbri: \n \n{blue} Requisito di livello 4 \n 150 Valutazione degli attacchi\n",
                jaJP = "°4レベル要件\n 250攻撃評価\n{purple}鍛冶屋の場合：\n \n{blue}4レベル要件\n 150攻撃評価\n",
                koKR = "{blue} 4 레벨 요구 사항 \n 250 공격 등급 \n{purple} 대장장이 : \n \n{blue} 4 레벨 요구 사항 \n 150 공격 등급\n",
                plPL = "{blue} 4 wymaganie poziomu \n 250 Ocena ataku \n{purple} dla kowal\n",
                ptBR = "{blue} 4 Requisito de nível \n 250 Classificação de ataque \n{purple} para ferreiros: \n \n{blue} requisito de nível 4 \n 150 Classificação de ataque\n",
                ruRU = "{blue} 4 Требование уровня \n 250 Рейтинг атаки \n{purple} для кузнецов: \n \n{blue} 4 Требование уровня \n 150 Рейтинг атаки\n",
                zhCN = "ÿC34级别要求\n 250攻击等级\n〜C;对于铁匠：\n \n〜C3 4级别要求\n 150攻击等级\n",
                zhTW = "ÿC34級別要求\n 250攻擊等級\n〜C;對於鐵匠：\n \n〜C3 4級別要求\n 150攻擊等級\n",
            }
        },
        {
            code = "Z82",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Levelanforderung \n 3 Schaden \nŸc; für Schmiede: \n \nŸc3 2 Level -Anforderung \n 2 Schaden\n",
                enUS = "{blue}+2 Level Requirement\n+3 Damage\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+2 Damage\n",
                esES = "ÿC3 2 Requisito de nivel \n 3 Daño \nÿC; Para los herreros: \n \nÿC3 2 Requisito de nivel \n 2 Daño\n",
                esMX = "ÿC3 2 Requisito de nivel \n 3 Daño \nÿC; Para los herreros: \n \nÿC3 2 Requisito de nivel \n 2 Daño\n",
                frFR = "{blue} 2 Niveau exigence \n 3 dommages \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 2 dommages\n",
                itIT = "ÿC3 requisito di livello 2 \n 3 danno \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \n 2 danno\n",
                jaJP = "C32レベル要件\n 3ダメージ\n{purple}鍛冶屋の場合：\n \n \n{blue}2レベル要件\n 2ダメージ\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 3 손상 \n{purple} 대장장이의 경우 : \n \n{blue} 2 레벨 요구 사항 \n 2 손상\n",
                plPL = "{blue} 2 Wymagania poziomu \n 3 obrażenia \n{purple} dla kowalczy: \n \n{blue} 2 wymagania poziomu \n 2 obrażenia\n",
                ptBR = "{blue} 2 Requisito de nível \n 3 danos \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 2 danos\n",
                ruRU = "{blue} 2 Требование уровня \n 3 Урон \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 2 Урон\n",
                zhCN = "C3 2级别要求\n 3损坏\n〜C;对于铁匠：\n \n〜C3 2级别要求\n 2伤害\n",
                zhTW = "C3 2級別要求\n 3損壞\n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 2傷害\n",
            }
        },
        {
            code = "Z83",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 7%% erhöhte Schädigung \nŸc; für Schmiede: \n \nŸc3 3 Level -Anforderung \n 4%% Verbesserter Schaden\n",
                enUS = "{blue}+3 Level Requirement\n+7%% Enhanced Damage\n{purple}For Blacksmiths:\n\n{blue}+3 Level Requirement\n+4%% Enhanced Damage\n",
                esES = "ÿC3 3 Requisito de nivel \n 7%% Daño mejorado \nÿC; para herreros: \n \nÿC3 3 REQUISITO DE NIVEL \n 4%% DAÑO MEJORADO\n",
                esMX = "ÿC3 3 Requisito de nivel \n 7%% Daño mejorado \nÿC; para herreros: \n \nÿC3 3 REQUISITO DE NIVEL \n 4%% DAÑO MEJORADO\n",
                frFR = "{blue} 3 Niveau exigence \n 7%% Dommages améliorés \nÿC; Pour les forgerons: \n \n{blue} 3 Besoin de niveau \n 4%% de dégâts améliorés\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 7%% danno migliorato \n{purple} per i fabbri: \n \n{blue} requisito di livello 3 \n 4%% danno migliorato\n",
                jaJP = "°3レベル要件\n 7%%強化ダメージ\n{purple}鍛冶屋の場合：\n \n{blue}3レベル要件\n 4%%強化ダメージ\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 7%% 향상된 손상 \n{purple} 대장장이 : \n \n{blue} 3 레벨 요구 사항 \n 4%% 향상된 손상\n",
                plPL = "{blue} 3 Wymagania poziomu \n 7%% Zwiększone obrażenia \n{purple} dla kowal\n",
                ptBR = "{blue} Requisito de 3 níveis \n 7%% Dano aumentado \n{purple} para ferreiros: \n \n{blue} 3 requisito de nível \n 4%% dano aumentado\n",
                ruRU = "{blue} 3 Требование уровня \n 7%% Увеличенное урон \n{purple} для кузнецов: \n \n{blue} 3 Требование уровня \n 4%% Увеличенное повреждение\n",
                zhCN = "•C3 3级要求\n 7%%增强的伤害\n〜C;对于铁匠：\n \n〜C3 3级别要求\n 4%%增强的伤害\n",
                zhTW = "•C3 3級要求\n 7%%增強的傷害\n〜C;對於鐵匠：\n \n〜C3 3級別要求\n 4%%增強的傷害\n",
            }
        },
        {
            code = "Z84",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Levelanforderung \n 7-10 Brandschaden \nŸc; für Schmiede: \n \nŸc3 2 Level-Anforderung \n 4-7 Brandschaden\n",
                enUS = "{blue}+2 Level Requirement\n+7-10 Fire Damage\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+4-7 Fire Damage\n",
                esES = "ÿC3 2 Requisito de nivel \n 7-10 Daño de fuego \n{purple} para herreros: \n \n{blue} 2 requisito de nivel \n 4-7 Daño de fuego\n",
                esMX = "ÿC3 2 Requisito de nivel \n 7-10 Daño de fuego \n{purple} para herreros: \n \n{blue} 2 requisito de nivel \n 4-7 Daño de fuego\n",
                frFR = "ÿC3 2 Niveau exigence \n 7-10 Dégâts de feu \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 4-7 Dégâts d'incendie\n",
                itIT = "ÿC3 requisito di livello 2 \n 7-10 danni da fuoco \n{purple} per i fabbri: \n \n{blue} requisito di livello 2 \n 4-7 danni da fuoco\n",
                jaJP = "°2レベル要件\n 7-10火災損傷\n{purple}鍛冶屋の場合：\n \n{blue}2レベル要件\n 4-7火災ダメージ\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 7-10 화재 손상 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 4-7 화재 피해\n",
                plPL = "{blue} 2 Wymagania poziomu \n 7-10 Obrażenia od pożaru \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 7-10 Dano de incêndio \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 4-7 Dano de incêndio\n",
                ruRU = "ÿC3 2 Требование уровня \n 7-10 Пожарный урон \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \n 4-7 Пожарный урон\n",
                zhCN = "C3 2级别要求\n 7-10火灾伤害\n〜C;对于铁匠：\n \n〜C3 2级别要求\n 4-7火灾伤害\n",
                zhTW = "C3 2級別要求\n 7-10火災傷害\n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 4-7火災傷害\n",
            }
        },
        {
            code = "Z85",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Levelanforderung \n 7-10 Kaltschäden \nŸc; für Schmiede: \n \nbinc3 2 Level-Anforderung \n 4-7 Kaltschaden\n",
                enUS = "{blue}+2 Level Requirement\n+7-10 Cold Damage\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+4-7 Cold Damage\n",
                esES = "ÿC3 2 Requisito de nivel \n 7-10 Daño en frío \n{purple} para herreros: \n \nÿC3 2 Nivel Requisito \n 4-7 Daño frío\n",
                esMX = "ÿC3 2 Requisito de nivel \n 7-10 Daño en frío \n{purple} para herreros: \n \nÿC3 2 Nivel Requisito \n 4-7 Daño frío\n",
                frFR = "ÿC3 2 Niveau exigence \n 7-10 Dégâts du froid \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 4-7 Dégâts du froid\n",
                itIT = "ÿC3 requisito di livello 2 \n 7-10 Danno freddo \n{purple} per i fabbri: \n \n{blue} requisito di livello 2 \n 4-7 danni da freddo\n",
                jaJP = "°2レベル要件\n 7-10コールドダメージ\n{purple}鍛冶屋の場合：\n \n{blue}2レベル要件\n 4-7コールドダメージ\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 7-10 콜드 데미지 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 4-7 콜드 피해\n",
                plPL = "{blue} 2 Wymagania poziomu \n 7-10 obrażeń zimnych \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 7-10 Dano de frio \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 4-7 danos causados ​​pelo frio\n",
                ruRU = "{blue} 2 Требование уровня \n 7-10 холодный урон \n{purple} для кузнецов: \n \n{blue} 2 уровня требования \n 4-7 холодный урон\n",
                zhCN = "C3 2级别要求\n 7-10冷损害\n²;对于铁匠：\n \n〜C3 2级别要求\n 4-7冷损害\n",
                zhTW = "C3 2級別要求\n 7-10冷損害\n²;對於鐵匠：\n \n〜C3 2級別要求\n 4-7冷損害\n",
            }
        },
        {
            code = "Z86",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Levelanforderung \n 1-28 Blitzschaden \nŸc; für Schmiede: \n \nbinc3 2 Level-Anforderung \n 1-14 Blitzschaden\n",
                enUS = "{blue}+2 Level Requirement\n+1-28 Lightning Damage\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+1-14 Lightning Damage\n",
                esES = "ÿC3 2 Requisito de nivel \n 1-28 Daño de Lightning \nÿC; Para los herreros: \n \nÿC3 Requisito de nivel de nivel \n 1-14 Daño de Lightning\n",
                esMX = "ÿC3 2 Requisito de nivel \n 1-28 Daño de Lightning \nÿC; Para los herreros: \n \nÿC3 Requisito de nivel de nivel \n 1-14 Daño de Lightning\n",
                frFR = "{blue} 2 Niveau exigence \n 1-28 Dommage de foudre \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 1-14 dommage de la foudre\n",
                itIT = "ÿC3 requisito a 2 livelli \n 1-28 Danno fulmine \n{purple} per i fabbri: \n \n{blue} requisito di livello 2 \n 1-14 danni da fulmine\n",
                jaJP = "°2レベル要件\n 1-28稲妻ダメージ\nc;鍛冶屋の場合：\n \nc32レベル要件\n 1-14稲妻ダメージ\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 1-28 번개 손상 \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 1-14 번개 손상\n",
                plPL = "{blue} 2 Wymagania poziomu \n 1-28 Uszkodzenie błyskawicy \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 1-28 Dano de raios \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 1-14 Dano de raios\n",
                ruRU = "{blue} 2 Требование уровня \n 1-28 Урон молниенос.\n",
                zhCN = "C3 2级别要求\n 1-28闪电伤害\n设施；对于铁匠：\n \n〜C3 2级别要求\n 1-14闪电伤害\n",
                zhTW = "C3 2級別要求\n 1-28閃電傷害\n設施；對於鐵匠：\n \n〜C3 2級別要求\n 1-14閃電傷害\n",
            }
        },
        {
            code = "Z87",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Levelanforderung \n 40 Giftschäden über 2 Sekunden \nŸc; für Schmiede: \n \nbinc3 2 Level -Anforderung \n 20 Giftschäden über 2 Sekunden\n",
                enUS = "{blue}+2 Level Requirement\n+40 Poison Damage over 2 Seconds\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+20 Poison Damage over 2 Seconds\n",
                esES = "ÿC3 2 Requisito de nivel \n 40 Daño de veneno durante 2 segundos \n{purple} para herreros: \n \nÿC3 2 Nivel Requisito \n 20 Daño de veneno durante 2 segundos\n",
                esMX = "ÿC3 2 Requisito de nivel \n 40 Daño de veneno durante 2 segundos \n{purple} para herreros: \n \nÿC3 2 Nivel Requisito \n 20 Daño de veneno durante 2 segundos\n",
                frFR = "{blue} 2 Niveau exigence \n 40 dommages de poison sur 2 secondes \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 20 dommages de poison en 2 secondes\n",
                itIT = "{blue} requisito di livello 2 \n 40 danni da veleno su 2 secondi \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \n 20 danni da veleno in 2 secondi\n",
                jaJP = "°2レベル要件\n 40 2秒にわたる毒物損傷\n{purple}鍛冶屋の場合：\n \nc32レベル要件\n 20 2秒間の毒物損傷\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 40 2 초에 걸친 독 피해 \n{purple} 대장장이의 경우 : \n \n{blue} 2 레벨 요구 사항 \n 20 2 초의 독 손상\n",
                plPL = "ÿC3 2 Wymaganie poziomu \n 40 Uszkodzenie zatrucia w ciągu 2 sekund \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 40 Danos por veneno em 2 segundos \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 20 danos de veneno em 2 segundos\n",
                ruRU = "ÿC3 2 Требование уровня \n 40 Урон ядовитом в течение 2 секунд\n",
                zhCN = "ÿC32级别要求\n 40毒害在2秒内\n〜C;对于铁匠：\n \n〜C3 2级别要求\n 20毒害损害2秒\n",
                zhTW = "ÿC32級別要求\n 40毒害在2秒內\n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 20毒害損害2秒\n",
            }
        },
        {
            code = "Z88",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Level Anforderung \n 5%% Magic Find \nsprache; für Schmiede: \n \nbinc3 5 Level -Anforderung \n 5%% Magic Find\n",
                enUS = "{blue}+3 Level Requirement\n+5%% Magic Find\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+5%% Magic Find\n",
                esES = "ÿC3 3 Nivel Requisito \n 5%% Magic Find \nÿC; Para los herreros: \n \nÿC3 5 Nivel Requisito \n 5%% Magic Find\n",
                esMX = "ÿC3 3 Nivel Requisito \n 5%% Magic Find \nÿC; Para los herreros: \n \nÿC3 5 Nivel Requisito \n 5%% Magic Find\n",
                frFR = "{blue} 3 Niveau exigence \n 5%% Magic Find \n{purple} Pour les forgerons: \n \n{blue} 5 Niveau exigence \n 5%% Magic Find\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 5%% Magic Find \n{purple} per i fabbri: \n \n{blue} requisito di livello 5 \n 5%% Magic Find\n",
                jaJP = "°3レベル要件\n 5%%マジックファインド\n{purple}鍛冶屋の場合：\n \n{blue}5レベル要件\n 5%%マジックファインド\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 5%% 마술 찾기 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 5%% 마술 찾기\n",
                plPL = "{blue} 3 Wymagania poziomu \n 5%% Magic Find \n{purple} dla kowalskich: \n \n{blue} 5\n",
                ptBR = "{blue} 3 Requisito de nível \n 5%% Magic encontre \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 5%% Magic encontre\n",
                ruRU = "{blue} 3 Требование уровня \n 5%% Волшебство\n",
                zhCN = "C3 3级别要求\n 5%%魔术查找\n〜C;对于铁匠：\n \n〜C3 5级别要求\n 5%%魔术查找\n",
                zhTW = "C3 3級別要求\n 5%%魔術查找\n〜C;對於鐵匠：\n \n〜C3 5級別要求\n 5%%魔術查找\n",
            }
        },
        {
            code = "Z89",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 10%% Gold Find \n¤; für Schmiede: \n \nŸc3 5 Level -Anforderung \n 10%% Gold Find Find\n",
                enUS = "{blue}+3 Level Requirement\n+10%% Gold Find\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+10%% Gold Find\n",
                esES = "ÿC3 3 Nivel Requisito \n 10%% Gold Find \nÿC; Para herreros: \n \nÿC3 5 Nivel Requisito \n 10%% de oro Encuentra\n",
                esMX = "ÿC3 3 Nivel Requisito \n 10%% Gold Find \nÿC; Para herreros: \n \nÿC3 5 Nivel Requisito \n 10%% de oro Encuentra\n",
                frFR = "ÿC3 3 Niveau exigence \n 10%% d'or trouver \n{purple} pour les forgerons: \n \n{blue} 5 exigence de niveau \n 10%% d'or.\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 10%% Gold Find \n{purple} per i fabbri: \n \n{blue} Requisito di livello 5 \n 10%% Gold Find\n",
                jaJP = "°3レベル要件\n 10%%ゴールドファインド\n{purple}鍛冶屋の場合：\n \nc35レベル要件\n 10%%ゴールドファインド\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 10%% 골드 찾기 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 10%% 골드 찾기\n",
                plPL = "{blue} 3 Wymaganie poziomu \n 10%% Złota Znajdź \n{purple} dla kowalczy: \n \n{blue} 5\n",
                ptBR = "{blue} Requisito de 3 níveis \n 10%% Gold encontre \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 10%% de ouro achado\n",
                ruRU = "ÿC3 3 Требование уровня \n 10%% золото находки \n{purple} для кузнецов: \n \n{blue} 5 уровня требования \n 10%% золото находки\n",
                zhCN = "C3 3级别要求\n 10%%黄金查找\n〜C;对于铁匠：\n \n〜C3 5级别需求\n 10%%黄金查找\n",
                zhTW = "C3 3級別要求\n 10%%黃金查找\n〜C;對於鐵匠：\n \n〜C3 5級別需求\n 10%%黃金查找\n",
            }
        },
        {
            code = "Z90",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 1%% Lebensdiebstahl \nsprache;\n",
                enUS = "{blue}+2 Level Requirement\n+1%% Life Steal\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+1%% Life Steal\n",
                esES = "ÿC3 2 Requisito de nivel \n 1%% Life Steal \nÿC; Para los herreros: \n \nÿC3 5 Nivel Requisito \n 1%% Life robar\n",
                esMX = "ÿC3 2 Requisito de nivel \n 1%% Life Steal \nÿC; Para los herreros: \n \nÿC3 5 Nivel Requisito \n 1%% Life robar\n",
                frFR = "ÿC3 2 Niveau exigence \n 1%% Verce de durée de vie \n{purple} pour les forgerons: \n \n{blue} 5 Niveau exigence \n 1%% de vie voler\n",
                itIT = "ÿC3 requisito a 2 livelli \n 1%% Life Steal \n{purple} per i fabbri: \n \n{blue} requisito di livello 5 \n 1%% di vita rubata\n",
                jaJP = "°2レベル要件\n 1%%寿命\nc;鍛冶屋の場合：\n \n{blue}5レベル要件\n 1%%ライフスチール\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 1%% 수명 도둑\n",
                plPL = "{blue} 2 Wymagania poziomu \n 1%% kradzież życia \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 1%% de roubo de vida \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 1%% de roubo de vida\n",
                ruRU = "{blue} 2 Требование уровня \n 1%% Жизнь кража \n{purple} для кузнецов: \n \n{blue} 5 Требование уровня \n 1%%\n",
                zhCN = "C3 2级别要求\n 1%%杀人\n〜C;对于铁匠：\n \n〜C3 5级别要求\n 1%%杀人\n",
                zhTW = "C3 2級別要求\n 1%%殺人\n〜C;對於鐵匠：\n \n〜C3 5級別要求\n 1%%殺人\n",
            }
        },
        {
            code = "Z91",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 2 Level -Anforderung \n 1%% Mana stehlen \nŸc; für Schmiede: \n \nbinc3 5 Level -Anforderung \n 1%% Mana Steal\n",
                enUS = "{blue}+2 Level Requirement\n+1%% Mana Steal\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+1%% Mana Steal\n",
                esES = "ÿC3 2 Requisito de nivel \n 1%% Maná robo \n{purple} para herreros: \n \n{blue} requisito de nivel de nivel \n 1%% robo de maná\n",
                esMX = "ÿC3 2 Requisito de nivel \n 1%% Maná robo \n{purple} para herreros: \n \n{blue} requisito de nivel de nivel \n 1%% robo de maná\n",
                frFR = "{blue} 2 Niveau exigence \n 1%% mana voler \n{purple} pour les forgerons: \n \n{blue} 5 exigence de niveau \n 1%% mana voler\n",
                itIT = "{blue} requisito di livello 2 \n 1%% mana ruba\n",
                jaJP = "°2レベル要件\n 1%%MANA STEAL \nÿC;鍛冶屋の場合：\n \n{blue}5レベル要件\n 1%%mana steal\n",
                koKR = "{blue} 2 레벨 요구 사항 \n 1%% 마나 도둑질 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 1%% 마나 도둑질\n",
                plPL = "{blue} 2 Wymagania poziomu \n 1%% mana kradną \n{purple} dla kowal\n",
                ptBR = "{blue} 2 Requisito de nível \n 1%% de mana roubo \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 1%% de mana roubo\n",
                ruRU = "{blue} 2 Требование уровня \n 1%% Мана крадет \n{purple} для кузнецов: \n \n{blue} 5 уровня требования \n 1%%\n",
                zhCN = "ÿC32级别要求\n 1%%努力偷窃\n设备;对于铁匠：\n \n〜C3 5级别要求\n 1%%法力窃取\n",
                zhTW = "ÿC32級別要求\n 1%%努力偷竊\n設備;對於鐵匠：\n \n〜C3 5級別要求\n 1%%法力竊取\n",
            }
        },
        {
            code = "Z92",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 1 Level -Anforderung \n 5%% Mana regen \nühlen;\n",
                enUS = "{blue}+1 Level Requirement\n+5%% Mana Regen\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\n+5%% Mana Regen\n",
                esES = "ÿC3 1 Requisito de nivel \n 5%% Regen de maná \n{purple} Para herreros: \n \nÿC3 2 requisito de nivel \n 5%% Regen de maná\n",
                esMX = "ÿC3 1 Requisito de nivel \n 5%% Regen de maná \n{purple} Para herreros: \n \nÿC3 2 requisito de nivel \n 5%% Regen de maná\n",
                frFR = "{blue} 1 Niveau exigence \n 5%% mana Regen \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \n 5%% mana régén\n",
                itIT = "ÿC3 1 requisito di livello \n 5%% mana regen \n{purple} per fabbri: \n \n{blue} requisito di livello 2 \n 5%% mana regen\n",
                jaJP = "C31レベル要件\n 5%%MANA REGEN \nÿC;鍛冶屋の場合：\n \n{blue}2レベル要件\n 5%%MANA REGEN\n",
                koKR = "{blue} 1 레벨 요구 사항 \n 5%% 마나 regen \n{purple} 대장장이 : \n \n{blue} 2 레벨 요구 사항 \n 5%% 마나 레지턴\n",
                plPL = "ÿC3 1 Wymaganie poziomu \n 5%% mana regenen \n{purple} dla kowal\n",
                ptBR = "{blue} 1 Requisito de nível \n 5%% mana regen \n{purple} para ferreiros: \n \n{blue} 2 requisito de nível \n 5%% mana regen\n",
                ruRU = "{blue} 1 Требование уровня \n 5%% мана регенерация\n",
                zhCN = "C3 1级别需求\n 5%%法力恢复\n〜C;对于铁匠：\n \n〜C3 2级别要求\n 5%%法力再生\n",
                zhTW = "C3 1級別需求\n 5%%法力恢復\n〜C;對於鐵匠：\n \n〜C3 2級別要求\n 5%%法力再生\n",
            }
        },
        {
            code = "Z93",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 1 Level -Anforderung \nhits reduzieren die feindliche Verteidigung um 10 \nsprache;\n",
                enUS = "{blue}+1 Level Requirement\nHits Reduce Enemy Defense by 10\n{purple}For Blacksmiths:\n\n{blue}+2 Level Requirement\nHits Reduce Enemy Defense by 10\n",
                esES = "ÿC3 1 Requisito de nivel \nhits reduce la defensa enemiga por 10 \n{purple} para herreros: \n \n{blue} 2 requisito de nivel \nhits reduce la defensa enemiga en 10\n",
                esMX = "ÿC3 1 Requisito de nivel \nhits reduce la defensa enemiga por 10 \n{purple} para herreros: \n \n{blue} 2 requisito de nivel \nhits reduce la defensa enemiga en 10\n",
                frFR = "ÿC3 1 Niveau exigence \nhits réduisent la défense ennemie de 10 \n{purple} pour les forgerons: \n \n{blue} 2 Niveau exigence \nhits réduisent la défense ennemie de 10\n",
                itIT = "ÿC3 1 Livello Requisito \nhits riduce la difesa nemica di 10 \n{purple} per i fabbri: \n \n{blue} 2 requisiti di livello \nhit riduce la difesa nemica di 10\n",
                jaJP = "C31レベル要件\nhits鍛冶屋の場合、敵の防御を10 \n{purple}\n",
                koKR = "{blue} 1 레벨 요구 사항 \nhits는 적의 방어를 10 \nÿc로 줄입니다. 대장장이 : \n \n{blue} 2 레벨 요구 사항 \nhits 적 방어를 10으로 줄입니다.\n",
                plPL = "{blue} 1 Wymagania poziomu \nhits Zmniejsz obronę wroga o 10 \n{purple} dla kowalczy: \n \n{blue} 2 wymagania poziomu \nhits Zmniejsz obronę wroga o 10\n",
                ptBR = "{blue} 1 Requisito de nível \nhits reduz a defesa inimiga em 10 \n{purple} para ferreiros: \n \n{blue} 2 requisitos de nível \nhits reduz a defesa inimiga por 10\n",
                ruRU = "{blue} 1 Требование уровня \nhits уменьшает оборону противника на 10 \n{purple} для кузнецов: \n \n{blue} 2 Требование уровня \nhits уменьшает защиту противника на 10\n",
                zhCN = "•C3 1级要求\n -nits将敌人的防御减少10 \n²；对于铁匠：\n \n²C32级别要求\n -thits将敌人的防御减少10\n",
                zhTW = "•C3 1級要求\n -nits將敵人的防禦減少10 \n²；對於鐵匠：\n \n²C32級別要求\n -thits將敵人的防禦減少10\n",
            }
        },
        {
            code = "Z94",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 5 physikalische Schadensreduzierung \n¤; für Schmiede: \n \nbinc3 5 Level -Anforderung \n 5 physikalische Schadensreduzierung\n",
                enUS = "{blue}+3 Level Requirement\n+5 Physical Damage Reduction\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+5 Physical Damage Reduction\n",
                esES = "ÿC3 3 REQUISITO DE NIVEL \n 5 Reducción de daño físico \n{purple} para herreros: \n \nÿC3 5 requisito de nivel \n 5 reducción de daño físico\n",
                esMX = "ÿC3 3 REQUISITO DE NIVEL \n 5 Reducción de daño físico \n{purple} para herreros: \n \nÿC3 5 requisito de nivel \n 5 reducción de daño físico\n",
                frFR = "{blue} 3 Niveau exigence \n 5 Réduction des dommages physiques \n{purple} pour les forgerons: \n \n{blue} 5 Besoin de niveau \n 5 Réduction des dommages physiques\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 5 Riduzione del danno fisico \n{purple} per i fabbri: \n \n{blue} requisito di livello 5 \n 5 Riduzione del danno fisico\n",
                jaJP = "°3レベル要件\n 5身体的ダメージの軽減\nc;鍛冶屋の場合：\n \n{blue}5レベル要件\n 5物理的なダメージの軽減\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 5 물리적 손상 감소 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 5 물리적 손상 감소\n",
                plPL = "ÿC3 3 Wymaganie poziomu \n 5 Redukcja obrażeń fizycznych \n{purple} dla kowalczy: \n \n{blue} 5 Wymagania poziomu \n 5 Redukcja obrażeń fizycznych\n",
                ptBR = "{blue} Requisito de 3 níveis \n 5 Redução de danos físicos \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 5 redução de danos físicos\n",
                ruRU = "ÿC3 3 Требование уровня \n 5 Уничтожение физического урона \n{purple} для кузнецов: \n \n{blue} 5 Требование уровня \n 5 Уничтожение физического урона\n",
                zhCN = "C3 3级要求\n 5物理伤害减少\n〜C;对于铁匠：\n \n〜C3 5级别要求\n 5降低物理伤害\n",
                zhTW = "C3 3級要求\n 5物理傷害減少\n〜C;對於鐵匠：\n \n〜C3 5級別要求\n 5降低物理傷害\n",
            }
        },
        {
            code = "Z95",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 3 Levelanforderung \n 5 magische Schadensreduzierung \nsprache; für Schmiede: \n \nbinc3 5 Level -Anforderung \n 5 magische Schadensreduzierung\n",
                enUS = "{blue}+3 Level Requirement\n+5 Magical Damage Reduction\n{purple}For Blacksmiths:\n\n{blue}+5 Level Requirement\n+5 Magical Damage Reduction\n",
                esES = "ÿC3 3 Requisito de nivel \n 5 Reducción de daño mágico \nÿC; Para herreros: \n \nÿC3 5 REQUISITO DE NIVEL \n 5 Reducción de daño mágico\n",
                esMX = "ÿC3 3 Requisito de nivel \n 5 Reducción de daño mágico \nÿC; Para herreros: \n \nÿC3 5 REQUISITO DE NIVEL \n 5 Reducción de daño mágico\n",
                frFR = "{blue} 3 Niveau exigence \n 5 Réduction des dégâts magiques \n{purple} pour les forgerons: \n \n{blue} 5 Besoin de niveau \n 5 Réduction des dégâts magiques\n",
                itIT = "ÿC3 Requisito a 3 livelli \n 5 Riduzione del danno magico \n{purple} per i fabbri: \n \n{blue} requisito di livello 5 \n 5 Riduzione del danno magico\n",
                jaJP = "°3レベル要件\n 5魔法のダメージの軽減\n{purple}鍛冶屋の場合：\n \nc35レベル要件\n 5魔法のダメージの軽減\n",
                koKR = "{blue} 3 레벨 요구 사항 \n 5 마법의 손상 감소 \n{purple} 대장장이 : \n \n{blue} 5 레벨 요구 사항 \n 5 마법의 손상 감소\n",
                plPL = "{blue} 3 Wymaganie poziomu \n 5 Magiczne zmniejszenie obrażeń \n{purple} dla kowal\n",
                ptBR = "{blue} 3 Requisito de nível \n 5 Redução de danos mágicos \n{purple} para ferreiros: \n \n{blue} 5 requisito de nível \n 5 Redução de danos mágicos\n",
                ruRU = "ÿC3 3 Требование уровня \n 5 Магическое уменьшение урона \n{purple} для кузнецов: \n \n{blue} 5 Требование уровня \n 5\n",
                zhCN = "•C3 3级要求\n 5魔法损害减少\n〜C;对于铁匠：\n \n〜C3 5级别要求\n 5魔法损害减少\n",
                zhTW = "•C3 3級要求\n 5魔法損害減少\n〜C;對於鐵匠：\n \n〜C3 5級別要求\n 5魔法損害減少\n",
            }
        },
        {
            code = "Z96",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 35 Level Anforderung \n 1 zu allen Fähigkeiten \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 30 Level -Anforderung \n 1 zu allen Fähigkeiten\n",
                enUS = "{blue}+35 Level Requirement\n+1 to All Skills\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+30 Level Requirement\n+1 to All Skills\n",
                esES = "ÿC3 35 requisito de nivel \n 1 a todas las habilidades \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 30 requisito de nivel \n 1 a todas las habilidades\n",
                esMX = "ÿC3 35 requisito de nivel \n 1 a todas las habilidades \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 30 requisito de nivel \n 1 a todas las habilidades\n",
                frFR = "{blue} 35 Niveau exigence \n 1 à toutes les compétences \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 30 Niveau exigence \n 1 à toutes les compétences\n",
                itIT = "ÿC3 35 Requisito di livello \n 1 a tutte le abilità \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 30 requisiti di livello \n a tutte le competenze\n",
                jaJP = "°C3 35レベル要件\n 1すべてのスキルへの\n1.鍛冶屋の場合（使用制限なし）：\n \nc330レベル要件\n 1すべてのスキルへ\n",
                koKR = "{blue} 35 레벨 요구 사항 \n 1에 대한 모든 기술 \n{purple} 대장장이 (사용법 제한 없음) : \n \n{blue} 30 레벨 요구 사항 \n 모든 기술에 대한 1\n",
                plPL = "ÿC3 35 Wymagania poziomu \n 1 do wszystkich umiejętności \n{purple} dla kowalskich (brak limitu użytkowania): \n \n{blue} 30 wymaganie poziomu \n 1 do wszystkich umiejętności\n",
                ptBR = "{blue} 35 Requisito de nível \n 1 para todas as habilidades \n{purple} para ferreiros (sem limite de uso): \n \n{blue} requisito de nível 30 \n 1 para todas as habilidades\n",
                ruRU = "{blue} 35 Требование уровня \n 1 ко всем навыкам \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 30 Требование уровня \n 1 для всех навыков\n",
                zhCN = "•C3 35级别要求\n 1对所有技能\n〜C;对于铁匠（无使用限制）：\n \n〜C3 30级别要求\n 1 to to lastement \n 1对所有技能\n",
                zhTW = "•C3 35級別要求\n 1對所有技能\n〜C;對於鐵匠（無使用限制）：\n \n〜C3 30級別要求\n 1 to to lastement \n 1對所有技能\n",
            }
        },
        {
            code = "Z97",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \n 15%% für alle Widerstände \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nŸc3 15 Level -Anforderung \n 15%% für alle Widerstände\n",
                enUS = "{blue}+20 Level Requirement\n+15%% to All Resistances\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+15%% to All Resistances\n",
                esES = "ÿC3 20 REQUISITO DE NIVEL \n 15%% A todas las resistencias \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 15%% a todas las resistencias\n",
                esMX = "ÿC3 20 REQUISITO DE NIVEL \n 15%% A todas las resistencias \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 15%% a todas las resistencias\n",
                frFR = "ÿC3 20 Niveau exigence \n 15%% à toutes les résistances \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 15%% à toutes les résistances\n",
                itIT = "{blue} 20 requisiti di livello \n 15%% a tutte le resistenze \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 15%% a tutte le resistenze\n",
                jaJP = "C320レベル要件\nすべての抵抗に対して15%%\nc;鍛冶屋の場合（使用制限なし）：\n \nÿC315レベル要件\nすべての抵抗に対して15%%\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 모든 저항에 대한 15%% \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 모든 저항에 대한 15%%\n",
                plPL = "ÿC3 20 Wymaganie poziomu \n 15%% do wszystkich rezystancji \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \n 15%% na wszystkie rezystancje\n",
                ptBR = "{blue} 20 Requisito de nível \n 15%% para todas as resistências \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 15%% para todas as resistências\n",
                ruRU = "ÿC3 20 Требование уровня \n 15%% ко всем сопротивлениям \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \n 15%% ко всем сопротивлениям\n",
                zhCN = "ÿC320级别要求\n 15%%对所有电阻\n〜C;对于铁匠（无使用限制）：\n \n〜C3 15级别要求\n 15%%15%%\n",
                zhTW = "ÿC320級別要求\n 15%%對所有電阻\n〜C;對於鐵匠（無使用限制）：\n \n〜C3 15級別要求\n 15%%15%%\n",
            }
        },
        {
            code = "Z98",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Levelanforderung \n 5%% Crushing Blow \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 15 Level -Anforderung \n 5%% Crushing Blow\n",
                enUS = "{blue}+20 Level Requirement\n+5%% Crushing Blow\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+5%% Crushing Blow\n",
                esES = "ÿC3 20 REQUISITO DE NIVEL \n 5%% Bloque de trituración \nÿC; para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 5%% de trituración de trituración\n",
                esMX = "ÿC3 20 REQUISITO DE NIVEL \n 5%% Bloque de trituración \nÿC; para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 5%% de trituración de trituración\n",
                frFR = "{blue} 20 Niveau exigence \n 5%% Bouot de broyage \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 5%% Bouot de broyage\n",
                itIT = "{blue} 20 requisiti di livello \n 5%% di schiacciamento \n{purple} per fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 5%% di schiacciamento\n",
                jaJP = "c320レベル要件\n 5%%砕石\n{purple}鍛冶屋の場合（使用制限なし）：\n \nμc315レベル要件\n 5%%粉砕打撃\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 5%% 크러싱 블로우 \n{purple} 대장장이 (사용법 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 5%% 분쇄 타격\n",
                plPL = "{blue} 20 Wymagania poziomu \n 5%% kruszące cios \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \n 5%% ciosu kruszenia\n",
                ptBR = "{blue} requisito de nível 20 \n 5%% de bloqueio de esmagamento \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 5%% de golpe de esmagamento\n",
                ruRU = "ÿC3 20 Требование уровня \n 5%% Друшкому удару \n{purple} для кузнецов (нет предела использования): \n \n{blue} 15 Требование уровня \n 5%% раздавливание удара\n",
                zhCN = "ÿC320级要求\n 5%%压碎打击\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 5%%5%%压碎打击\n",
                zhTW = "ÿC320級要求\n 5%%壓碎打擊\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 5%%5%%壓碎打擊\n",
            }
        },
        {
            code = "Z99",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \n 5%% offene Wunden \nŸc; für Schmiede (keine Nutzungsgrenze): \n \nbinc3 15 Level -Anforderung \n 5%% offene Wunden\n",
                enUS = "{blue}+20 Level Requirement\n+5%% Open Wounds\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+5%% Open Wounds\n",
                esES = "ÿC3 20 Requisito de nivel \n 5%% Heridas abiertas \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 5%% heridas abiertas\n",
                esMX = "ÿC3 20 Requisito de nivel \n 5%% Heridas abiertas \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 5%% heridas abiertas\n",
                frFR = "ÿC3 20 Niveau exigence \n 5%% des plaies ouvertes \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 5%% des plaies ouvertes\n",
                itIT = "ÿC3 20 requisiti di livello \n 5%% ferite aperte \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 5%% ferite aperte\n",
                jaJP = "C320レベル要件\n 5%%開いた傷\n{purple}鍛冶屋の場合（使用制限なし）：\n \nÿC315レベル要件\n 5%%開いた傷\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 5%% 오픈 상처 \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 5%% 열린 상처\n",
                plPL = "{blue} 20 Wymagania poziomu \n 5%% otwarte rany \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \n 5%% otwartych ran\n",
                ptBR = "{blue} 20 Requisito de nível \n 5%% Feridas abertas \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 5%% de feridas abertas\n",
                ruRU = "{blue} 20 Требование уровня \n 5%% открытые раны \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \n 5%% открытые раны\n",
                zhCN = "•C3 20级要求\n 5%%开放伤口\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 5%%敞开伤口\n",
                zhTW = "•C3 20級要求\n 5%%開放傷口\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 5%%敞開傷口\n",
            }
        },
        {
            code = "z00",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level Anforderung \n 5%% tödlicher Streik \nŸc; für Schmiede (keine Nutzungsgrenze): \n \nbinc3 15 Level -Anforderung \n 5%% tödlicher Streik\n",
                enUS = "{blue}+20 Level Requirement\n+5%% Deadly Strike\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+5%% Deadly Strike\n",
                esES = "ÿC3 20 REQUISITO DE NIVEL \n 5%% Atrenado mortal \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \n 5%% huelga mortal\n",
                esMX = "ÿC3 20 REQUISITO DE NIVEL \n 5%% Atrenado mortal \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \n 5%% huelga mortal\n",
                frFR = "{blue} 20 Niveau exigence \n 5%% grève mortelle \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 5%% grève mortelle\n",
                itIT = "{blue} 20 requisiti di livello \n 5%% mortale \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 5%% mortale Strike\n",
                jaJP = "c320レベル要件\n 5%%致命的なストライク\n{purple}鍛冶屋の場合（使用制限なし）：\n \nc315レベル要件\n 5%%致命的なストライク\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 5%% 치명적인 스트라이크 \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 5%% 치명적인 스트라이크\n",
                plPL = "ÿC3 20 Wymaganie poziomu \n 5%% śmiertelne uderzenie \n{purple} dla kowalskich (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \n 5%% śmiertelne strajk\n",
                ptBR = "{blue} 20 Requisito de nível \n 5%% greve mortal \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 5%% de greve mortal\n",
                ruRU = "ÿC3 20 Требование уровня \n 5%% Смертельный удар \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \n 5%% Смертельный удар\n",
                zhCN = "C3 20级要求\n 5%%致命罢工\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 5%%致命罢工\n",
                zhTW = "C3 20級要求\n 5%%致命罷工\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 5%%致命罷工\n",
            }
        },
        {
            code = "z01",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \n 1 Beschwörungsleistung \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 15 Level -Anforderung \n 1 Beschwörungsleistung\n",
                enUS = "{blue}+20 Level Requirement\n+1 Summoning Power\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+1 Summoning Power\n",
                esES = "ÿC3 20 REQUISITO DE NIVEL \n 1 PODER DE LA VIDENCIA \nÿC; Para los herreros (sin límite de uso): \n \n \nÿC3 15 Requisito de nivel \n 1 Power de invocación\n",
                esMX = "ÿC3 20 REQUISITO DE NIVEL \n 1 PODER DE LA VIDENCIA \nÿC; Para los herreros (sin límite de uso): \n \n \nÿC3 15 Requisito de nivel \n 1 Power de invocación\n",
                frFR = "{blue} 20 Niveau exigence \n 1 Power Power \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 1 Power d'invocation\n",
                itIT = "ÿC3 Requisito di livello 20 \n 1 Potenza di evocazione \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 1 Potenza di evocazione\n",
                jaJP = "c320レベル要件\n 1召喚パワー\n{purple}鍛冶屋用（使用制限なし）：\n \nc315レベル要件\n 1召喚パワー\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 1 소환 전력 \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 1 소환 전력\n",
                plPL = "ÿC3 20 Wymagania poziomu \n 1 Moc przywoływania \n{purple} dla kowalskich (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \n 1 moc przywoływania\n",
                ptBR = "{blue} 20 Requisito de nível \n 1 potência de convocação \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 1 poder de convocação\n",
                ruRU = "{blue} 20 Требование уровня \n 1 Призыв мощность \n{purple} для кузнецов (нет предела использования): \n \n{blue} 15 Требование уровня \n 1 Призывная сила\n",
                zhCN = "C3 20级要求\n 1召唤力量\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 1召唤力量\n",
                zhTW = "C3 20級要求\n 1召喚力量\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 1召喚力量\n",
            }
        },
        {
            code = "z02",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Stufe Anforderung \n 1 Kampfleistung \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 15 Level -Anforderung \n 1 Kampfleistung\n",
                enUS = "{blue}+20 Level Requirement\n+1 Combat Power\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+1 Combat Power\n",
                esES = "ÿC3 20 REQUISITO DE NIVEL \n 1 Potencia de combate \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 1 potencia de combate\n",
                esMX = "ÿC3 20 REQUISITO DE NIVEL \n 1 Potencia de combate \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \n 1 potencia de combate\n",
                frFR = "ÿC3 20 Niveau exigence \n 1 Power de combat \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 1 Power de combat\n",
                itIT = "ÿC3 Requisito di livello 20 \n 1 potenza di combattimento \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n 1 potenza di combattimento\n",
                jaJP = "°C3 20レベル要件\n 1戦闘力\nc;鍛冶屋の場合（使用制限なし）：\n \nÿC315レベル要件\n 1戦闘パワー\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 1 전투 전력 \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 1 전투 전력\n",
                plPL = "ÿC3 20 Wymagania poziomu \n 1 Moc bojowa \n{purple} dla kowalskich (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \n 1 moc walki\n",
                ptBR = "{blue} 20 Requisito de nível \n 1 potência de combate \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 1 poder de combate\n",
                ruRU = "{blue} 20 Требование уровня \n 1 Боевая мощность \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \n 1 Боевая мощность\n",
                zhCN = "C3 20级要求\n 1战斗力\n设施\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 1战斗力\n",
                zhTW = "C3 20級要求\n 1戰鬥力\n設施\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 1戰鬥力\n",
            }
        },
        {
            code = "z03",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Stufe Anforderung \n 1 Zauberkraft \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 15 Level -Anforderung \n 1 Zauberkraft\n",
                enUS = "{blue}+20 Level Requirement\n+1 Spell Power\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\n+1 Spell Power\n",
                esES = "ÿC3 20 REQUISITO DEL NIVEL \n 1 Potencia de hechizo \n{purple} para herreros (sin límite de uso): \n \nÿC3 15 requisito de nivel \n 1 poder de hechizo\n",
                esMX = "ÿC3 20 REQUISITO DEL NIVEL \n 1 Potencia de hechizo \n{purple} para herreros (sin límite de uso): \n \nÿC3 15 requisito de nivel \n 1 poder de hechizo\n",
                frFR = "{blue} 20 Niveau exigence \n 1 Spell Power \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence \n 1 Spell Power\n",
                itIT = "ÿC3 20 Livello Requisito \n 1 Power incantesimo \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisiti di livello \n 1 Power incantesimo\n",
                jaJP = "°c3 20レベル要件\n 1スペルパワー\n{purple}鍛冶屋用（使用制限なし）：\n \n{blue}15レベル要件\n 1スペルパワー\n",
                koKR = "{blue} 20 레벨 요구 사항 \n 1 주문 전력 \n{purple} 대장장이 (사용법 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \n 1 Spell Power\n",
                plPL = "{blue} 20 Wymaganie poziomu \n 1 Moc zaklęcia \n{purple} dla kowalskich (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \n 1 Power zaklęcia\n",
                ptBR = "{blue} 20 Requisito de nível \n 1 Power de feitiço \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \n 1 poder de feitiço\n",
                ruRU = "{blue} 20 Требование уровня \n 1 заклинание мощность \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \n 1 заклинание сила\n",
                zhCN = "C3 20级别要求\n 1拼写功率\n〜C;对于铁匠（无用限制）：\n \n〜C3 15级别要求\n 1 spell power\n",
                zhTW = "C3 20級別要求\n 1拼寫功率\n〜C;對於鐵匠（無用限制）：\n \n〜C3 15級別要求\n 1 spell power\n",
            }
        },
        {
            code = "z04",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 35 Level -Anforderung \n 5%% Maximaler Feuerresist \nŸc; für Schmiede\n",
                enUS = "{blue}+35 Level Requirement\n+5%% Maximum Fire Resist\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+25 Level Requirement\n+5%% Maximum Fire Resist\n",
                esES = "ÿC3 35 requisito de nivel \n 5%% resistencia máxima al fuego \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \n 5%% resistencia al fuego máximo\n",
                esMX = "ÿC3 35 requisito de nivel \n 5%% resistencia máxima al fuego \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \n 5%% resistencia al fuego máximo\n",
                frFR = "{blue} 35 Niveau exigence \n 5%% Résistance au feu maximale \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 25 Besoin de niveau \n 5%% de résistance au feu maximum\n",
                itIT = "ÿC3 35 Requisito di livello \n 5%% Resistenza al fuoco massima \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 25 requisito di livello \n 5%% resistenza al fuoco massima\n",
                jaJP = "C335レベル要件\n 5%%最大火災抵抗\n{purple}鍛冶屋の場合（使用制限なし）：\n \nÿC325レベル要件\n 5%%最大火災抵抗\n",
                koKR = "{blue} 35 레벨 요구 사항 \n 5%% 최대 내화 저항 \n{purple} 대장장이의 경우 (사용 제한 없음) : \n \n{blue} 25 레벨 요구 사항 \n 5%% 최대 내화 저항\n",
                plPL = "{blue} 35 Wymagania poziomu \n 5%% Maksymalna odporność ognio\n",
                ptBR = "{blue} 35 Requisito de nível \n 5%% resistência ao incêndio máximo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 25 requisito de nível \n 5%% resistência ao incêndio máximo\n",
                ruRU = "{blue} 35 Требование уровня \n 5%% Максимальный пожарный сопротивление \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 25 Требование уровня \n 5%% Максимальный пожарный сопротивление\n",
                zhCN = "C3 35级别要求\n 5%%最大火力抵抗\n〜C;对于铁匠（无使用限制）：\n \n〜C3 25 25级别要求\n 5%%最大火力抵抗\n",
                zhTW = "C3 35級別要求\n 5%%最大火力抵抗\n〜C;對於鐵匠（無使用限制）：\n \n〜C3 25 25級別要求\n 5%%最大火力抵抗\n",
            }
        },
        {
            code = "z05",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 35 Level -Anforderung \n 5%% Maximaler Kaltresist \nsprache; für Schmiede\n",
                enUS = "{blue}+35 Level Requirement\n+5%% Maximum Cold Resist\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+25 Level Requirement\n+5%% Maximum Cold Resist\n",
                esES = "ÿC3 35 Requisito de nivel \n 5%% Resistencia máxima en frío \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 25 requisito de nivel \n 5%% resistencia al frío máximo\n",
                esMX = "ÿC3 35 Requisito de nivel \n 5%% Resistencia máxima en frío \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 25 requisito de nivel \n 5%% resistencia al frío máximo\n",
                frFR = "{blue} 35 Bidik-Besoin \n 5%% MAXIMUM Cold Resist \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 25 Besoin de niveau \n 5%% de résistance à froid maximale\n",
                itIT = "ÿC3 35 Requisito di livello \n 5%% Resistenza a freddo massima \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 25 requisito di livello \n 5%% resistenti al freddo massimo\n",
                jaJP = "C335レベル要件\n 5%%最大コールドレジスト\nÿC;鍛冶屋の場合（使用制限なし）：\n \nÿC325レベル要件\n 5%%最大コールドレジスト\n",
                koKR = "{blue} 35 레벨 요구 사항 \n 5%% 최대 냉장 저항 \n{purple} 대장장이 (사용량 제한 없음) : \n \n{blue} 25 레벨 요구 사항 \n 최대 콜드 저항\n",
                plPL = "ÿC3 35 Wymagania poziomu \n 5%% Maksymalna odporność na zimno \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 25 Wymagania poziomu \n 5%% Maksymalna odporność na zimno\n",
                ptBR = "{blue} 35 Requisito de nível \n 5%% resistência a frio máximo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 25 requisito de nível \n 5%% resistência a frio máximo\n",
                ruRU = "{blue} 35 Требование уровня \n 5%% Максимальный холодный сопротивление \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 25 Требование уровня \n 5%% Максимальный холодный сопротивление\n",
                zhCN = "C3 35水平要求\n 5%%最大冷抗\n〜C;对于铁匠（无用限制）：\n \n〜C3 25 25级别要求\n 5%%最大冷抗\n",
                zhTW = "C3 35水平要求\n 5%%最大冷抗\n〜C;對於鐵匠（無用限制）：\n \n〜C3 25 25級別要求\n 5%%最大冷抗\n",
            }
        },
        {
            code = "z06",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 35 Level -Anforderung \n 5%% Maximaler Blitzresist \nsprache; für Schmiede\n",
                enUS = "{blue}+35 Level Requirement\n+5%% Maximum Lightning Resist\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+25 Level Requirement\n+5%% Maximum Lightning Resist\n",
                esES = "ÿC3 35 requisito de nivel \n 5%% Lightning máximo Resist \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 25 requisito de nivel \n 5%% máximo de rayo resistente\n",
                esMX = "ÿC3 35 requisito de nivel \n 5%% Lightning máximo Resist \n{purple} para herreros (sin límite de uso): \n \n \nÿC3 25 requisito de nivel \n 5%% máximo de rayo resistente\n",
                frFR = "{blue} 35 Bidik-exigence \n 5%% maximum Lightning Resist \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 25 Besoin de niveau \n 5%% de foudre maximale\n",
                itIT = "ÿC3 35 Requisito di livello \n 5%% Lightning Maximum Resist \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 25 requisito di livello \n 5%% massimo resist\n",
                jaJP = "C335レベル要件\n 5%%最大稲妻抵抗\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}25レベル要件\n 5%%最大稲妻抵抗\n",
                koKR = "{blue} 35 레벨 요구 사항 \n 5%% 최대 번개 저항 \n{purple} 대장장이의 경우 (사용 제한 없음) : \n \n{blue} 25 레벨 요구 사항 \n 5%% 최대 번개 저항\n",
                plPL = "{blue} 35 Wymagania poziomu \n 5%% Maksymalna błyskawiczna odporność na błyskawicę;\n",
                ptBR = "{blue} 35 Requisito de nível \n 5%% resistência ao raio máximo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 25 requisito de nível \n 5%% resistência ao raio máximo\n",
                ruRU = "{blue} 35 Требование уровня \n 5%% Максимальная резист молнии \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 25 Требование уровня \n 5%% Максимальный резист молнии\n",
                zhCN = "•C3 35级别要求\n 5%%最大闪电抵抗\n〜C;对于铁匠（无用法限制）：\n \n〜C3 25级别要求\n 5%%最大闪电抗性\n",
                zhTW = "•C3 35級別要求\n 5%%最大閃電抵抗\n〜C;對於鐵匠（無用法限制）：\n \n〜C3 25級別要求\n 5%%最大閃電抗性\n",
            }
        },
        {
            code = "z07",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 35 Level -Anforderung \n 5%% Maximaler Giftresist \nsprache; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 25 Level -Anforderung \n 5%% Maximaler Giftresist\n",
                enUS = "{blue}+35 Level Requirement\n+5%% Maximum Poison Resist\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+25 Level Requirement\n+5%% Maximum Poison Resist\n",
                esES = "ÿC3 35 requisito de nivel \n 5%% Máximo veneno resistente \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \n 5%% máxima resistencia al veneno\n",
                esMX = "ÿC3 35 requisito de nivel \n 5%% Máximo veneno resistente \n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \n 5%% máxima resistencia al veneno\n",
                frFR = "{blue} 35 Niveau exigence \n 5%% Résistation de poison maximale \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 25 Niveau exigence\n",
                itIT = "ÿC3 35 Requisito di livello \n 5%% Maximum Poison Resist \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 25 requisito di livello \n 5%% massimo resistenza veleno\n",
                jaJP = "C335レベル要件\n 5%%最大毒抵抗\n{purple}鍛冶屋の場合（使用制限なし）：\n \nÿC325レベル要件\n 5%%最大ポイズンレジスト\n",
                koKR = "{blue} 35 레벨 요구 사항 \n 5%% 최대 독에 대한 저항 \n{purple} 대장장이 (사용 제한 없음) : \n \n{blue} 25 레벨 요구 사항 \n 5%% 최대 독에 대한 저항\n",
                plPL = "ÿC3 35 Wymagania poziomu \n 5%% Maksymalna oporność na truciznę \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue}\n",
                ptBR = "{blue} 35 Requisito de nível \n 5%% resistência ao veneno máximo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 25 requisito de nível \n 5%% resistência ao veneno máximo\n",
                ruRU = "ÿC3 35 Требование уровня \n 5%% Максимальный яд\n",
                zhCN = "•C3 35水平要求\n 5%%最大毒药抵抗\n〜C;对于铁匠（无使用限制）：\n \n〜C3 25 25级别需求\n 5%%最大毒药抗性\n",
                zhTW = "•C3 35水平要求\n 5%%最大毒藥抵抗\n〜C;對於鐵匠（無使用限制）：\n \n〜C3 25 25級別需求\n 5%%最大毒藥抗性\n",
            }
        },
        {
            code = "z08",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 15 Levelanforderung \n-10%% feindlicher Feuerwiderstand \nsprache; für Schmiede\n",
                enUS = "{blue}+15 Level Requirement\n-10%% Enemy Fire Resistance\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+10 Level Requirement\n-10%% Enemy Fire Resistance\n",
                esES = "ÿC3 15 Requisito de nivel \n-10%% Resistencia al fuego enemigo \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia al fuego enemigo\n",
                esMX = "ÿC3 15 Requisito de nivel \n-10%% Resistencia al fuego enemigo \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia al fuego enemigo\n",
                frFR = "ÿC3 15 Niveau exigence \n-10%% Résistance au feu ennemi \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 10 Niveau exigence \n-10%% Résistance au feu ennemi\n",
                itIT = "ÿC3 15 requisiti di livello \n-10%% Resistenza al fuoco nemico \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} requisito di livello 10 \n-10%% resistenza al fuoco nemico\n",
                jaJP = "C315レベル要件\n-10%%敵の耐火性\nc;鍛冶屋の場合（使用制限なし）：\n \n{blue}10レベル要件\n-10%%敵の耐火性\n",
                koKR = "{blue} 15 레벨 요구 사항 \n-10%% 적의 내화성 \n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 10 레벨 요구 사항 \n-10%% 적 내화 저항\n",
                plPL = "{blue} 15 Wymagania poziomu \n-10%% wrogie odporność na ogień \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 10 wymaganie poziomu \n-10%% odporność na ogień wroga\n",
                ptBR = "{blue} Requisito de 15 níveis \n-10%% resistência ao incêndio inimigo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 10 requisito de nível \n-10%% resistência ao incêndio inimigo\n",
                ruRU = "ÿC3 15 Требование уровня \n-10%% вражеское сопротивление огне\n",
                zhCN = "C3 15水平要求\n-10%%敌人的抗火力\n²;对于铁匠（无用限制）：\n \n〜C3 10级别要求\n-10%%\n",
                zhTW = "C3 15水平要求\n-10%%敵人的抗火力\n²;對於鐵匠（無用限制）：\n \n〜C3 10級別要求\n-10%%\n",
            }
        },
        {
            code = "z09",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 15 Level-Anforderung \n-10%% feindlicher Kaltwiderstand \nŸc; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 10 Level-Anforderung \n-10%% feindlicher Kaltwiderstand\n",
                enUS = "{blue}+15 Level Requirement\n-10%% Enemy Cold Resistance\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+10 Level Requirement\n-10%% Enemy Cold Resistance\n",
                esES = "ÿC3 15 Requisito de nivel \n-10%% Resistencia en frío enemigo \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia fría enemigo\n",
                esMX = "ÿC3 15 Requisito de nivel \n-10%% Resistencia en frío enemigo \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia fría enemigo\n",
                frFR = "ÿC3 15 Niveau exigence \n-10%% Résistance au froid ennemi \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 10 Niveau Exigence\n",
                itIT = "ÿC3 15 requisiti di livello \n-10%% Resistenza a freddo nemico \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} requisito di livello 10 \n-10%% resistenza a freddo nemico\n",
                jaJP = "C315レベル要件\n-10%%敵のコールドレジスタンス\nÿC;鍛冶屋の場合（使用制限なし）：\n \n{blue}10レベル要件\n-10%%敵のコールドレジスタンス\n",
                koKR = "{blue} 15 레벨 요구 사항 \n-10%% 적의 냉간 저항 \n{purple} 대장장이 (사용법 제한 없음) : \n \n{blue} 10 레벨 요구 사항 \n-10%% 적의 냉기 저항\n",
                plPL = "{blue} 15 Wymagania poziomu \n-10%% wroga odporność na zimno \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 10 wymaganie poziomu \n-10%% odporność na zimno wroga\n",
                ptBR = "{blue} Requisito de 15 níveis \n-10%% resistência ao frio inimigo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 10 requisito de nível \n-10%% resistência ao frio inimigo\n",
                ruRU = "{blue} 15 Требование уровня \n-10%% вражеское холодное сопротивление \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 10 Требование уровня \n-10%% холодное сопротивление врага.\n",
                zhCN = "•C3 15水平要求\n-10%%敌人的冷抗性\n〜C;对于铁匠（无用限制）：\n \n〜C3 10级别要求\n-10%%\n",
                zhTW = "•C3 15水平要求\n-10%%敵人的冷抗性\n〜C;對於鐵匠（無用限制）：\n \n〜C3 10級別要求\n-10%%\n",
            }
        },
        {
            code = "z10",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 15 Level Anforderung \n-10%% Feindes Blitzwiderstand \nsprache; für Schmiede\n",
                enUS = "{blue}+15 Level Requirement\n-10%% Enemy Lightning Resistance\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+10 Level Requirement\n-10%% Enemy Lightning Resistance\n",
                esES = "ÿC3 15 Requisito de nivel \n-10%% Resistencia de rayos enemigos \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia al rayo enemigo\n",
                esMX = "ÿC3 15 Requisito de nivel \n-10%% Resistencia de rayos enemigos \nÿC; para herreros (sin límite de uso): \n \n \n{blue} 10 requisito de nivel \n-10%% resistencia al rayo enemigo\n",
                frFR = "ÿC3 15 Niveau exigence \n-10%% Résistance à la foudre ennemi \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 10 Niveau exigence\n",
                itIT = "ÿC3 15 requisiti di livello \n-10%% resistenza alla fulmine nemica \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} requisito di livello 10 \n-10%% fulmine nemico Resistenza\n",
                jaJP = "c3 15レベル要件\n-10%%敵の稲妻抵抗\n{purple}鍛冶屋の場合（使用制限なし）：\n \nμc310レベル要件\n-10%%敵の稲妻抵抗\n",
                koKR = "{blue} 15 레벨 요구 사항 \n-10%% 적의 번개 저항 \n{purple} 대장장이의 경우 (사용 제한 없음) : \n \n{blue} 10 레벨 요구 사항 \n-10%% 적의 번개 저항\n",
                plPL = "{blue} 15 Wymagania poziomu \n-10%% Wrogiem Odporność na błyskawicę \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 10 Wymaganie poziomu \n-10%% oporność na błyskawicę wroga\n",
                ptBR = "ÿC3 Requisito de 15 níveis \n-10%% Resistência ao raio inimigo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 10 requisito de nível \n-10%% resistência ao relâmpago inimigo\n",
                ruRU = "{blue} 15 Требование уровня \n-10%% вражеское сопротивление молнии \n{purple} для кузнецов (без ограничения использования): \n \n{blue} 10 Требование уровня \n-10%% вражеское сопротивление молнии\n",
                zhCN = "C3 15水平要求\n-10%%敌人的雷击抵抗\n²;对于铁匠（无用限制）：\n \n〜c3 10级别要求\n-10%%敌方敌方\n",
                zhTW = "C3 15水平要求\n-10%%敵人的雷擊抵抗\n²;對於鐵匠（無用限制）：\n \n〜c3 10級別要求\n-10%%敵方敵方\n",
            }
        },
        {
            code = "z11",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 15 Level-Anforderung \n-10%% Feind Giftwiderstand \nŸc; für Schmiede\n",
                enUS = "{blue}+15 Level Requirement\n-10%% Enemy Poison Resistance\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+10 Level Requirement\n-10%% Enemy Poison Resistance\n",
                esES = "ÿC3 15 Requisito de nivel \n-10%% Resistencia de veneno enemigo \nÿC; para herreros (sin límite de uso): \n \n \nÿC3 10 requisito de nivel \n-10%% resistencia de veneno enemigo\n",
                esMX = "ÿC3 15 Requisito de nivel \n-10%% Resistencia de veneno enemigo \nÿC; para herreros (sin límite de uso): \n \n \nÿC3 10 requisito de nivel \n-10%% resistencia de veneno enemigo\n",
                frFR = "{blue} 15 Niveau exigence \n-10%% Résistance au poison ennemi \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 10 Niveau exigence \n-10%% Résistance au poison ennemi\n",
                itIT = "ÿC3 15 requisiti di livello \n-10%% Nemy Poison Resistance \n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} requisito di livello 10 \n-10%% di avvelenamento nemico\n",
                jaJP = "C315レベル要件\n-10%%敵の毒抵抗\n{purple}鍛冶屋の場合（使用制限なし）：\n \nμc310レベル要件\n-10%%敵の毒抵抗\n",
                koKR = "{blue} 15 레벨 요구 사항 \n-10%% 적 독극물 저항 \n{purple} 대장장이의 경우 (사용 제한 없음) : \n \n{blue} 10 레벨 요구 사항 \n-10%% 적 독성 저항\n",
                plPL = "{blue} 15 Wymaganie poziomu \n-10%% Resistance Poison Resistance \n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 10 wymaganie poziomu \n-10%% opór trucizny wroga\n",
                ptBR = "ÿC3 Requisito de 15 níveis \n-10%% Resistência ao veneno inimigo \n{purple} para ferreiros (sem limite de uso): \n \n{blue} 10 requisito de nível \n-10%% resistência ao inimigo veneno\n",
                ruRU = "{blue} 15 Требование уровня \n-10%% вражеское сопротивление яда\n",
                zhCN = "•C3 15水平要求\n-10%%敌人毒药抵抗\n²;对于铁匠（无用法限制）：\n \n〜C3 10级别需求\n-10%%\n",
                zhTW = "•C3 15水平要求\n-10%%敵人毒藥抵抗\n²;對於鐵匠（無用法限制）：\n \n〜C3 10級別需求\n-10%%\n",
            }
        },
        {
            code = "z12",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \nenemy Kälteimmunität reduziert um 10%%\nŸc; für Schmiede (keine Verwendungsgrenze): \n \nŸc3 15 Level -Anforderung \nenemy Kalt Immunität um 10%%reduziert\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Cold immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy Cold Immunity Reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Inmunidad fría reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad fría reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Inmunidad fría reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad fría reducida en un 10%%\n",
                frFR = "ÿC3 20 Niveau exigence \nENEMY IMMUNITÉ DE CHOD RÉDUIT DE 10%% \nÿC; pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "{blue} 20 requisiti di livello \nenemy immunità fredda ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \nenemy immunità fredda ridotta del 10%%\n",
                jaJP = "c320レベル要件\nenemy cold免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}15レベル要件\nネネミー風免疫は10%%減少\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy 냉 면역은 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \nenemy 냉 면역력 감소 10%%\n",
                plPL = "ÿC3 20 Wymaganie poziomu \neneMy Zimna odporność zmniejszona o 10%%\n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymaganie poziomu \neneMusza zmniejszona o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy imunidade a frio reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy imunidade a frio reduzido por 10%%\n",
                ruRU = "{blue} 20 Требование уровня \nenemy холодное иммунитет уменьшен на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \nenemy холодный иммунитет уменьшен на 10%%\n",
                zhCN = "C3 20水平要求\nenemy冷免疫减少10%%\nβ;对于铁匠（无使用限制）：\n \n \n〜C3 15水平要求\nenemy Cold Simpory降低了10%%\n",
                zhTW = "C3 20水平要求\nenemy冷免疫減少10%%\nβ;對於鐵匠（無使用限制）：\n \n \n〜C3 15水平要求\nenemy Cold Simpory降低了10%%\n",
            }
        },
        {
            code = "z13",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \nenemy -Feuer Immunität reduziert um 10%%\nŸc; für Schmiede (keine Verwendungsgrenze): \n \nŸc3 15 Level -Anforderung \nenemy Feuer Immunität reduziert um 10%%reduziert\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Fire Immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy Fire Immunity Reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Inmunidad de incendio reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad de fuego reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Inmunidad de incendio reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad de fuego reducida en un 10%%\n",
                frFR = "ÿC3 20 Niveau exigence \nENEMY IMMUNITÉ DE FEU RÉDUIT DE 10%% \nÿC; Pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "{blue} 20 requisiti di livello \nenemy Immunità al fuoco ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \nenemy Immunità al fuoco ridotto del 10%%\n",
                jaJP = "c320レベル要件\nenemy射撃免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}15レベル要件\nネネミー火災免疫は10%%減少しました\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy 화재 면역은 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \nenemy 화재 면역력 감소 10%%\n",
                plPL = "ÿC3 20 Wymaganie poziomu \neneMy odporność pożarową zmniejszona o 10%%\nÿC; dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \nenemy pożar zmniejszone o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy imunidade de incêndio reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy imunidade de incêndio reduzida por 10%%\n",
                ruRU = "{blue} 20 Требование уровня \nenemy пожарное иммунитет уменьшен на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue}.\n",
                zhCN = "C3 20水平要求\nenemy Fire免疫降低10%%\nμc;对于铁匠（无用限制）：\n \n \n〜C3 15水平要求\nenemy Fire Hime降低了10%%\n",
                zhTW = "C3 20水平要求\nenemy Fire免疫降低10%%\nμc;對於鐵匠（無用限制）：\n \n \n〜C3 15水平要求\nenemy Fire Hime降低了10%%\n",
            }
        },
        {
            code = "z14",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level Anforderung \nenemy Lightning -Immunität reduziert um 10%%\nsprache; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 15 Level -Anforderung \neememy Lightning Immunität um 10%%reduziert\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Lightning Immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy Lightning Immunity Reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Lightning Inmunidad reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Lightning Inmunidad reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad reducida en un 10%%\n",
                frFR = "ÿC3 20 Niveau exigence \nENEMY Lightning Immunity réduit de 10%% \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "ÿC3 20 Livello Requisito \nenemy Lightning Immunità ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \nenemy fulmine immunità ridotta del 10%%\n",
                jaJP = "c320レベル要件\nenemy稲妻免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}15レベル要件\nenemy稲妻免疫は10%%減少しました\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy Lightning Immunity는 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \nenemy Lightning Immunity 감소 10%%\n",
                plPL = "ÿC3 20 Wymagania poziomu \neneMy Lightning zmniejszona o 10%%\nÿC; dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \nenemy Lightning zmniejszone o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy Rightning Imunidade reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy Lightning Imunity reduzido em 10%%\n",
                ruRU = "ÿC3 20 Требование уровня \nenemy Lightning Immunity снижается на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue}.\n",
                zhCN = "ÿC320水平需求\nenemy Lightning免疫力降低了10%%\nβ;对于铁匠（无使用限制）：\n \n \n〜C3 15水平要求\nenemy Lightning降低10%%\n",
                zhTW = "ÿC320水平需求\nenemy Lightning免疫力降低了10%%\nβ;對於鐵匠（無使用限制）：\n \n \n〜C3 15水平要求\nenemy Lightning降低10%%\n",
            }
        },
        {
            code = "z15",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \nenemy -Giftmunität reduziert um 10%%\nsprache; für Schmied\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Poison Immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy poison immunity reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Inmunidad de veneno reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \nenemy inmunidad de veneno reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Inmunidad de veneno reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \nÿC3 15 requisito de nivel \nenemy inmunidad de veneno reducida en un 10%%\n",
                frFR = "{blue} 20 Niveau exigence \nENEMY IMMUNITÉ POISON RÉDUÉE DE 10%% \nÿC; pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "{blue} 20 requisiti di livello \n immunità avvelenata nenemia ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n immunità velenosa nenemia ridotta del 10%%\n",
                jaJP = "c320レベル要件\nenemy毒免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}15レベル要件\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy 독 면역은 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \nenemy 독 면역이 10%%감소했습니다.\n",
                plPL = "ÿC3 20 Wymaganie poziomu \neneMy Trucizon Redukowana o 10%%\n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \nenemydne odporność na truciznę zmniejszoną o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy Imunidade de veneno reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy imunidade a veneno reduzido por 10%%\n",
                ruRU = "ÿC3 20 Требование уровня \nenemy -яд иммунитет снижены на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue}.\n",
                zhCN = "•C3 20水平要求\nenemy Poison免疫力降低了10%%\nβ;对于铁匠（无用限制）：\n \n \n〜C3 15水平要求\nenemy Poison免疫力降低了10%%\n",
                zhTW = "•C3 20水平要求\nenemy Poison免疫力降低了10%%\nβ;對於鐵匠（無用限制）：\n \n \n〜C3 15水平要求\nenemy Poison免疫力降低了10%%\n",
            }
        },
        {
            code = "z16",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \nenemy Physische Immunität reduziert um 10%%.\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Physical Immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy physical immunity reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Inmunidad física reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad física reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Inmunidad física reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad física reducida en un 10%%\n",
                frFR = "{blue} 20 Niveau exigence \nENEMY Immunité physique réduite de 10%% \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "{blue} 20 requisiti di livello \nenemia immunità fisica ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 Livello requisito \nenemia immunità fisica ridotta del 10%%\n",
                jaJP = "c320レベル要件\nenemyの物理的免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}15レベル要件\nenemy物理的免疫は10%%減少しました\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy 신체 면역은 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 15 레벨 요구 사항 \nenemy 물리 면역력 감소 10%%\n",
                plPL = "ÿC3 20 Wymaganie poziomu \neneMy odporność fizyczna zmniejszona o 10%%\nÿC; dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \nenemy fizyczna zmniejszona o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy imunidade física reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy imunidade física reduzida por 10%%\n",
                ruRU = "{blue} 20 Требование уровня \nenemy Физический иммунитет уменьшен на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue} 15 Требование уровня \nenemy Физический иммунитет уменьшен на 10%%\n",
                zhCN = "C3 20水平要求\nenemy物理免疫力降低了10%%\nβ;对于铁匠（无用限制）：\n \n \n〜C3 15水平要求\nenemy物理免疫降低10%%\n",
                zhTW = "C3 20水平要求\nenemy物理免疫力降低了10%%\nβ;對於鐵匠（無用限制）：\n \n \n〜C3 15水平要求\nenemy物理免疫降低10%%\n",
            }
        },
        {
            code = "z17",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 20 Level -Anforderung \nenemy Magic Immunität reduziert um 10%%\nŸc; für Schmiede (keine Verwendungsgrenze): \n \nŸc3 15 Level -Anforderung \nenemy Magic Immunität um 10%%reduziert\n",
                enUS = "{blue}+20 Level Requirement\nEnemy Magic Immunity Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+15 Level Requirement\nEnemy magic immunity reduced by 10%%\n",
                esES = "ÿC3 20 Requisito de nivel \nenemy Inmunidad mágica reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad mágica reducida en un 10%%\n",
                esMX = "ÿC3 20 Requisito de nivel \nenemy Inmunidad mágica reducida en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 15 requisito de nivel \nenemy inmunidad mágica reducida en un 10%%\n",
                frFR = "ÿC3 20 Niveau Exigence \nENEMY Magic Immunity réduit de 10%% \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 15 Niveau exigence\n",
                itIT = "{blue} 20 requisiti di livello \nenemia immunità magica ridotta del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 15 requisito di livello \n immunità magica nenemia ridotta del 10%%\n",
                jaJP = "c320レベル要件\nenemy Magic Immunityは10%%\nc;鍛冶屋の場合（使用制限なし）：\n \nc315レベル要件\nenemyマジック免疫は10%%減少しました\n",
                koKR = "{blue} 20 레벨 요구 사항 \nenemy 마법 면역은 10%%\n{purple} 대장장이의 경우 감소\n",
                plPL = "ÿC3 20 Wymagania poziomu \neneMy Magic Immortera zmniejszona o 10%%\n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 15 Wymagania poziomu \nenemy magiczna odporność zmniejszona o 10%%\n",
                ptBR = "{blue} 20 Requisito de nível \nenemy imunidade mágica reduzida em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 15 requisito de nível \nenemy imunidade mágica reduzida por 10%%\n",
                ruRU = "{blue} 20 Требование уровня \nenemy Magic Immunity уменьшается на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue}.\n",
                zhCN = "C3 20水平要求\nenemy Magic免疫力降低了10%%\nβ;对于铁匠（无用限制）：\n \n \n〜C3 15级别要求\nenemy Magic Sagic Immunity降低了10%%\n",
                zhTW = "C3 20水平要求\nenemy Magic免疫力降低了10%%\nβ;對於鐵匠（無用限制）：\n \n \n〜C3 15級別要求\nenemy Magic Sagic Immunity降低了10%%\n",
            }
        },
        {
            code = "z18",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "Ÿc3 30 Level -Anforderung \nall feindliche Immunitäten reduziert um 10%%\nsprache; für Schmiede (keine Verwendungsgrenze): \n \nbinc3 25 Level -Anforderung \nall feindliche Immunitäten um 10%%reduziert\n",
                enUS = "{blue}+30 Level Requirement\nAll Enemy Immunities Reduced by 10%%\n{purple}For Blacksmiths (No Usage Limit):\n\n{blue}+25 Level Requirement\nAll enemy immunities reduced by 10%%\n",
                esES = "ÿC3 30 Requisito de nivel \nall Inmunidades enemigas reducidas en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \nall inmunidades enemigas reducidas en un 10%%\n",
                esMX = "ÿC3 30 Requisito de nivel \nall Inmunidades enemigas reducidas en 10%%\n{purple} para herreros (sin límite de uso): \n \n \n{blue} 25 requisito de nivel \nall inmunidades enemigas reducidas en un 10%%\n",
                frFR = "ÿC3 30 Niveau exigence \nall Immunités ennemies réduites de 10%% \n{purple} pour les forgerons (pas de limite d'utilisation): \n \n{blue} 25 Niveau Exigence \nall Immunités ennemies réduites de 10%%\n",
                itIT = "{blue} 30 requisiti di livello \nall immunità nemiche ridotte del 10%%\n{purple} per i fabbri (nessun limite di utilizzo): \n \n{blue} 25 requisito di livello \nall immunità nemica ridotta del 10%%del 10%%\n",
                jaJP = "C330レベル要件\nall敵の免疫は10%%\n{purple}鍛冶屋の場合（使用制限なし）：\n \n{blue}25レベル要件\nall敵の免疫は10%%減少しました\n",
                koKR = "{blue} 30 레벨 요구 사항 \nall 적 면역력은 10%%\n{purple} 대장장이의 경우 (사용량 제한 없음) : \n \n{blue} 25 레벨 요구 사항 \nall 적 면역이 10%%감소했습니다.\n",
                plPL = "{blue} 30 Wymagania poziomu \nie odporności na wroga zmniejszone o 10%%\n{purple} dla kowal (brak limitu użytkowania): \n \n{blue} 25 wymagania poziomu \nieprawidłowe odporności wroga zmniejszone o 10%%\n",
                ptBR = "{blue} requisito de 30 níveis \nall imunidades inimigas reduzidas em 10%%\n{purple} para ferreiros (sem limite de uso): \n \n{blue} 25 requisito de nível \nall imunidades inimigas reduzidas por 10%%\n",
                ruRU = "ÿC3 30 Требование уровня \n Недоветные иммунитеты противника уменьшены на 10%%\n{purple} для кузнецов (без ограничения использования): \n \n{blue} 25 Требование уровня \nall противника понижена на 10%%\n",
                zhCN = "C3 30水平要求\nALL敌方免疫减少10%%\nβ;对于铁匠（无用限制）：\n \n \n〜C3 25水平要求\nALL敌人的免疫力降低了10%%\n",
                zhTW = "C3 30水平要求\nALL敵方免疫減少10%%\nβ;對於鐵匠（無用限制）：\n \n \n〜C3 25水平要求\nALL敵人的免疫力降低了10%%\n",
            }
        },
        {
            code = "Ev1",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue} 35%% Kalt-/Feuer-/Blitzschaden für 10 Minuten \nŸc0eat, um zu erhalten: \n \nbinc5a Geschenk vom Boney Bunny ...\n",
                enUS = "{blue}+35%% Cold/Fire/Lightning Damage for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue} 35%% Cold/Fire/Lightning Daño durante 10 minutos \n{white}eat para recibir: \n \n{gray}a regalo del conejito de huesos ...\n",
                esMX = "{blue} 35%% Cold/Fire/Lightning Daño durante 10 minutos \n{white}eat para recibir: \n \n{gray}a regalo del conejito de huesos ...\n",
                frFR = "{blue} 35%% Dommages à froid / feu / Lightning pendant 10 minutes \nÿC0EAT à recevoir: \n \n{gray}a Cadeau du Boney Bunny ...\n",
                itIT = "{blue} 35%% Danno freddo/fuoco/fulmini per 10 minuti \n{white}eat da ricevere: \n \n{gray}a regalo dal coniglietto Bonesy ...\n",
                jaJP = "{blue} 35%%コールド/火/稲妻ダメージ10分間\nc0eat受け取る：\n \n{gray}a骨バニーからの贈り物...\n",
                koKR = "{blue} 35%% 감기/화재/번개 손상 10 분 \n{white}eat 수신 : \n \n{gray}a Bonesy Bunny의 선물 ... ...\n",
                plPL = "{blue} 35%% obrażeń zimnych/ognia/błyskawicy przez 10 minut \n{white}at, aby otrzymać: \n \nÿC5a Prezent od Boney Bunny ...\n",
                ptBR = "{blue} 35%% de dano de frio/fogo/raio por 10 minutos \n{white}eat para receber: \n \n{gray}a presente do coelho Bonesy ...\n",
                ruRU = "{blue} 35%% холодный/огнестойкий/молниеносный урон за 10 минут \n{white}eat для получения: \n \n{gray}a подарок от костей кролика ...\n",
                zhCN = "{blue} 35%%冷/火/闪电损坏10分钟\nμC0EAT要接收：\n \n〜C5A礼物来自Bonesy Bunny ...\n",
                zhTW = "{blue} 35%%冷/火/閃電損壞10分鐘\nμC0EAT要接收：\n \n〜C5A禮物來自Bonesy Bunny ...\n",
            }
        },
        {
            code = "Ev2",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}+30%% Angriffstempo und Zauberrate für 10 Minuten\n{white}Iss zum erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny ...\n",
                enUS = "{blue}+30%% Attack and Cast Speed for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue} 30 %% de velocidad de ataque y lanzamiento durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                esMX = "{blue} 30 %% de velocidad de ataque y lanzamiento durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                frFR = "{blue} 30 %% de vitesse d'attaque et d'incantation pendant 10 minutes\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny...\n",
                itIT = "{blue} 30%% di attacco e velocità di lancio per 10 minuti\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto...\n",
                jaJP = "{blue} 10 分間、攻撃力と詠唱速度が 30%% 増加\n{white} 食べると受け取ります:\n\n{gray} 骨っぽいバニーからの贈り物...\n",
                koKR = "{blue} 10분 동안 30%% 공격 및 시전 속도\n{white}먹고 다음을 받으세요:\n\n{gray}Bonesy Bunny의 선물...\n",
                plPL = "{blue} 30%% szybkości ataku i rzucania na 10 minut\n{white}Zjedz, aby otrzymać:\n\n{gray} Prezent od Kościstego Królika...\n",
                ptBR = "{blue} 30%% de velocidade de ataque e lançamento por 10 minutos\n{white}Coma para receber:\n\n{gray}Um presente do Bonesy Bunny...\n",
                ruRU = "{blue} Скорость атаки и сотворения чар 30%% на 10 минут.\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика...\n",
                zhCN = "{blue} 30%% 攻击和施法速度，持续 10 分钟\n{white}吃东西即可获得：\n\n{gray}来自骨头兔子的礼物...\n",
                zhTW = "{blue} 30%% 攻擊和施法速度，持續 10 分鐘\n{white}吃東西即可獲得：\n\n{gray}來自骨頭兔子的禮物...\n",
            }
        },
        {
            code = "Ev3",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}ignore alle feindlichen Widerstände für 10 Minuten \nŸc0eat, um zu erhalten: \n \nŸc5a Geschenk von der Bonesy Bunny ...\n",
                enUS = "{blue}Ignore All Enemy Resistances for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue}IGNore Todas las resistencias enemigas durante 10 minutos \n{white}eat para recibir: \n \n{gray}a regalo del conejito de huesos ...\n",
                esMX = "{blue}IGNore Todas las resistencias enemigas durante 10 minutos \n{white}eat para recibir: \n \n{gray}a regalo del conejito de huesos ...\n",
                frFR = "{blue}IGNORE Toutes les résistances ennemies pendant 10 minutes \nÿC0EAT à recevoir: \n \n{gray}a Cadeau du BONESY BUNNY ...\n",
                itIT = "{blue}GoGore Tutte le resistenze nemiche per 10 minuti \n{white}eat da ricevere: \n \n{gray}a regalo dal coniglietto Bonesy ...\n",
                jaJP = "{blue}IGNOREすべての敵の抵抗は10分間\nÿC0EATを受け取る：\n \nÿC5A骨バニーからの贈り物...\n",
                koKR = "{blue}ignore 10 분 동안의 모든 적 저항 \n{white}eat를받을 수 있습니다 : \n \n{gray}a Bonesy Bunny의 선물 ...\n",
                plPL = "{blue}ignore Wszystkie opory wroga na 10 minut \n{white}eat, aby otrzymać: \n \n{gray}a Prezent od Boney Bunny ...\n",
                ptBR = "{blue}ignore todas as resistências inimigas por 10 minutos \n{white}eat para receber: \n \n{gray}a presente do coelho Bonesy ...\n",
                ruRU = "{blue}Inignore все сопротивления врага в течение 10 минут \n{white}eat для получения: \n \n{gray}a подарок от костей кролика ...\n",
                zhCN = "{blue}IGNORE所有敌人的抵抗力10分钟\n²C0eat要接收：\n \n²c5abonesy兔子的礼物...\n",
                zhTW = "{blue}IGNORE所有敵人的抵抗力10分鐘\n²C0eat要接收：\n \n²c5abonesy兔子的禮物...\n",
            }
        },
        {
            code = "Ev4",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}+100%% Gold und Magiefund für 10 Minuten\n{white}Iss zum erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny ...\n",
                enUS = "{blue}+100%% Gold and Magic Find for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue} 100%% oro y magia Encuentra durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                esMX = "{blue} 100%% oro y magia Encuentra durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                frFR = "{blue} 100 %% d'or et de magie Trouvez pendant 10 minutes\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny...\n",
                itIT = "{blue} Trova oro e magia al 100%% per 10 minuti\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto...\n",
                jaJP = "{blue} 100%% ゴールドとマジックを 10 分間見つけます\n{white} 食べると受け取ります:\n\n{gray} Bonesy Bunny からの贈り物...\n",
                koKR = "{blue} 10분 동안 100%% 골드와 마법 발견\n{white}먹고 다음을 받으세요:\n\n{gray}Bonesy Bunny의 선물...\n",
                plPL = "{blue} 100%% złota i magii Znajdź przez 10 minut\n{white}Zjedz, aby otrzymać:\n\n{gray}Prezent od Kościstego Króliczka...\n",
                ptBR = "{blue} 100%% Ouro e Magia Encontre por 10 minutos\n{white}Coma para receber:\n\n{gray}Um presente do Bonesy Bunny...\n",
                ruRU = "{blue} 100%% золото и магический поиск на 10 минут\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика...\n",
                zhCN = "{blue} 10 分钟内获得 100%% 黄金和魔法\n{white}吃下即可获得：\n\n{gray}来自骨头兔子的礼物...\n",
                zhTW = "{blue} 10 分鐘內獲得 100%% 黃金和魔法\n{white}吃下即可獲得：\n\n{gray}來自骨頭兔子的禮物...\n",
            }
        },
        {
            code = "Ev5",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}Die Gesundheitsregeneration wurde 10 Minuten lang um 20 und die Manaregeneration um 100 %% erhöht.\n{white}Essen Sie, um Folgendes zu erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny ...\n",
                enUS = "{blue}Health Regen increased by 20 and Mana Regen increased by 100%% for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue}La regeneración de salud aumentó en 20 y la regeneración de maná aumentó en un 100%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                esMX = "{blue}La regeneración de salud aumentó en 20 y la regeneración de maná aumentó en un 100%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny...\n",
                frFR = "{blue}Régénération de santé augmentée de 20 et Régénération de mana augmentée de 100 %% pendant 10 minutes\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny...\n",
                itIT = "{blue}Rigenerazione salute aumentata di 20 e rigenerazione mana aumentata del 100%% per 10 minuti\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto...\n",
                jaJP = "{blue}ヘルス回復が 20 増加し、マナ回復が 10 分間 100%% 増加しました\n{white}食べると受け取ります:\n\n{gray}Bonesy Bunny からの贈り物...\n",
                koKR = "{blue}건강 재생은 10분 동안 20 증가하고 마나 재생은 100%% 증가합니다.\n{white}먹으면 다음을 받습니다:\n\n{gray}Bonesy Bunny로부터 선물...\n",
                plPL = "{blue}Regeneracja zdrowia zwiększona o 20, a regeneracja many zwiększona o 100%% na 10 minut\n{white}Zjedz, aby otrzymać:\n\n{gray}Prezent od Kościstego Królika...\n",
                ptBR = "{blue}Regeneração de Saúde aumentada em 20 e Regeneração de Mana aumentada em 100%% por 10 minutos\n{white}Coma para receber:\n\n{gray}Um presente do Coelhinho Ossudo...\n",
                ruRU = "{blue}Регенерация здоровья увеличена на 20, а регенерация маны увеличена на 100%% на 10 минут.\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика...\n",
                zhCN = "{blue}生命恢复增加 20，法力恢复增加 100%%，持续 10 分钟\n{white}吃即可收到：\n\n{gray}来自骨头兔子的礼物...\n",
                zhTW = "{blue}生命恢復增加 20，法力恢復增加 100%%，持續 10 分鐘\n{white}吃即可收到：\n\n{gray}來自骨頭兔子的禮物...\n",
            }
        },
        {
            code = "Ev6",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}Vitalität und Energie erhöht sich 10 Minuten lang um 20 %%\n{white}Essen Sie, um Folgendes zu erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny...\n",
                enUS = "{blue}Vitality and Energy increased by 20%% for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue}La vitalidad y la energía aumentaron un 20%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo del Bonesy Bunny...\n",
                esMX = "{blue}La vitalidad y la energía aumentaron un 20%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo del Bonesy Bunny...\n",
                frFR = "{blue}Vitalité et énergie augmentées de 20 %% pendant 10 minutes\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny...\n",
                itIT = "{blue}Vitalità ed energia aumentate del 20%% per 10 minuti\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto...\n",
                jaJP = "{blue}活力とエネルギーが 10 分間 20%% 増加しました\n{white}食べると受け取ります:\n\n{gray}Bonesy Bunny からの贈り物...\n",
                koKR = "{blue}활력과 에너지가 10분 동안 20%% 증가합니다.\n{white}먹으면 다음을 받습니다:\n\n{gray}Bonesy Bunny로부터 선물...\n",
                plPL = "{blue}Witalność i energia zwiększone o 20%% na 10 minut\n{white}Zjedz, aby otrzymać:\n\n{gray}Prezent od Kościstego Królika...\n",
                ptBR = "{blue}Vitalidade e energia aumentadas em 20%% por 10 minutos\n{white}Coma para receber:\n\n{gray}Um presente do Bonesy Bunny...\n",
                ruRU = "{blue}Жизнеспособность и энергия увеличены на 20%% на 10 минут.\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика...\n",
                zhCN = "{blue}活力和能量增加 20%%，持续 10 分钟\n{white}吃东西即可收到：\n\n{gray}Bonesy Bunny 的礼物...\n",
                zhTW = "{blue}活力和能量增加 20%%，持續 10 分鐘\n{white}吃東西即可收到：\n\n{gray}Bonesy Bunny 的禮物...\n",
            }
        },
        {
            code = "Ev7",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{blue}+25%% Magie- und Giftschaden für 10 Minuten\n{white}Iss zum erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny ...\n",
                enUS = "{blue}Magic and Poison Damage increased by 25%% for 10 minutes\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...\n",
                esES = "{blue}El daño mágico y de veneno aumentó un 25%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo del Bonesy Bunny...\n",
                esMX = "{blue}El daño mágico y de veneno aumentó un 25%% durante 10 minutos\n{white}Come para recibir:\n\n{gray}Un regalo del Bonesy Bunny...\n",
                frFR = "{blue}Dégâts de magie et de poison augmentés de 25 %% pendant 10 minutes\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny...\n",
                itIT = "{blue}Danni magici e da veleno aumentati del 25%% per 10 minuti\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto...\n",
                jaJP = "{blue}魔法と毒のダメージが 10 分間 25%% 増加しました\n{white}食べると受け取ることができます:\n\n{gray}Bonesy Bunny からの贈り物...\n",
                koKR = "{blue}마법 및 독 피해가 10분 동안 25%% 증가했습니다.\n{white}먹으면 다음을 받습니다:\n\n{gray}Bonesy Bunny로부터 선물...\n",
                plPL = "{blue}Obrażenia od magii i trucizny zwiększone o 25%% na 10 minut\n{white}Zjedz, aby otrzymać:\n\n{gray}Prezent od Kościstego Królika...\n",
                ptBR = "{blue}Dano mágico e venenoso aumentado em 25%% por 10 minutos\n{white}Coma para receber:\n\n{gray}Um presente do Coelhinho Ossudo...\n",
                ruRU = "{blue}Урон от магии и яда увеличен на 25%% на 10 минут.\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика...\n",
                zhCN = "{blue}魔法和毒药伤害增加 25%%，持续 10 分钟\n{white}吃东西即可获得：\n\n{gray}来自骨头兔子的礼物...\n",
                zhTW = "{blue}魔法和毒藥傷害增加 25%%，持續 10 分鐘\n{white}吃東西即可獲得：\n\n{gray}來自骨頭兔子的禮物...\n",
            }
        },
        {
            code = "Ev8",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{gray}(Alle Effekte halten 10 Minuten an)\n{blue}Reduziert Händlerpreise um 20%%\n+50%% Erfahrung\n+1 alle Fertigkeiten\n{white}Iss zum erhalten:\n\n{gray}Ein Geschenk vom Bonesy Bunny ... für die Schlauen unter euch\n",
                enUS = "{gray}(All effects last for 10 minutes)\n{blue}Reduce Vendor Prices by 20%%\n+50%% Experience Gained\n+1 to All Skills\n{white}Eat to receive:\n\n{gray}A gift from the Bonesy Bunny...for the clever among you\n",
                esES = "{gray}(Todos los efectos duran 10 minutos)\n{blue}Reduce los precios de los vendedores en un 20%%\n 50%% de experiencia obtenida\n 1 para todas las habilidades\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny... para los inteligentes entre ustedes\n",
                esMX = "{gray}(Todos los efectos duran 10 minutos)\n{blue}Reduce los precios de los vendedores en un 20%%\n 50%% de experiencia obtenida\n 1 para todas las habilidades\n{white}Come para recibir:\n\n{gray}Un regalo de Bonesy Bunny... para los inteligentes entre ustedes\n",
                frFR = "{gray}(Tous les effets durent 10 minutes)\n{blue}Réduisez les prix des fournisseurs de 20 %%\n 50 %% d'expérience acquise\n 1 pour toutes les compétences\n{white}Mangez pour recevoir :\n\n{gray}Un cadeau du Bonesy Bunny... pour les plus intelligents d'entre vous\n",
                itIT = "{gray}(Tutti gli effetti durano 10 minuti)\n{blue}Riduci i prezzi dei venditori del 20%%\n 50%% di esperienza acquisita\n Da 1 a tutte le abilità\n{white}Mangia per ricevere:\n\n{gray}Un regalo dal coniglietto ossuto... per i più intelligenti tra voi\n",
                jaJP = "{gray}(すべての効果は 10 分間持続します)\n{blue}ベンダー価格を 20%% 削減\n 獲得経験値 50%%\n すべてのスキルに 1\n{white}食べると受け取れます:\n\n{gray}Bonesy Bunny からの贈り物...あなたの中の賢い人へ\n",
                koKR = "{gray}(모든 효과는 10분 동안 지속됨)\n{blue}판매자 가격 20%% 감소\n 경험치 획득 50%%\n 모든 스킬 1개\n{white}먹으면 다음을 받을 수 있습니다:\n\n{gray}Bonesy Bunny의 선물...영리한 분들을 위한 선물\n",
                plPL = "{gray}(Wszystkie efekty trwają 10 minut)\n{blue}Zmniejsz ceny sprzedawców o 20%%\n 50%% zdobytego doświadczenia\n 1 do wszystkich umiejętności\n{white}Zjedz, aby otrzymać:\n\n{gray}Prezent od Kościstego Królika... dla sprytnych spośród was\n",
                ptBR = "{gray}(Todos os efeitos duram 10 minutos)\n{blue}Reduza os preços dos fornecedores em 20%%\n 50%% de experiência adquirida\n 1 para todas as habilidades\n{white}Coma para receber:\n\n{gray}Um presente do Bonesy Bunny...para os espertos entre vocês\n",
                ruRU = "{gray}(Все эффекты длятся 10 минут)\n{blue}Снижение цен у торговцев на 20%%\n 50%% получаемого опыта\n 1 ко всем навыкам\n{white}Съешьте, чтобы получить:\n\n{gray}Подарок от Костяного кролика... для самых умных среди вас\n",
                zhCN = "{gray}（所有效果持续 10 分钟）\n{blue} 将供应商价格降低 20%%\n 获得 50%% 经验\n 所有技能 1 点\n{white}吃得到：\n\n{gray} 来自骨头兔子的礼物...给你们中的聪明人\n",
                zhTW = "{gray}（所有效果持續10 分鐘）\n{blue} 將供應商價格降低20%%\n 獲得50%% 經驗\n 所有技能1 點\n{white}吃得到：\n\n{gray} 來自骨頭兔子的禮物...給你們中的聰明人\n",
            }
        },
        {
            code = "z82",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Cube allein, für den nächsten Entfernertyp\n\n{green}Schilde/Schmuck: {white}+2 Beschwörungskraft\n{green}Helme/Gürtel: {white}+2 Zauberkraft\n{green}Rüstungen/Stiefel: {white}+2 Zauberkraft\n{green}Waffen/Handschuhe: {white}+2 Kampfkraft\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-1{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+2 Summoning Power\n{green}Helms/Belts: {white}+2 Spell Power\n{green}Armors/Boots: {white}+2 Spell Power\n{green}Weapons/Gloves: {white}+2 Combat Power\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-1{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 2 Poder de invocación\n{green}Yelmos/Cinturones: {white} 2 Poder con hechizos\n{green}Armas/Botas: {white} 2 Poder con hechizos\n{green}Armas/Guantes: {white} 2 Poder de combate\n{turquoise}R una vista previa:  \n\n{white}(Ultra Puntos {blue}-1{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 2 Poder de invocación\n{green}Yelmos/Cinturones: {white} 2 Poder con hechizos\n{green}Armas/Botas: {white} 2 Poder con hechizos\n{green}Armas/Guantes: {white} 2 Poder de combate\n{turquoise}R una vista previa:  \n\n{white}(Ultra Puntos {blue}-1{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/gioielli: {white} 2 potere di evocazione\n{green}Elmi/cinture: {white} 2 potere magico\n{green}Armature/stivali: {white} 2 potere magico\n{green}Armi/guanti: {white} 2 potere di combattimento\n{turquoise}Rune Anteprima:  \n\n{white}(Ultra Punti {blue}-1{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux : {white} 2 Pouvoir d'invocation\n{green}Heaumes/Ceintures : {white} 2 Pouvoir des sorts\n{green}Armures/Bottes : {white} 2 Pouvoir des sorts\n{green}Armes/Gants : {white} 2 Pouvoir de combat\n{turquoise}Rune Aperçu :  \n\n{white}(Ultra Points {blue}-1{white})\n",
                jaJP = "次のリムーバー タイプに変更するには {tan}Cube のみ\n\n{green} シールド/ジュエリー: {white} 2 召喚力\n{green} ヘルム/ベルト: {white} 2 呪文パワー\n{green} アーマー/ブーツ: {white} 2 呪文パワー\n{green} 武器/グローブ: {white} 2 戦闘力\n{turquoise}Rune プレビュー:  \n\n{white}(ウルトラポイント {blue}-1{white})\n{tan}Di {gold}リムーバー\n",
                koKR = "{tan}큐브만 사용하여 다음 제거제 유형으로 변경\n\n{green}방패/보석: {white} 2 소환력\n{green}헬름/벨트: {white} 2 주문력\n{green}갑옷/부츠: {white} 2 주문력\n{green}무기/장갑: {white} 2 전투력\n{turquoise}Rune 미리보기:  \n\n{white}(울트라 포인트 {blue}-1{white})\n",
                plPL = "{tan}Cube, aby zmienić na następny typ narzędzia do usuwania\n\n{green}Tarcze/biżuteria: {white} 2 moce przywołania\n{green}Helmy/pasy: {white} 2 moc zaklęć\n{green}Zbroje/buty: {white} 2 moc zaklęć\n{green}Broń/rękawice: {white} 2 moce bojowe\nÿ Podgląd cNRune:  \n\n{white}(Ultra punkty {blue}-1{white})\n{tan}Di {gold}Usuwacz\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 2 Poder de Invocação\n{green}Elmos/Cintos: {white} 2 Poder Mágico\n{green}Armaduras/Botas: {white} 2 Poder Mágico\n{green}Armas/Luvas: {white} 2 Poder de Combate\n{turquoise}Rune :  \n\n{white}(Ultra Pontos {blue}-1{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу средства удаления.\n\n{green}Щиты/Украшения: {white} 2 Сила призыва\n{green}Шлемы/Ремни: {white} 2 Сила заклинаний\n{green}Броня/Ботинки: {white} 2 Сила заклинаний\n{green}Оружие/перчатки: {white} 2 Боевая сила\n{turquoise}R Предварительный просмотр:  \n\n{white}(Ultra Points {blue}-1{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个去除剂类型\n\n{green}护盾/珠宝：{white} 2 召唤能力\n{green}头盔/腰带：{white} 2 法术强度\n{green}盔甲/靴子：{white} 2 法术强度\n{green}武器/手套：{white} 2 战斗能力\n{turquoise}Rune 预览：  \n\n{white}(超点{blue}-1{white})\n",
                zhTW = "{tan}Cube 單獨改為下一個去除劑類型\n\n{green}護盾/珠寶：{white} 2 召喚能力\n{green}頭盔/腰帶：{white} 2 法術強度\n{green}盔甲/靴子：{white} 2 法術強度\n{green} 武器/手套：{green}戰鬥能力\n{turquoise}Rune 預覽： \n\n{white}(超點{blue}-1{white})\n",
            }
        },
        {
            code = "z83",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Cube allein, für den nächsten Entfernertyp\n\n{green}Schilde/Schmuck: {white}Reduzierte Abklingzeiten um 10%%\n{green}Helme/Gürtel: {white}Erhöht Buff-Dauer um 10%%\n{green}Rüstungen/Stiefel: {white}Erhöht Buff-Dauer um 10%%\n{green}Waffen/Handschuh s: {white}Reduzierte Abklingzeiten um 10%%\n{turquoise}Rune Preview:\n\n{white}(Ultra {blue}-2{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}Reduces Cooldowns by 10%%\n{green}Helms/Belts: {white}Increases Buff Durations by 10%%\n{green}Armors/Boots: {white}Increases Buff Durations by 10%%\n{green}Weapons/Gloves: {white}Reduces Cooldowns by 10%%\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-2{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Reduce los tiempos de reutilización en un 10%%\n{green}Cascos/cinturones: {white}Aumenta la duración de las mejoras en un 10%%\n{green}Armas/Botas: {white}Aumenta la duración de las mejoras en un 10%%\n{green}Armas/G ama: {white}Reduce los tiempos de reutilización en  10%%\n{turquoise}Rune Vista previa:\n\n{white}(Ultra Points {blue}-2{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white}Reduce los tiempos de reutilización en un 10%%\n{green}Cascos/cinturones: {white}Aumenta la duración de las mejoras en un 10%%\n{green}Armas/Botas: {white}Aumenta la duración de las mejoras en un 10%%\n{green}Armas/G ama: {white}Reduce los tiempos de reutilización en  10%%\n{turquoise}Rune Vista previa:\n\n{white}(Ultra Points {blue}-2{white})\n",
                frFR = "{tan}Cube da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/gioielli: {white}Riduce i tempi di recupero del 10%%\n{green}Elmi/Cinture: {white}Aumenta la durata dei buff del 10%%\n{green}Armature/stivali: {white}Aumenta la durata dei buff del 10%%\n{green}Armi/guanti: {white}Riduce i tempi di recupero di  10%%\n{turquoise}Rune Anteprima:\n\n{white}(Ultra Points {blue}-2{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux : {white}Réduit les temps de recharge de 10 %%\n{green}Casques/Ceintures : {white}Augmente la durée des buffs de 10 %%\n{green}Armures/bottes : {white}Augmente les durées des buffs de 10 %%\n{green}Armes/Gants : {white}Réduit les temps de recharge de  10 %%\n{turquoise}Rune Aperçu :\n\n{white}(Ultra Points {blue}-2{white})\n",
                jaJP = "{tan}キューブのみで次のリムーバータイプに変更します\n\n{green}シールド/ジュエリー: {white}クールダウンを10%%短縮\n{green}ヘルム/ベルト:{white}バフ持続時間を10%%延長\n{green}アーマー/ブーツ:{white}バフ持続時間を10%%延長\n{green}武器/グローブ: {white}クールダウンを短縮します 10%%\n{turquoise}Rune プレビュー:\n\n{white}(ウルトラ ポイント {blue}-2{white})\n",
                koKR = "{tan}큐브만 사용하여 다음 제거제 유형으로 변경\n\n{green}방패/장신구: {white} 쿨다운 10%% 감소\n{green}헬름/벨트: {white}버프 지속 시간 10%% 증가\n{green}방어구/부츠: {white}버프 지속 시간 10%% 증가\n{green}무기/장갑 s: {white} 쿨다운을 다음과 같이 줄입니다.  10%%\n{turquoise}Rune 미리보기:\n\n{white}(울트라 포인트 {blue}-2{white})\n",
                plPL = "{tan}Kostka do zmiany na następny typ narzędzia do usuwania\n\n{green}Tarcze/Biżuteria: {white}Skraca czasy odnowienia o 10%%\n{green}Helmy/Paski: {white}Wydłuża czas trwania wzmocnienia o 10%%\n{green}Zbroje/buty: {white}Wydłuża czas trwania wzmocnienia o 10%%\n{green}Bronie/ Rękawice: {white} Skraca czasy odnowienia o  10%%\n{turquoise}Rune Preview:\n\n{white}(Ultra punkty {blue}-2{white})\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Shields/Jewelry: {white}Reduz o tempo de espera em 10%%\n{green}Helms/Belts: {white}Aumenta a duração do buff em 10%%\n{green}Armors/Boots: {white}Aumenta a duração do buff em 10%%\n{green}Weapons/Glove s: {white}Reduz o tempo de espera em  10%%\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-2{white})\n",
                ruRU = "{tan}Cube в одиночку, чтобы перейти к следующему типу средства удаления.\n\n{green}Щиты/Ювелирные изделия: {white}Уменьшает время восстановления на 10%%\n{green}Шлемы/Ремни: {white}Увеличивает длительность усиления на 10%%\n{green}Броня/Ботинки: {white}Увеличивает длительность усиления на 10%%\n{green}Оружие/ Перчатки: {white}Уменьшает время восстановления на  10%%\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-2{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个去除剂类型\n\n{green}护盾/珠宝：{white}冷却时间减少 10%%\n{green}头盔/腰带：{white}增加增益持续时间 10%%\n{green}盔甲/靴子：{white}增加增益持续时间 10%%\n{green}武器/手套: {white} 冷却时间减少 10%%\n{turquoise}Rune 预览:\n\n{white}(超点{blue}-2{white})\n",
                zhTW = "{tan}Cube 單獨改為下一個去除劑類型\n\n{green}護盾/珠寶：{white}冷卻時間減少10%%\n{green}頭盔/腰帶：{white}增加增益持續時間10%%\n{green}盔甲/靴子：{white}增加增益持續時間10%% \n{green}武器/手套: {white} 冷卻時間減少10%%\n{turquoise}Rune 預覽:\n\n{white}(超點{blue}-2{white})\n",
            }
        },
        {
            code = "z84",
            location = { "onplayer", "atvendor" },
            prefix = {
                deDE = "{tan}Cube allein, für den nächsten Entfernertyp\n\n{green}Schilde/Schmuck: {white}+1 alle Fertigkeiten\n{green}Helme/Gürtel: {white}+1 alle Fertigkeiten\n{green}Rüstungen/Stiefel: {white}+1 alle Fertigkeiten\n{green}Waffen/Handschuhe: {white}+1 alle Fertigkeiten\n{turquoise}Rune Preview:\n\n{white}(Ultra {blue}-4{white})\n",
                enUS = "{tan}Cube alone to change to next remover type\n\n{green}Shields/Jewelry: {white}+1 to All Skills\n{green}Helms/Belts: {white}+1 to All Skills\n{green}Armors/Boots: {white}+1 to All Skills\n{green}Weapons/Gloves: {white}+1 to All Skills\n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-4{white})\n",
                esES = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 1 para todas las habilidades\n{green}Cascos/cinturones: {white} 1 para todas las habilidades\n{green}Armas/Botas: {white} 1 para todas las habilidades\n{green}Armas/Guantes: {white} 1 para todas las habilidades  \n{turquoise}Rune Vista previa:\n\n{white}(Ultra Points {blue}-4{white})\n",
                esMX = "{tan}Cubo solo para cambiar al siguiente tipo de eliminador\n\n{green}Escudos/Joyas: {white} 1 para todas las habilidades\n{green}Cascos/cinturones: {white} 1 para todas las habilidades\n{green}Armas/Botas: {white} 1 para todas las habilidades\n{green}Armas/Guantes: {white} 1 para todas las habilidades  \n{turquoise}Rune Vista previa:\n\n{white}(Ultra Points {blue}-4{white})\n",
                frFR = "{tan}Cubo da solo per passare al tipo di rimozione successivo\n\n{green}Scudi/Gioielli: {white} 1 a tutte le abilità\n{green}Elmi/Cinture: {white} 1 a tutte le abilità\n{green}Armature/Stivali: {white} 1 a tutte le abilità\n{green}Armi/Guanti: {white} 1 a tutte le abilità  \n{turquoise}Rune Anteprima:\n\n{white}(Ultra Points {blue}-4{white})\n",
                itIT = "{tan}Cube seul pour passer au type de dissolvant suivant\n\n{green}Boucliers/Bijoux : {white} 1 pour toutes les compétences\n{green}Helms/Ceintures : {white} 1 pour toutes les compétences\n{green}Armures/bottes : {white} 1 pour toutes les compétences\n{green}Armes/Gants : {white} 1 pour toutes les compétences  \n{turquoise}Rune Aperçu :\n\n{white}(Ultra Points {blue}-4{white})\n",
                jaJP = "次のリムーバー タイプに変更するには、c7Cube のみを使用します\n\n{green} シールド/ジュエリー: すべてのスキルに c0 1\n{green} ヘルム/ベルト: すべてのスキルに c0 1\n{green} アーマー/ブーツ: すべてのスキルに c0 1\n{green} 武器/手袋: すべてのスキルに c0 1  \n{turquoise}Rune プレビュー:\n\n{white}(ウルトラ ポイント {blue}-4{white})\n",
                koKR = "{tan}큐브만 사용하여 다음 제거 유형으로 변경\n\n{green}방패/보석: {white} 1 ~ 모든 스킬\n{green}헬름/벨트: {white} 1 ~ 모든 스킬\n{green}방어구/부츠: {white} 1 ~ 모든 스킬\n{green}무기/장갑: {white} 1 ~ 모든 스킬  \n{turquoise}Rune 미리보기:\n\n{white}(울트라 포인트 {blue}-4{white})\n",
                plPL = "{tan}Cube sam, aby zmienić na następny typ narzędzia do usuwania\n\n{green}Tarcze/biżuteria: {white} 1 do wszystkich umiejętności\n{green}Helmy/pasy: {white} 1 do wszystkich umiejętności\n{green}Zbroje/buty: {white} 1 do wszystkich umiejętności\n{green}Broń/rękawice: {white} 1 do wszystkich umiejętności  \nÿcPodgląd NRune:\n\n{white}(Ultra punkty {blue}-4{white})\n{tan}Er {gold}Usuwacz\n",
                ptBR = "{tan}Cube sozinho para mudar para o próximo tipo de removedor\n\n{green}Escudos/Jóias: {white} 1 para todas as habilidades\n{green}Elmos/cintos: {white} 1 para todas as habilidades\n{green}Armaduras/Botas: {white} 1 para todas as habilidades\n{green}Armas/luvas: {white} 1 para todas as habilidades  \n{turquoise}Rune Preview:\n\n{white}(Ultra Points {blue}-4{white})\n",
                ruRU = "{tan}cube только для того, чтобы перейти к следующему типу удаления \n\n{green}shields/Jewelry: {white} 1 ко всем навыкам \n{green}helms/ремни: {white} 1 ко всем навыкам \n{green}armors/Boots: {white} 1 ко всем навыкам \n{green}weapons/gloves: {white} 1 ко всем навыкам.  \n{turquoise}Rune Предварительный просмотр:\n\n{white}(Ultra Points {blue}-4{white})\n",
                zhCN = "{tan}Cube 单独更改为下一个去除剂类型\n\n{green}护盾/珠宝：{white} 1 为所有技能\n{green}头盔/腰带：{white} 1 为所有技能\n{green}盔甲/靴子：{white} 1 为所有技能\n{green}武器/手套：{white} 1 为所有技能 \n{turquoise}Rune 预览：\n\n{white}(超点{blue}-4{white})\n",
                zhTW = "{tan}Cube 單獨改為下一個去除劑類型\n\n{green}護盾/珠寶：{white} 1 為所有技能\n{green}頭盔/腰帶：{white} 1 為所有技能\n{green}盔甲/靴子：{white} 1 為所有技能\n{green}武器/手套：{white} 1 為所有技能\n{turquoise}Rune 預覽：\n\n{white}(超點{blue}-4{white})\n",
            }
        },
        {
            code = "Ev0",
            location = "onplayer",
            prefix = {
                deDE = "{gray}Sieht ziemlich alt und abgenutzt aus, ich frage mich, ob es sich lohnt, ihn zu würfeln ...\nIch kann nicht glauben, dass es schon drei Jahre her ist, dass ich gegen diese Dämonenhorde gekämpft habe.\nEs ist mit dem gleichen Datum wie die große Auferstehung dieses Reiches datiert\n",
                enUS = "{gray}Looks to be pretty old and beat up, wonder if its worth cubing...\nI can't believe it's been 3 years already fighting this demon horde\nIt's dated with the same date of the great resurrection of this realm\n",
                esES = "{gray}Parece bastante viejo y golpeado, me pregunto si vale la pena ponerlo en cubos...\nNo puedo creer que ya hayan pasado 3 años luchando contra esta horda de demonios\nEstá fechado en la misma fecha de la gran resurrección de este reino\n",
                esMX = "{gray}Parece bastante viejo y golpeado, me pregunto si vale la pena ponerlo en cubos...\nNo puedo creer que ya hayan pasado 3 años luchando contra esta horda de demonios\nEstá fechado en la misma fecha de la gran resurrección de este reino\n",
                frFR = "{gray}Sembra piuttosto vecchio e malconcio, mi chiedo se valga la pena farlo a cubetti...\nNon posso credere che siano già passati 3 anni dalla lotta contro questa orda di demoni\nÈ datato con la stessa data della grande resurrezione di questo regno\n",
                itIT = "{gray}Il a l'air assez vieux et battu, je me demande si ça vaut la peine d'être cubé...\nJe n'arrive pas à croire que ça fait déjà 3 ans que je combats cette horde de démons\nIl est daté de la même date de la grande résurrection de ce royaume\n",
                jaJP = "{gray}かなり年老いてボロボロのようですが、キューブ化する価値があるかどうかは疑問です...\nこのデーモンの大群と戦ってもう 3 年も経っているなんて信じられません\n日付はこの王国の大復活と同じです\n",
                koKR = "{gray} 꽤 늙고 지쳐 보이는데, 세울만한 가치가 있는지 궁금합니다...\n이 악마 무리와 벌써 3년이나 싸웠다는 게 믿겨지지 않습니다\n날짜가 이 왕국의 위대한 부활과 같은 날짜로 되어 있습니다\n",
                plPL = "{gray}Wygląda na dość starego i poobijanego, zastanawiam się, czy warto go pociąć w kostkę...\nNie mogę uwierzyć, że to już 3 lata walczę z tą hordą demonów\nJest datowany na tę samą datę wielkiego zmartwychwstania tego królestwa\n",
                ptBR = "{gray}Parece bem velho e surrado, me pergunto se vale a pena cubá-lo...\nNão posso acreditar que já se passaram 3 anos lutando contra essa horda de demônios\nÉ datado com a mesma data da grande ressurreição deste reino\n",
                ruRU = "{gray}Выглядит довольно старым и потрепанным, интересно, стоит ли его кубики...\nНе могу поверить, что уже 3 года сражаюсь с этой ордой демонов\nЭто датировано той же датой великого воскрешения этого мира\n",
                zhCN = "{gray}看起来很老而且很破旧，不知道它是否值得立方...\n我不敢相信它已经与这个恶魔部落战斗了三年\n它的日期与这个领域的伟大复活的日期相同\n",
                zhTW = "{gray}看起來很老而且很破舊，不知道它是否值得立方...\n我不敢相信它已經與這個惡魔部落戰鬥了三年\n它的日期與這個領域的偉大復活的日期相同\n",
            }
        },
        {
            code = "D01",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Imbued with the Spirits Blessing\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D02",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Let the Winds of Arreat bring swift justice to your enemies\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D03",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}This leather reeks of a potent magic stench\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D04",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged by Edyrem, the last Nephalem\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D05",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Bears the Brand of the Guardian\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D06",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The pain is worth the power\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D07",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Found at the bottom of Edyrem's Treasure Chest\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D08",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}You feel as if you could tap into darkness itself\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D09",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged on the summit of Mount Arreat\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D10",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The essence of Hellfire distilled into it's purest form\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D11",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Blessed by Jalal himself\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D12",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Boots stolen from a Barbarian Warlord as he slept\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D13",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}It seems even Lazarus was not immune to corruption\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D14",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}I think there's still bits of demon flesh on this...\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D15",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Mine...Mine...Mine...Mine...\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D16",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Not a Wizard's Spike\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D17",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}May the spirit of Arkaine protect you\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D18",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Mysteries are revealed as the color of reason\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D19",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}You feel as if death is now gazing upon you\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D20",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The Spirit of the Huntress emanates from this helm\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D21",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged in the Age of Destruction\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D22",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Meow.\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D23",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}A lethal binding once worn by Lyndon\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D24",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The master of runes is under your control now\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D25",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}A Reaver of Souls\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D26",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The long arm of the law has arrived\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D27",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Imbued by a Gleaming Apprentice\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D28",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Moo.\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D29",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged during the Age of Wonders\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D30",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Mash em, Bash em, Crush em\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D31",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forced relocation is a long forgotten invocation\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D32",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The essence of demon souls in its purest form\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D33",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Shredding demons is a hobby of mine\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D34",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged by Jamella in her last battle\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D35",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Hot off Edyrem's production line\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D36",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Used to hold up your pants\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D37",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged during the Age of Enlightenment\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D38",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}I must thank Malah for this enchantment...\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D39",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}He was a big dumb dumb, but he had good taste...\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D40",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Forged in the Crystal Ice Caves\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D41",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Unleash a storm of undead minions\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D42",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Slice em, Dice em, Chop em in two\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D43",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}The toll of death sounds to those who oppose you\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D44",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}Looks like there was one final lesson to learn...\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },
        {
            code = "D45",
            location = { "onplayer", "equipped" },
            prefix = {
                deDE = "{gray}Durchdrungen vom Segen der Geister\n",
                enUS = "{gray}These boots are made for Treking\n",
                esES = "{gray}Imbuido con la bendición de los espíritus\n",
                esMX = "{gray}Imbuido con la bendición de los espíritus\n",
                frFR = "{gray}Imbevuto della benedizione degli spiriti\n",
                itIT = "{gray}Imbu de la bénédiction des esprits\n",
                jaJP = "{gray}精霊の祝福を吹き込む\n",
                koKR = "{gray}영혼의 축복이 깃들어\n",
                plPL = "{gray}Nasycony duchowym błogosławieństwem\n",
                ptBR = "{gray}Imbuído com a Bênção dos Espíritos\n",
                ruRU = "{gray}Наделено благословением духов\n",
                zhCN = "{gray}充满灵魂祝福\n",
                zhTW = "{gray}充滿靈魂祝福\n",
            }
        },

        -- endregion

    }
}
--[[

Exposed/Available Arguments:
code or codes = Define the 3-character item code the game uses for the item
index = Define the Set or Unique iitem index to search (useful for unid items)
name_override = Change name to w/e you want, overriding it's normal display name
prefix = Apply the designated text before the item name
suffix = Apply the designated text after the item name
hide = True or False. Hide or Display all items that match the provided code(s)
notify = "" Just enables a notifier
notify = "message" Will enable a notifer the custom message
notify = "message {link}" Will enable a custom message and a link to that item
area = NOT {"Rogue Encampment","Lut Gholein","Kurast Docks","The Pandemonium Fortress","Harrogath"} Doesnt filter out items in Towns

index = 0+, Unique numeric identifiers for set/unique items, useful for determining set/unique while still unid. Can be used as both a condition and an output
quality = 1-7, Inferior through Unique. Can be used as both a condition and an output. Can use values such as 3+ or 3- for greater than or less than
rarity = 0-2, Normal, Exceptional, Elite. Can be used as both a condition and an output
sockets = 0-6, None to Max. Can be used as both a condition and an output. Can use values such as 3+ or 3- for greater than or less than
ethereal = True or False. Can be used as both a condition and an output


stat = Check the item for specific stats, can define multiple stat requirements.  Can be used as both a condition and an output
stat Example Usage: stat = { index = 39, op = ">=", value = 25 }
This checks stat #39, which is fire resistance, and confirms whether or not it's greater than or equal to 25
You may also use this stat check to compare a range of stats, or stats special parameters. Conditional range:
stat Example Usage: stat = { index = 39, op = "between", value = {25,35} }. This checks to verify the stat is between the min and max values
You can also use it for parameters such as:
stat Example Usage: stat = { index = 97, op = ">=", value = 2, param = 36}
This checks stat#97, which grans a non-class skill, and sees if the value is 2 or higher.
It also checks the param of the skill, to make sure it's giving +2 or more specifically to Fire Bolt, which is skill id 36.


------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------

Available Armor, Misc and Weapon Item Codes:

--Armors--
cap -- Cap
skp -- Skull Cap
hlm -- Helm
fhl -- Full Helm
ghm -- Great Helm
crn -- Crown
msk -- Mask
qui -- Quilted Armor
lea -- Leather Armor
hla -- Hard Leather Armor
stu -- Studded Leather
rng -- Ring Mail
scl -- Scale Mail
chn -- Chain Mail
brs -- Breast Plate
spl -- Splint Mail
plt -- Plate Mail
fld -- Field Plate
gth -- Gothic Plate
ful -- Full Plate Mail
aar -- Ancient Armor
ltp -- Light Plate
buc -- Buckler
sml -- Small Shield
lrg -- Large Shield
kit -- Kite Shield
tow -- Tower Shield
gts -- Gothic Shield
lgl -- Leather Gloves
vgl -- Heavy Gloves
mgl -- Chain Gloves
tgl -- Light Gauntlets
hgl -- Gauntlets
lbt -- Boots
vbt -- Heavy Boots
mbt -- Chain Boots
tbt -- Light Plated Boots
hbt -- Greaves
lbl -- Sash
vbl -- Light Belt
mbl -- Belt
tbl -- Heavy Belt
hbl -- Plated Belt
bhm -- Bone Helm
bsh -- Bone Shield
spk -- Spiked Shield
xap -- War Hat
xkp -- Sallet
xlm -- Casque
xhl -- Basinet
xhm -- Winged Helm
xrn -- Grand Crown
xsk -- Death Mask
xui -- Ghost Armor
xea -- Serpentskin Armor
xla -- Demonhide Armor
xtu -- Trellised Armor
xng -- Linked Mail
xcl -- Tigulated Mail
xhn -- Mesh Armor
xrs -- Cuirass
xpl -- Russet Armor
xlt -- Templar Coat
xld -- Sharktooth Armor
xth -- Embossed Plate
xul -- Chaos Armor
xar -- Ornate Armor
xtp -- Mage Plate
xuc -- Defender
xml -- Round Shield
xrg -- Scutum
xit -- Dragon Shield
xow -- Pavise
xts -- Ancient Shield
xlg -- Demonhide Gloves
xvg -- Sharkskin Gloves
xmg -- Heavy Bracers
xtg -- Battle Gauntlets
xhg -- War Gauntlets
xlb -- Demonhide Boots
xvb -- Sharkskin Boots
xmb -- Mesh Boots
xtb -- Battle Boots
xhb -- War Boots
zlb -- Demonhide Sash
zvb -- Sharkskin Belt
zmb -- Mesh Belt
ztb -- Battle Belt
zhb -- War Belt
xh9 -- Grim Helm
xsh -- Grim Shield
xpk -- Barbed Shield
dr1 -- Wolf Head
dr2 -- Hawk Helm
dr3 -- Antlers
dr4 -- Cub Cap
dr5 -- Spirit Mask
ba1 -- Jawbone Cap
ba2 -- Fanged Helm
ba3 -- Horned Helm
ba4 -- Assault Helmet
ba5 -- Avenger Guard
pa1 -- Targe
pa2 -- Rondache
pa3 -- Heraldic Shield
pa4 -- Aerin Shield
pa5 -- Crown Shield
ne1 -- Preserved Head
ne2 -- Zombie Head
ne3 -- Unraveller Head
ne4 -- Gargoyle Head
ne5 -- Demon Head
ci0 -- Circlet
ci1 -- Coronet
ci2 -- Tiara
ci3 -- Diadem
uap -- Shako
ukp -- Hydraskull
ulm -- Armet
uhl -- Giant Conch
uhm -- Spired Helm
urn -- Corona
usk -- Demonhead
uui -- Dusk Shroud
uea -- Wyrmhide
ula -- Scarab Husk
utu -- Wire Fleece
ung -- Diamond Mail
ucl -- Loricated Mail
uhn -- Boneweave
urs -- Great Hauberk
upl -- Balrog Skin
ult -- Hellforge Plate
uld -- Kraken Shell
uth -- Lacquered Plate
uul -- Shadow Plate
uar -- Sacred Armor
utp -- Archon Plate
uuc -- Heater
uml -- Luna
urg -- Hyperion
uit -- Monarch
uow -- Aegis
uts -- Ward
ulg -- Bramble Mitts
uvg -- Vampirebone Gloves
umg -- Vambraces
utg -- Crusader Gauntlets
uhg -- Ogre Gauntlets
ulb -- Wyrmhide Boots
uvb -- Scarabshell Boots
umb -- Boneweave Boots
utb -- Mirrored Boots
uhb -- Myrmidon Greaves
ulc -- Spiderweb Sash
uvc -- Vampirefang Belt
umc -- Mithril Coil
utc -- Troll Belt
uhc -- Colossus Girdle
uh9 -- Bone Visage
ush -- Troll Nest
upk -- Blade Barrier
dr6 -- Alpha Helm
dr7 -- Griffon Headress
dr8 -- Hunter's Guise
dr9 -- Cavernous Covering
dra -- Totemic Mask
ba6 -- Jawbone Visor
ba7 -- Lion Helm
ba8 -- Rage Mask
ba9 -- Savage Helmet
baa -- Slayer Guard
pa6 -- Akaran Targe
pa7 -- Akaran Rondache
pa8 -- Protector Shield
pa9 -- Gilded Shield
paa -- Royal Shield
ne6 -- Mummified Trophy
ne7 -- Fetish Trophy
ne8 -- Sexton Trophy
ne9 -- Cantor Trophy
nea -- Heirophant Trophy
drb -- Blood Spirit
drc -- Sun Spirit
drd -- Earth Spirit
dre -- Grizzly Visor
drf -- Dream Spirit
bab -- Carnage Helm
bac -- Fury Visor
bad -- Destroyer Helm
bae -- Conqueror Crown
baf -- Guardian Crown
pab -- Sacred Targe
pac -- Sacred Rondache
pad -- Kurast Shield
pae -- Zakarum Shield
paf -- Vortex Shield
neb -- Minion Skull
neg -- Hellspawn Skull
ned -- Overseer Skull
nee -- Succubus Skull
nef -- Bloodlord Skull
Ca1 -- Cape
Ca2 -- Mantle
Ca3 -- Cloak
Ca4 -- Assassin Cloak 1A
Ca5 -- Assassin Cloak 1B
Ca6 -- Assassin Cloak 1C
Wp1 -- Wolf Cloth
Wp2 -- Dire Pelt
Wp3 -- Fenris Fur
Gg1 -- Bear Hide
Gg2 -- Sleuth Slough
Gg3 -- Grizzly Gear
Ab1 -- Silent Sneakers
Ab2 -- Combat Kicks
Ab3 -- Bladed Boots
Ab4 -- Assassin Boots 1A
Ab5 -- Assassin Boots 1B
Ab6 -- Assassin Boots 1C
Bp1 -- Blessed Plate
Bp2 -- Hallowed Armor
Bp3 -- Enlightened Plate
Bp4 -- Paladin Armor 1A
Bp5 -- Paladin Armor 1B
Bp6 -- Paladin Armor 1C
Oa1 -- Bark Armor
Oa2 -- Cedar Chest
Oa3 -- Oaken Armor
Vg1 -- Arcanic Touch
Vg2 -- Elemental Outreach
Vg3 -- Vizjerei Vestige
Vg4 -- Sorceress Gloves 1A
Vg5 -- Sorceress Gloves 1B
Vg6 -- Sorceress Gloves 1C
Bb1 -- Strong Belt
Bb2 -- Mighty Belt
Bb3 -- Arreat Belt
Bb4 -- Barbarian Belt 1A
Bb5 -- Barbarian Belt 1A
Bb6 -- Barbarian Belt 1A
Zc1 -- Skovos Circle
Zc2 -- Island Crown
Zc3 -- Sister's Stone
Zc4 -- Amazon Circlet 1A
Zc5 -- Amazon Circlet 1B
Zc6 -- Amazon Circlet 1C
St1 -- Soul Summon Torso 1
St2 -- Soul Summon Torso 2
Pc1 -- Palisade Helm
Pc2 -- Anointed Crown
Pc3 -- Treasured Headdress
Ag1 -- Amazon Gloves 1A
Ag2 -- Amazon Gloves 1B
Ag3 -- Amazon Gloves 1C
Ag4 -- Amazon Gloves 2A
Ag5 -- Amazon Gloves 2B
Ag6 -- Amazon Gloves 2C
Na1 -- Necromancer Armor 1A
Na2 -- Necromancer Armor 1B
Na3 -- Necromancer Armor 1C
Na4 -- Necromancer Armor 2A
Na5 -- Necromancer Armor 2B
Na6 -- Necromancer Armor 2C
Sa1 -- Sorceress Armor 1A
Sa2 -- Sorceress Armor 1B
Sa3 -- Sorceress Armor 1C
Sa4 -- Sorceress Armor 2A
Sa5 -- Sorceress Armor 2B
Sa6 -- Sorceress Armor 2C
St3 -- Soul Summon Torso 3
St4 -- Shadow Plate Ama
St5 -- Shadow Plate Sor
St6 -- Shadow Plate Nec
St7 -- Shadow Plate Pal
St8 -- Shadow Plate Bar
St9 -- Shadow Plate Dru
St0 -- Shadow Plate Ass
D01 -- Demon Armor
D03 -- Demon Cap
D04 -- Demon Monarch
D05 -- Demon Fleece
D08 -- Demon Diadem
D09 -- Demon Coif
D11 -- Demon Mask
D12 -- Demon Boots
D17 -- Demon Skin
D19 -- Demon Visage
D20 -- Demon Spired
D21 -- Demon Corona
D23 -- Demon Sash
D29 -- Demon Gauntlets
D35 -- Demon Boots
D36 -- Demon Belt
D37 -- Demon Luna
D38 -- Demon Aegis
D45 -- Demon Boots


--Weapons--
hax -- Hand Axe
axe -- Axe
2ax -- Double Axe
mpi -- Sickle
wax -- War Axe
lax -- Large Axe
bax -- Broad Axe
btx -- Battle Axe
gax -- Great Axe
gix -- Giant Axe
wnd -- Wand
ywn -- Yew Wand
bwn -- Bone Wand
gwn -- Grim Wand
clb -- Club
scp -- Scepter
gsc -- Grand Scepter
wsp -- War Scepter
spc -- Spiked Club
mac -- Mace
mst -- Morning Star
fla -- Flail
whm -- War Hammer
mau -- Maul
gma -- Great Maul
ssd -- Short Sword
scm -- Scimitar
sbr -- Saber
flc -- Falchion
crs -- Crystal Sword
bsd -- Broad Sword
lsd -- Long Sword
wsd -- War Sword
2hs -- Katana
clm -- Claymore
gis -- Giant Sword
bsw -- Bastard Sword
flb -- Flamberge
gsd -- Great Sword
dgr -- Dagger
dir -- Dirk
kri -- Kriss
bld -- Blade
tkf -- Throwing Knife
tax -- Throwing Axe
bkf -- Balanced Knife
bal -- Balanced Axe
jav -- Javelin
pil -- Pilum
ssp -- Short Spear
glv -- Glaive
tsp -- Throwing Spear
spr -- Spear
tri -- Trident
brn -- Brandistock
spt -- Spetum
pik -- Pike
bar -- Bardiche
vou -- Voulge
scy -- Scythe
pax -- Poleaxe
hal -- Halberd
wsc -- Thresher
sst -- Short Staff
lst -- Long Staff
cst -- Gnarled Staff
bst -- Battle Staff
wst -- War Staff
sbw -- Short Bow
hbw -- Hunter's Bow
lbw -- Long Bow
cbw -- Composite Bow
sbb -- Short Battle Bow
lbb -- Long Battle Bow
swb -- Short War Bow
lwb -- Long War Bow
lxb -- Light Crossbow
mxb -- Crossbow
hxb -- Heavy Crossbow
rxb -- Repeating Crossbow
gps -- Rancid Gas Potion
ops -- Oil Potion
gpm -- Choking Gas Potion
opm -- Exploding Potion
gpl -- Strangling Gas Potion
opl -- Fulminating Potion
d33 -- Decoy Gidbinn
g33 -- The Gidbinn
leg -- Wirt's Leg
hdm -- Horadric Malus
hfh -- Hellforge Hammer
hst -- Horadric Staff
msf -- Staff of Kings
9ha -- Hatchet
9ax -- Cleaver
92a -- Twin Axe
9mp -- Battle Sickle
9wa -- Naga
9la -- Military Axe
9ba -- Bearded Axe
9bt -- Tabar
9ga -- Gothic Axe
9gi -- Ancient Axe
9wn -- Burnt Wand
9yw -- Petrified Wand
9bw -- Tomb Wand
9gw -- Grave Wand
9cl -- Cudgel
9sc -- Rune Scepter
9qs -- Holy Water Sprinkler
9ws -- Divine Scepter
9sp -- Barbed Club
9ma -- Flanged Mace
9mt -- Jagged Star
9fl -- Knout
9wh -- Battle Hammer
9m9 -- War Club
9gm -- Martel de Fer
9ss -- Gladius
9sm -- Cutlass
9sb -- Shamshir
9fc -- Tulwar
9cr -- Dimensional Blade
9bs -- Battle Sword
9ls -- Rune Sword
9wd -- Ancient Sword
92h -- Nihonto
9cm -- Dacian Falx
9gs -- Tusk Sword
9b9 -- Gothic Sword
9fb -- Zweihander
9gd -- Executioner Sword
9dg -- Poignard
9di -- Rondel
9kr -- Cinquedeas
9bl -- Stilleto
9tk -- Battle Dart
9ta -- Francisca
9bk -- War Dart
9b8 -- Hurlbat
9ja -- War Javelin
9pi -- Great Pilum
9s9 -- Simbilan
9gl -- Spiculum
9ts -- Harpoon
9sr -- War Spear
9tr -- Fuscina
9br -- War Fork
9st -- Yari
9p9 -- Lance
9b7 -- Lochaber Axe
9vo -- Bill
9s8 -- Grim Scythe
9pa -- Partizan
9h9 -- Bec-de-Corbin
9wc -- Giant Thresher
8ss -- Jo Staff
8ls -- Quarterstaff
8cs -- Cedar Staff
8bs -- Gothic Staff
8ws -- Rune Staff
8sb -- Edge Bow
8hb -- Razor Bow
8lb -- Cedar Bow
8cb -- Double Bow
8s8 -- Short Siege Bow
8l8 -- Long Siege Bow
8sw -- Rune Bow
8lw -- Gothic Bow
8lx -- Arbalest
8mx -- Siege Crossbow
8hx -- Ballista
8rx -- Chu-Ko-Nu
qf1 -- Khalim's Flail
qf2 -- Khalim's Will
ktr -- Katar
wrb -- Wrist Blade
axf -- Hatchet Hands
ces -- Cestus
clw -- Claws
btl -- Blade Talons
skr -- Scissors Katar
9ar -- Quhab
9wb -- Wrist Spike
9xf -- Fascia
9cs -- Hand Scythe
9lw -- Greater Claws
9tw -- Greater Talons
9qr -- Scissors Quhab
7ar -- Suwayyah
7wb -- Wrist Sword
7xf -- War Fist
7cs -- Battle Cestus
7lw -- Feral Claws
7tw -- Runic Talons
7qr -- Scissors Suwayyah
7ha -- Tomahawk
7ax -- Small Crescent
72a -- Ettin Axe
7mp -- Reaper Sickle
7wa -- Berserker Axe
7la -- Feral Axe
7ba -- Silver-edged Axe
7bt -- Decapitator
7ga -- Champion Axe
7gi -- Glorious Axe
7wn -- Polished Wand
7yw -- Ghost Wand
7bw -- Lich Wand
7gw -- Unearthed Wand
7cl -- Truncheon
7sc -- Mighty Scepter
7qs -- Seraph Rod
7ws -- Caduceus
7sp -- Tyrant Club
7ma -- Reinforced Mace
7mt -- Devil Star
7fl -- Scourge
7wh -- Legendary Mallet
7m7 -- Ogre Maul
7gm -- Thunder Maul
7ss -- Falcata
7sm -- Ataghan
7sb -- Elegant Blade
7fc -- Hydra Edge
7cr -- Phase Blade
7bs -- Conquest Sword
7ls -- Cryptic Sword
7wd -- Mythical Sword
72h -- Shinogi
7cm -- Highland Blade
7gs -- Balrog Blade
7b7 -- Champion Sword
7fb -- Colossal Sword
7gd -- Colossus Blade
7dg -- Bone Knife
7di -- Mithral Point
7kr -- Fanged Knife
7bl -- Legend Spike
7tk -- Flying Knife
7ta -- Flying Axe
7bk -- Winged Knife
7b8 -- Winged Axe
7ja -- Hyperion Javelin
7pi -- Stygian Pilum
7s7 -- Balrog Spear
7gl -- Ghost Glaive
7ts -- Winged Harpoon
7sr -- Hyperion Spear
7tr -- Stygian Pike
7br -- Mancatcher
7st -- Ghost Spear
7p7 -- War Pike
7o7 -- Ogre Axe
7vo -- Colossus Voulge
7s8 -- Reaper Scythe
7pa -- Cryptic Axe
7h7 -- Great Poleaxe
7wc -- Reaper Thresher
6ss -- Walking Stick
6ls -- Stalagmite
6cs -- Elder Staff
6bs -- Shillelagh
6ws -- Archon Staff
6sb -- Spider Bow
6hb -- Blade Bow
6lb -- Shadow Bow
6cb -- Great Bow
6s7 -- Diamond Bow
6l7 -- Crusader Bow
6sw -- Ward Bow
6lw -- Hydra Bow
6lx -- Pellet Bow
6mx -- Gorgon Crossbow
6hx -- Colossus Crossbow
6rx -- Demon Crossbow
ob1 -- Eagle Orb
ob2 -- Sacred Globe
ob3 -- Smoked Sphere
ob4 -- Clasped Orb
ob5 -- Jared's Stone
am1 -- Stag Bow
am2 -- Reflex Bow
am3 -- Maiden Spear
am4 -- Maiden Pike
am5 -- Maiden Javelin
ob6 -- Glowing Orb
ob7 -- Crystalline Globe
ob8 -- Cloudy Sphere
ob9 -- Sparkling Ball
oba -- Swirling Crystal
am6 -- Ashwood Bow
am7 -- Ceremonial Bow
am8 -- Ceremonial Spear
am9 -- Ceremonial Pike
ama -- Ceremonial Javelin
obb -- Heavenly Stone
obc -- Eldritch Orb
obd -- Demon Heart
obe -- Vortex Orb
obf -- Dimensional Shard
amb -- Matriarchal Bow
amc -- Grand Matron Bow
amd -- Matriarchal Spear
ame -- Matriarchal Pike
amf -- Matriarchal Javelin
k01 -- Katana
k02 -- Katana
k03 -- Katana
Ds1 -- Druid Staff 1A
Ds2 -- Druid Staff 1B
Ds3 -- Druid Staff 1C
Ds4 -- Druid Staff 2A
Ds5 -- Druid Staff 2B
Ds6 -- Druid Staff 2C
Pm1 -- Paladin Mace 1A
Pm2 -- Paladin Mace 1B
Pm3 -- Paladin Mace 1C
Bm1 -- Barbarian M Axe 1A
Bm2 -- Barbarian M Axe 1B
Bm3 -- Barbarian M Axe 1C
Bm4 -- Barbarian M Sword 1A
Bm5 -- Barbarian M Sword 1B
Bm6 -- Barbarian M Sword 1C
Bm7 -- Barbarian M Hammer 1A
Bm8 -- Barbarian M Hammer 1B
Bm9 -- Barbarian M Hammer 1C
Bf1 -- Barbarian F Axe 1A
Bf2 -- Barbarian F Axe 1B
Bf3 -- Barbarian F Axe 1C
Bf4 -- Barbarian F Sword 1A
Bf5 -- Barbarian F Sword 1B
Bf6 -- Barbarian F Sword 1C
D00 -- Demon Sword
Ss1 -- Champion Axe SS
Ss2 -- Phase Blade SS
Ss3 -- Shinogi SS
Ss4 -- ShinogiB SS
D02 -- Demon Bow
D13 -- Demon Staff
D14 -- Demon Tomahawk
D15 -- Demon Knife
D16 -- Demon Knife
D24 -- Demon Ettin Axe
D25 -- Demon Cryptic Axe
D26 -- Demon Balrog Spear
D27 -- Demon Javelin
D28 -- Demon Javelin
D30 -- Demon Maul
D31 -- Demon Shard
D33 -- Demon Vorpal Axes
D34 -- Demon Shard
D39 -- Demon Ataghan
D40 -- Demon Sword
D41 -- Demon Thresher
D42 -- Demon Ogre Axe
D43 -- Demon Scythe
D44 -- Demon Staff
Ev9 -- Snowball


--Misc--
elx -- Elixir
hpo -- Healing Potionx
mpo -- Mana Potionx
hpf -- Full Healing Potion
mpf -- Full Mana Potion
vps -- Stamina Potion
yps -- Antidote Potion
rvs -- Rejuvenation Potion
rvl -- Full Rejuvenation Potion
wms -- Thawing Potion
tbk -- Tome of Town Portal
ibk -- Tome of Identify
amu -- Amulet
vip -- Amulet of the Viper
rin -- Ring
gld -- Gold
bks -- Scroll of Inifuss
bkd -- Key to the Cairn Stones
aqv -- Arrows
tch -- Torch
cqv -- Bolts
tsc -- Scroll of Town Portal
isc -- Scroll of Identify
hrt -- Heart
brz -- Brain
jaw -- Jawbone
eyz -- Eye
hrn -- Horn
tal -- Tail
flg -- Flag
fng -- Fang
qll -- Quill
sol -- Soul
scz -- Scalp
spe -- Spleen
key -- Key
luv -- The Black Tower Key
xyz -- Potion of Life
j34 -- A Jade Figurine
g34 -- The Golden Bird
bbb -- Lam Esen's Tome
box -- Horadric Cube
tr1 -- Horadric Scroll
mss -- Mephisto's Soulstone
ass -- Book of Skill
qey -- Khalim's Eye
qhr -- Khalim's Heart
qbr -- Khalim's Brain
ear -- Ear
gcv -- Chipped Amethyst
gfv -- Flawed Amethyst
gsv -- Amethyst
gzv -- Flawless Amethyst
gpv -- Perfect Amethyst
gcy -- Chipped Topaz
gfy -- Flawed Topaz
gsy -- Topaz
gly -- Flawless Topaz
gpy -- Perfect Topaz
gcb -- Chipped Sapphire
gfb -- Flawed Sapphire
gsb -- Sapphire
glb -- Flawless Sapphire
gpb -- Perfect Sapphire
gcg -- Chipped Emerald
gfg -- Flawed Emerald
gsg -- Emerald
glg -- Flawless Emerald
gpg -- Perfect Emerald
gcr -- Chipped Ruby
gfr -- Flawed Ruby
gsr -- Ruby
glr -- Flawless Ruby
gpr -- Perfect Ruby
gcw -- Chipped Diamond
gfw -- Flawed Diamond
gsw -- Diamond
glw -- Flawless Diamond
gpw -- Perfect Diamond
hp1 -- Minor Healing Potion
hp2 -- Light Healing Potion
hp3 -- Healing Potion
hp4 -- Greater Healing Potion
hp5 -- Super Healing Potion
mp1 -- Minor Mana Potion
mp2 -- Light Mana Potion
mp3 -- Mana Potion
mp4 -- Greater Mana Potion
mp5 -- Super Mana Potion
skc -- Chipped Skull
skf -- Flawed Skull
sku -- Skull
skl -- Flawless Skull
skz -- Perfect Skull
 -- Expansion
hrb -- Herb
cm1 -- Small Charm
cm2 -- Large Charm
cm3 -- Grand Charm
rps -- Small Red Potion
rpl -- Large Red Potion
bps -- Small Blue Potion
bpl -- Large Blue Potion
r01 -- El Rune
r02 -- Eld Rune
r03 -- Tir Rune
r04 -- Nef Rune
r05 -- Eth Rune
r06 -- Ith Rune
r07 -- Tal Rune
r08 -- Ral Rune
r09 -- Ort Rune
r10 -- Thul Rune
r11 -- Amn Rune
r12 -- Sol Rune
r13 -- Shael Rune
r14 -- Dol Rune
r15 -- Hel Rune
r16 -- Io Rune
r17 -- Lum Rune
r18 -- Ko Rune
r19 -- Fal Rune
r20 -- Lem Rune
r21 -- Pul Rune
r22 -- Um Rune
r23 -- Mal Rune
r24 -- Ist Rune
r25 -- Gul Rune
r26 -- Vex Rune
r27 -- Ohm Rune
r28 -- Lo Rune
r29 -- Sur Rune
r30 -- Ber Rune
r31 -- Jah Rune
r32 -- Cham Rune
r33 -- Zod Rune
jew -- Jewel
ice -- Malah's Potion
0sc -- Scroll of Knowledge
tr2 -- Scroll of Resistance
pk1 -- Key of Terror
pk2 -- Key of Hate
pk3 -- Key of Destruction
dhn -- Diablo's Horn
bey -- Baal's Eye
mbr -- Mephisto's Brain
toa -- Token of Absolution
tes -- Twisted Essence of Suffering
ceh -- Charged Essense of Hatred
bet -- Burning Essence of Terror
fed -- Festering Essence of Destruction
std -- Standard of Heroes
S01 -- Soul Fragment
Gu1 -- GoldUp
Gu2 -- GoldUp
Gu3 -- GoldUp
Gu4 -- GoldUp
Gu5 -- GoldUpBar
Rgx -- Ramaladni's Gift
Cr1 -- Sparking Crystal
Cr2 -- Burning Crystal
Cr3 -- Frigid Crystal
Cr4 -- Toxic Crystal
Cr5 -- Hardened Crystal
Cr6 -- Shining Crystal
UCR -- Unique Core
Bbp -- Basic Blueprint
Xbp -- Exceptional Blueprint
Ebp -- Elite Blueprint
y08 -- Mythos Log
BoH -- Beacon
y09 -- TreasureChestArmo4
y10 -- TreasureChestArmo3
y11 -- TreasureChestArmo2
y12 -- TreasureChestArmo1
y13 -- TreasureChestWeap4
y14 -- TreasureChestWeap3
y15 -- TreasureChestWeap2
y16 -- TreasureChestWeap1
y17 -- TreasureChestRing4
y18 -- TreasureChestRing3
y19 -- TreasureChestRing2
y20 -- TreasureChestRing1
y21 -- TreasureChestAmul4
y22 -- TreasureChestAmul3
y23 -- TreasureChestAmul2
y24 -- TreasureChestAmul1
y25 -- TreasureChestBowq4
y26 -- TreasureChestBowq3
y27 -- TreasureChestBowq2
y28 -- TreasureChestBowq1
y29 -- TreasureChestRune4
y30 -- TreasureChestRune3
y31 -- TreasureChestRune2
y32 -- TreasureChestRune1
Y20 -- ShopVoucher
EcW -- Enchanted Wood
IN1 -- Ashy Bone
IN2 -- Broken Bone
IN3 -- Soulless Skull
IN4 -- Frail Skull
IN5 -- Nevermelt Ice
IN6 -- Charge Vein
IN7 -- Life Spark
TK0 -- Global Token
TK1 -- Amazon Token
TK2 -- Sorceress Token
TK3 -- Necromancer Token
TK4 -- Paladin Token
TK5 -- Barbarian Token
TK6 -- Druid Token
TK7 -- Assassin Token
Z01 -- Storage Bag
Z02 -- Gem Remover
Z03 -- Gem Remover
Z04 -- Gem Remover
Z05 -- Gem Remover
Z06 -- Gem Remover
Z07 -- Gem Remover
Z08 -- Gem Remover
Z09 -- Rune Remover
Z10 -- Rune Remover
Z11 -- Rune Remover
Z12 -- Rune Remover
Z13 -- Rune Remover
Z14 -- Rune Remover
Z15 -- Rune Remover
Z16 -- Rune Remover
Z17 -- Rune Remover
Z18 -- Rune Remover
Z19 -- Rune Remover
Z20 -- Rune Remover
Z21 -- Rune Remover
Z22 -- Rune Remover
Z23 -- Rune Remover
Z24 -- Rune Remover
Z25 -- Rune Remover
Z26 -- Rune Remover
Z27 -- Rune Remover
Z28 -- Rune Remover
Z29 -- Rune Remover
Z30 -- Rune Remover
Z31 -- Rune Remover
Z32 -- Rune Remover
Z33 -- Rune Remover
Z34 -- Rune Remover
Z35 -- Rune Remover
Z36 -- Rune Remover
Z37 -- Rune Remover
Z38 -- Rune Remover
Z39 -- Rune Remover
Z40 -- Rune Remover
Z41 -- Rune Remover
Z42 -- Key Remover
Z43 -- Key Remover
Z44 -- Key Remover
Z45 -- Organ Remover
Z46 -- Organ Remover
Z47 -- Organ Remover
Z48 -- Rune Converter
Z49 -- Rune Converter
Z50 -- Rune Converter
Z51 -- Rune Converter
GBd -- Gold Bar Downgrader
TK8 -- Soul Forger
Z52 -- Empty Bottle
Z53 -- White Bottle
Z54 -- Black Bottle
Z55 -- Blue Bottle
Z56 -- Red Bottle
Z57 -- Green Bottle
Z58 -- Yellow Bottle
Z59 -- Purple Bottle
Z60 -- Enhance Crystal
Z61 -- Enhance Crystal
Z62 -- Enhance Crystal
Z63 -- Enhance Crystal
Z64 -- Enhance Crystal
Z65 -- Enhance Crystal
Z66 -- Enhance Crystal
Z67 -- Enhance Crystal
Z68 -- Enhance Crystal
Z69 -- Enhance Crystal
Z70 -- Enhance Crystal
Z71 -- Enhance Crystal
Z72 -- Enhance Crystal
Z73 -- Enhance Crystal
Z74 -- Enhance Crystal
Z75 -- Enhance Crystal
Z76 -- Enhance Crystal
Z77 -- Enhance Crystal
Z78 -- Enhance Crystal
Z79 -- Enhance Crystal
Z80 -- Enhance Crystal
Z81 -- Enhance Crystal
Z82 -- Enhance Crystal
Z83 -- Enhance Crystal
Z84 -- Enhance Crystal
Z85 -- Enhance Crystal
Z86 -- Enhance Crystal
Z87 -- Enhance Crystal
Z88 -- Enhance Crystal
Z89 -- Enhance Crystal
Z90 -- Enhance Crystal
Z91 -- Enhance Crystal
Z92 -- Enhance Crystal
Z93 -- Enhance Crystal
Z94 -- Enhance Crystal
Z95 -- Enhance Crystal
Z96 -- Enhance Crystal
Z97 -- Enhance Crystal
Z98 -- Enhance Crystal
Z99 -- Enhance Crystal
z00 -- Enhance Crystal
z01 -- Enhance Crystal
z02 -- Enhance Crystal
z03 -- Enhance Crystal
z04 -- Enhance Crystal
z05 -- Enhance Crystal
z06 -- Enhance Crystal
z07 -- Enhance Crystal
z08 -- Enhance Crystal
z09 -- Enhance Crystal
z10 -- Enhance Crystal
z11 -- Enhance Crystal
z12 -- Enhance Crystal
z13 -- Enhance Crystal
z14 -- Enhance Crystal
z15 -- Enhance Crystal
z16 -- Enhance Crystal
z17 -- Enhance Crystal
z18 -- Enhance Crystal
z19 -- Enhance Crystal Remover
z20 -- Enhance Crystal Remover
z21 -- Enhance Crystal Remover
z22 -- Enhance Crystal Remover
z23 -- Enhance Crystal Remover
z24 -- Enhance Crystal Remover
z25 -- Enhance Crystal Remover
z26 -- Enhance Crystal Remover
z27 -- Enhance Crystal Remover
z28 -- Enhance Crystal Remover
z29 -- Enhance Crystal Remover
z30 -- Enhance Crystal Remover
z31 -- Enhance Crystal Remover
z32 -- Enhance Crystal Remover
z33 -- Enhance Crystal Remover
z34 -- Enhance Crystal Remover
z35 -- Enhance Crystal Remover
z36 -- Enhance Crystal Remover
z37 -- Enhance Crystal Remover
z38 -- Enhance Crystal Remover
z39 -- Enhance Crystal Remover
z40 -- Enhance Crystal Remover
z41 -- Enhance Crystal Remover
z42 -- Enhance Crystal Remover
z43 -- Enhance Crystal Remover
z44 -- Enhance Crystal Remover
z45 -- Enhance Crystal Remover
z46 -- Enhance Crystal Remover
z47 -- Enhance Crystal Remover
z48 -- Enhance Crystal Remover
z49 -- Enhance Crystal Remover
z50 -- Enhance Crystal Remover
z51 -- Enhance Crystal Remover
z52 -- Enhance Crystal Remover
z53 -- Enhance Crystal Remover
z54 -- Enhance Crystal Remover
z55 -- Enhance Crystal Remover
z56 -- Enhance Crystal Remover
z57 -- Enhance Crystal Remover
z58 -- Enhance Crystal Remover
z59 -- Enhance Crystal Remover
z60 -- Enhance Crystal Remover
z61 -- Enhance Crystal Remover
z62 -- Enhance Crystal Remover
z63 -- Enhance Crystal Remover
z64 -- Enhance Crystal Remover
z65 -- Enhance Crystal Remover
z66 -- Enhance Crystal Remover
z67 -- Enhance Crystal Remover
z68 -- Enhance Crystal Remover
z69 -- Enhance Crystal Remover
z70 -- Enhance Crystal Remover
z71 -- Enhance Crystal Remover
z72 -- Enhance Crystal Remover
z73 -- Enhance Crystal Remover
z74 -- Enhance Crystal Remover
z75 -- Enhance Crystal Remover
z76 -- Enhance Crystal Remover
z77 -- Enhance Crystal Remover
y66 -- Starter Package Set
y67 -- Belial's Scroll
a00 -- Blood Contract
a01 -- Blood Contract
a02 -- Blood Contract
a03 -- Blood Contract
a04 -- Blood Contract
a05 -- Blood Contract
a06 -- Scroll of Triumph
a07 -- Blood Contract
a08 -- Blood Contract
a09 -- Blood Contract
a10 -- Trial Charm 1
a11 -- Trial Charm 2
a12 -- Trial Charm 3
a13 -- Trial Charm 4
a14 -- Trial Charm 5
a15 -- Trial Charm 6
a16 -- Trial Charm 7
a17 -- Trial Charm 8
a18 -- Trial Charm 9
a19 -- Trial Charm 10
a20 -- Trial Charm 11
a21 -- Trial Charm 12
a22 -- Trial Charm 13
a23 -- Trial Charm 14
a24 -- Trial Charm 15
a25 -- Trial Charm 16
a26 -- Trial Charm 17
a27 -- Trial Charm 18
a28 -- Trial Charm 19
a29 -- Trial Charm 20
a30 -- Trial Charm 21
a31 -- Trial Charm 22
a32 -- Trial Charm 23
a33 -- Trial Charm 24
a34 -- Trial Charm 25
a35 -- Trial Charm 26
a36 -- Trial Charm 27
a37 -- Trial Charm 28
a38 -- Trial Charm 29
a39 -- Trial Charm 30
a40 -- Trial Charm 31
a41 -- Trial Charm 32
a42 -- Trial Charm 33
a43 -- Trial Charm 34
a44 -- Trial Charm 35
a45 -- Trial Charm 36
a46 -- Trial Charm 37
a47 -- Trial Charm 38
a48 -- Trial Charm 39
a49 -- Trial Charm 40
a50 -- Trial Charm 41
a51 -- Trial Charm 42
a52 -- Trial Charm 43
a53 -- Trial Charm 44
a54 -- Trial Charm 45
a55 -- Trial Charm 46
a56 -- Trial Charm 47
a57 -- Trial Charm 48
a58 -- Trial Charm 49
a59 -- Trial Charm C1
a60 -- Trial Charm C2
a61 -- Trial Charm C3
a62 -- Trial Charm C4
a63 -- Trial Charm C5
a64 -- Trial Charm C6
a65 -- Trial Charm C7
a66 -- Trial Charm Mega
a67 -- Blood Contract
a68 -- Blood Contract
a69 -- Blood Contract
a70 -- Blood Contract
a71 -- Blood Contract
a72 -- Blood Contract
a73 -- Blood Contract
a74 -- Blood Contract
a75 -- Blood Contract
a76 -- Blood Contract
a77 -- Blood Contract
a78 -- Blood Contract
a79 -- Blood Contract
a80 -- Blood Contract
a81 -- Blood Contract
a82 -- Blood Contract
a83 -- Blood Contract
a84 -- Blood Contract
a85 -- Blood Contract
a86 -- Blood Contract
a87 -- Blood Contract
a88 -- Blood Contract
a89 -- Blood Contract
a90 -- Blood Contract
a91 -- Blood Contract
a92 -- Blood Contract
a93 -- Blood Contract
a94 -- Blood Contract
a95 -- Blood Contract
a96 -- Blood Contract
a97 -- Blood Contract
a98 -- Blood Contract
a99 -- Blood Contract
A00 -- Blood Contract
A01 -- Blood Contract
A02 -- Blood Contract
A03 -- Blood Contract
A04 -- Blood Contract
A05 -- Blood Contract
A06 -- Blood Contract
A07 -- Blood Contract
A08 -- Blood Contract
A09 -- Blood Contract
A10 -- Blood Contract
A11 -- Blood Contract
A12 -- Blood Contract
A13 -- Blood Contract
A14 -- Blood Contract
A15 -- Blood Contract
A16 -- Blood Contract
A17 -- Blood Contract
A18 -- Blood Contract
A19 -- Blood Contract
A20 -- Blood Contract
A21 -- Blood Contract
A22 -- Blood Contract
A23 -- Blood Contract
A24 -- Blood Contract
A25 -- Blood Contract
A26 -- Blood Contract
A27 -- Blood Contract
A28 -- Blood Contract
A29 -- Blood Contract
A30 -- Blood Contract
A31 -- Blood Contract
A32 -- Blood Contract
A33 -- Blood Contract
A34 -- Blood Contract
A35 -- Blood Contract
A36 -- Blood Contract
A37 -- Blood Contract
A38 -- Blood Contract
A39 -- Blood Contract
A40 -- Blood Contract
A41 -- Blood Contract
A42 -- Blood Contract
A43 -- Blood Contract
A44 -- Blood Contract
A45 -- Blood Contract
A46 -- Blood Contract
A47 -- Blood Contract
A48 -- Blood Contract
A49 -- Blood Contract
A50 -- Blood Contract
A51 -- Blood Contract
A52 -- Blood Contract
A53 -- Blood Contract
A54 -- Blood Contract
A55 -- Blood Contract
A56 -- Blood Contract
A57 -- Blood Contract
A58 -- Blood Contract
A59 -- Blood Contract
A60 -- Blood Contract
A61 -- Blood Contract
A62 -- Blood Contract
A63 -- Blood Contract
A64 -- Blood Contract
A65 -- Blood Contract
A66 -- Blood Contract
A67 -- Blood Contract
A68 -- Blood Contract
A69 -- Blood Contract
A70 -- Blood Contract
A71 -- Blood Contract
A72 -- Blood Contract
A73 -- Blood Contract
A74 -- Blood Contract
A75 -- Blood Contract
A76 -- Blood Contract
A77 -- Blood Contract
A78 -- Blood Contract
A79 -- Blood Contract
A80 -- Blood Contract
A81 -- Blood Contract
A82 -- Blood Contract
A83 -- Blood Contract
A84 -- Blood Contract
A85 -- Blood Contract
A86 -- Blood Contract
A87 -- Blood Contract
A88 -- Blood Contract
A89 -- Blood Contract
A90 -- Blood Contract
A91 -- Blood Contract
A92 -- Blood Contract
A93 -- Blood Contract
A94 -- Blood Contract
A95 -- Blood Contract
A96 -- Blood Contract
A97 -- Blood Contract
A98 -- Blood Contract
A99 -- Blood Contract
b00 -- Blood Contract
b01 -- Blood Contract
b02 -- Blood Contract
b03 -- Blood Contract
b04 -- Blood Contract
b05 -- Blood Contract
b06 -- Blood Contract
b07 -- Blood Contract
b08 -- Blood Contract
b09 -- Blood Contract
b10 -- Blood Contract
b11 -- Blood Contract
b12 -- Blood Contract
b13 -- Blood Contract
b14 -- Blood Contract
b15 -- Blood Contract
b16 -- Blood Contract
b17 -- Blood Contract
b18 -- Blood Contract
b19 -- Blood Contract
b20 -- Blood Contract
b21 -- Blood Contract
b22 -- Blood Contract
b23 -- Blood Contract
b24 -- Blood Contract
b25 -- Blood Contract
b26 -- Blood Contract
b27 -- Blood Contract
b28 -- Blood Contract
b29 -- Blood Contract
b30 -- Blood Contract
b31 -- Blood Contract
b32 -- Blood Contract
b33 -- Blood Contract
b34 -- Blood Contract
b35 -- Blood Contract
b36 -- Blood Contract
b37 -- Blood Contract
b38 -- Blood Contract
b39 -- Blood Contract
b40 -- Blood Contract
b41 -- Blood Contract
b42 -- Blood Contract
b43 -- Blood Contract
b44 -- Blood Contract
b45 -- Blood Contract
b46 -- Blood Contract
b47 -- Blood Contract
b48 -- Blood Contract
b49 -- Blood Contract
b50 -- Blood Contract
b51 -- Blood Contract
b52 -- Blood Contract
b53 -- Blood Contract
b54 -- Blood Contract
b55 -- Blood Contract
b56 -- Blood Contract
b57 -- Blood Contract
b58 -- Blood Contract
b59 -- Blood Contract
b60 -- Blood Contract
b61 -- Blood Contract
b62 -- Blood Contract
b63 -- Blood Contract
y33 -- GemVein
b64 -- Socket Remover
b65 -- Super Socket Remover
K01 -- TT Ticket
K02 -- TT Ticket
K03 -- TT Ticket
K04 -- TT Ticket
K05 -- TT Ticket
K06 -- TT Ticket
K07 -- TT Ticket
K08 -- TT Ticket
K09 -- TT Ticket
K10 -- TT Ticket
K11 -- TT Ticket
K12 -- TT Ticket
K13 -- TT Ticket
K14 -- TT Ticket
K15 -- TT Ticket
K16 -- TT Ticket
K17 -- TT Ticket
K18 -- TT Ticket
K19 -- TT Ticket
K20 -- TT Ticket
K21 -- TT Ticket
K22 -- TT Ticket
K23 -- TT Ticket
K24 -- TT Ticket
K25 -- TT Ticket
K26 -- TT Ticket
K27 -- TT Ticket
K28 -- TT Ticket
K29 -- TT Ticket
K30 -- TT Ticket
K31 -- TT Ticket
K32 -- TT Ticket
K33 -- TT Ticket
K34 -- TT Ticket
K35 -- TT Ticket
K36 -- TT Ticket
K37 -- TT Ticket
K38 -- TT Ticket
K39 -- TT Ticket
K40 -- TT Ticket
K41 -- TT Ticket
K42 -- TT Ticket
K43 -- TT Ticket
K44 -- TT Ticket
K45 -- TT Ticket
K46 -- TT Ticket
K47 -- TT Ticket
K48 -- TT Ticket
K49 -- TT Ticket
K50 -- TT Ticket
K51 -- TT Ticket
K52 -- TT Ticket
K53 -- TT Ticket
K54 -- TT Ticket
K55 -- TT Ticket
K56 -- TT Ticket
K57 -- TT Ticket
K58 -- TT Ticket
K59 -- TT Ticket
K60 -- TT Ticket
K61 -- TT Ticket
K62 -- TT Ticket
K63 -- TT Ticket
K64 -- TT Ticket
K65 -- TT Ticket
K66 -- TT Ticket
K67 -- TT Ticket
K68 -- TT Ticket
K69 -- TT Ticket
K70 -- TT Ticket
K71 -- TT Ticket
K72 -- TT Ticket
K73 -- TT Ticket
K74 -- TT Ticket
K75 -- TT Ticket
K76 -- TT Ticket
K77 -- TT Ticket
K78 -- TT Ticket
K79 -- TT Ticket
K80 -- TT Ticket
r34 -- Di Rune
r35 -- Ab Rune
L00 -- Set Voucher
L01 -- Set Voucher
L02 -- Set Voucher
L03 -- Set Voucher
L04 -- Set Voucher
L05 -- Set Voucher
L06 -- Set Voucher
L07 -- Set Voucher
L08 -- Set Voucher
L09 -- Set Voucher
L10 -- Set Voucher
L11 -- Set Voucher
L12 -- Set Voucher
L13 -- Set Voucher
L14 -- Set Voucher
L15 -- Set Voucher
L16 -- Set Voucher
L17 -- Set Voucher
L18 -- Set Voucher
L19 -- Set Voucher
L20 -- Set Voucher
L21 -- Set Voucher
L22 -- Set Voucher
L23 -- Set Voucher
L24 -- Set Voucher
L25 -- Set Voucher
L26 -- Set Voucher
L27 -- Set Voucher
L28 -- Set Voucher
L29 -- Set Voucher
L30 -- Set Voucher
L31 -- Set Voucher
L32 -- Set Voucher
L33 -- Set Voucher
L34 -- Set Voucher
L35 -- Set Voucher
L36 -- Set Voucher
L37 -- Set Voucher
L38 -- Set Voucher
L39 -- Set Voucher
L40 -- Set Voucher
L41 -- Set Voucher
L42 -- Set Voucher
L43 -- Set Voucher
L44 -- Set Voucher
L45 -- Set Voucher
L46 -- Set Voucher
L47 -- Set Voucher
L48 -- Set Voucher
L49 -- Set Voucher
L50 -- Set Voucher
L51 -- Set Voucher
L52 -- Set Voucher
L53 -- Set Voucher
L54 -- Set Voucher
L55 -- Set Voucher
L56 -- Set Voucher
L57 -- Set Voucher
L58 -- Set Voucher
L59 -- Set Voucher
L60 -- Set Voucher
L61 -- Set Voucher
L62 -- Set Voucher
L63 -- Set Voucher
L64 -- Set Voucher
L65 -- Set Voucher
L66 -- Set Voucher
L67 -- Set Voucher
L68 -- Set Voucher
L69 -- Set Voucher
L70 -- Set Voucher
L71 -- Set Voucher
L72 -- Set Voucher
L73 -- Set Voucher
L74 -- Set Voucher
L75 -- Set Voucher
L76 -- Set Voucher
L77 -- Set Voucher
L78 -- Set Voucher
L79 -- Set Voucher
L80 -- Set Voucher
L81 -- Set Voucher
L82 -- Set Voucher
L83 -- Set Voucher
L84 -- Set Voucher
L85 -- Set Voucher
L86 -- Set Voucher
L87 -- Set Voucher
L88 -- Set Voucher
L89 -- Set Voucher
L90 -- Set Voucher
L91 -- Set Voucher
L92 -- Set Voucher
L93 -- Set Voucher
L94 -- Set Voucher
L95 -- Set Voucher
L96 -- Set Voucher
L97 -- Set Voucher
L98 -- Set Voucher
L99 -- Set Voucher
C00 -- Flag1
C01 -- Flag2
C02 -- Flag3
C03 -- Flag4
C04 -- Flag5
C05 -- Flag6
C06 -- Flag7
C07 -- Flag8
C08 -- Flag9
C09 -- Flag10
C10 -- Soul1
C11 -- Soul2
C12 -- Soul3
C13 -- Soul4
C14 -- Soul5
C15 -- Soul6
C16 -- Soul7
C17 -- Soul8
C18 -- Soul9
C19 -- Jawbone1
C20 -- Jawbone2
C21 -- Jawbone3
C22 -- Jawbone4
C23 -- Jawbone5
C24 -- Jawbone6
C25 -- Horn1
C26 -- Horn2
C27 -- Horn3
C28 -- Horn4
C29 -- Horn5
C30 -- Tail1
C31 -- Tail2
C32 -- Tail3
C33 -- Tail4
C34 -- Tail5
C35 -- Fang1
C36 -- Fang2
C37 -- Fang3
y01 -- Mythos Log1
y02 -- Mythos Log2
y03 -- Mythos Log3
y04 -- Mythos Log4
y05 -- Mythos Log5
y06 -- Mythos Log6
y07 -- Mythos Log7
Ev1 -- Easter Egg
Ev2 -- Easter Egg
Ev3 -- Easter Egg
Ev4 -- Easter Egg
Ev5 -- Easter Egg
Ev6 -- Easter Egg
Ev7 -- Easter Egg
Ev8 -- Easter Egg
m00 -- Map - Basic
m01 -- Map - Average
m02 -- Map - Superior
m03 -- Map - Basic
m04 -- Map - Average
m05 -- Map - Superior
m06 -- Map - Basic
m07 -- Map - Average
m08 -- Map - Superior
m09 -- Map - Basic
m10 -- Map - Average
m11 -- Map - Superior
m12 -- Map - Basic
m13 -- Map - Average
m14 -- Map - Superior
m15 -- Map - Basic
m16 -- Map - Average
m17 -- Map - Superior
m18 -- Map - Basic
m19 -- Map - Average
m20 -- Map - Superior
m21 -- Map - Basic
m22 -- Map - Average
m23 -- Map - Superior
m24 -- Map - Basic
m25 -- Map - Average
m26 -- Map - Superior
m27 -- Map - Master
m28 -- Surveyor's Scribbles
m29 -- Parchment of Potency
m30 -- Quill of Quality
m31 -- Ink of Insanity
m32 -- Small Charm Clone
m33 -- Large Charm Clone
m34 -- Grand Charm Clone
m35 -- Grand Charm Clone
j00 -- Sacred Jewel
r36 -- Er Rune
z80 -- Rune Converter
z81 -- Rune Converter
z82 -- Rune Remover
z83 -- Rune Remover
z84 -- Rune Remover
D06 -- Demon Ring
D07 -- Demon Ring
D10 -- Demon Large Charm
D18 -- Demon Amulet
D22 -- Demon Amulet
D32 -- Demon Small Charm
m36 -- Small Charm Low
Ev0 -- Broken Gift
m37 -- LB Respec Fixer
y34 -- Mythos LogA1
y35 -- Mythos LogA2
y36 -- Mythos LogA3
y37 -- Mythos LogA4
y38 -- Mythos LogA5
y39 -- Mythos LogA6
y40 -- Mythos LogA7


------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------


Available Stat ID's:

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
15 -- goldbank
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