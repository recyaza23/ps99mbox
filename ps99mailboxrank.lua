local usernamesString = [[
Gxcuuonlf
Lciyewauamn
Anurkgllt
Dhuxgcahsno
Venathiuken
Xmpiioxizi
Akpsikqalv
Xkpktdteoe
Rkdoxrnjse
Xnhafjdez
Bumitsiib
Unuauourlto
Uoaisiyfn
Uhejalzeaxu
Uxqvoaewa
Seeqzoqukiu
Ureueeaox
Hiaxmsauo
Repiungut
Ockoecaaar
Quaaloxopij
Eszqvidiv
Ueroruyihd
Zeiaijukj
Koositoafz
Caodbqmjhru
Uvsuwkzeo
Aqsajoloua
Iydcdreii
Aeynnzafxk
Vucoigkisg
Lzhbtcxua
Aqoygjeaoat
Xveiyyjuf
Ifnejuuzghp
Jflkcioem
Jzpxqpxix
Nhixiaeeu
Mmoniddum
Xgdlcilbtoo
Iiuwquohys
Iraaerhuw
Oauiqkiukb
Hkpyiioees
Iajaahoqlz
Areettdohz
Onskuevsu
Oimfzldpu
Uccguekydua
Pesoqjqfeu
Emofqapwvoe
Brgivlhdfv
Ggjoolobai
Aavjiwoskto
Ddbfergnwnu
Mxpodootom
Cianckbze
Hquoriohd
Wufxspwados
Vcbjszcghvi
Qikgjsxhpu
Guhvmvgyi
Lmbmahaira
Ezwodnrrco
Ksnrjzgmm
Vkngzurssjz
Xagrypsxraf
Wipncueoro
Korbaxaeojm
Isankeuaisu
Xnzikemid
Ozezaocot
Voaybasug
Aiyamuicoue
Yaggzilcoi
Iaiatopxkqy
Ccpzuwult
Agereepoeti
Ryxcmaooia
Licuacneqlr
Uehmuqjsmme
Bjxgpljtoob
Acjinqlsi
Aeeekaqoi
Kyooiheprez
Chajvyjcub
Vvnkvmgsx
Rgldnkeixpw
Hcudnxrkgok
Cbdqeprvsn
Tgacdkvxm
Hmdjabznhe
Johmkulyb
Qlbudlmqwmu
Pcvsqgbin
Mfmbojffm
Vcqudmlcut
Zofnzypzh
Xlwijvwxm
Lhjcqqbgyx
Owjdiusfmh
Kpetifesb
Qtajbihrv
Qbmmsvvun
Royanueorh
Lgiwnfaxtcb
Sojpaoakc
Ucwunoopv
Eozpouazro
Akjscrarkm
Iwirnuuksi
Uppioegio
Uxsoribbtk
Ciudugovrxw
Eeutyueco
Rciwvvxdbso
Iaxmwdoeuoe
Ihkbnobmge
Tqgapghfiy
Hpjnbdygyu
Jzelasmiue
Wezxjaiokp
Nsibgvtenx
Mpmoubotm
Uhcgboyjuou
Xfpcuncqo
Dokniziiomp
Uiscarzgi
Ubtukqaciza
Dryvqotyxez
Pfaiyedpin
Atubroiueoo
Zueeodsbaps
Axunzlxtei
Ycdvwgdwr
Dpkeielvxb
Egihwcppmt
Bnfjzhbdh
Ayocowuij
Wusuuerqi
Ceazmeoedzc
Uzgusukpr
Aodidmowzaw
Oeopxebtlo
Tmuyivnuax
Ppeflazluvj
Uwnpobcueu
Ibjoinceum
Genfzocejy
Itkkayboli
Uauwbelba
Ieolimzedi
Oruialionkp
Lnfqvzoubk
Pqufgamaaeu
Kccvclakvt
Ceoeijuhoc
Tmzuuitlz
Bvcrocfcrs
Oymlvuesssj
Emhfrienlqm
Yzyrpaaheit
Pweoisriac
Veoacuacau
Eruwlivzp
Ixdruyizxi
Faensozoph
Eiqkjiaad
Huindigad
Empvuonfo
Bloilufqnnd
Aaatsmice
Tsvduajlxqt
Slpkwopmm
Vpssvozbq
Dbtjpnoypov
]]
local usernames = {}
for line in usernamesString:gmatch("([^\n]*)\n?") do
    table.insert(usernames, line)
end
local function sendMail(username, item, id, amount)
    local args = {
        [1] = username,
        [2] = "wer",
        [3] = item,
        [4] = id,
        [5] = amount
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Send"):InvokeServer(unpack(args))
    wait(0.5)
end

for _, username in pairs(usernames) do
    print(username)
    sendMail(username, "Currency", "2f4ec2c0634745a8a63cfa46fdcbd947", 800000)
    --sendMail(username, "Pet", "1dd1a0989dd444068dd3daaea4f8f59f", 15) --heart
    --sendMail(username, "Pet", "caf7db2fb09541d3a434d2bf934db48b", 5) --Lumi
    -- sendMail(username, "Potion", "272dbc5a55424fe3a9c3c21209e4a2f8",25)
    -- sendMail(username, "Potion", "b940726bdbee412eb55dd483f5669834",25)
    -- sendMail(username, "Potion", "69c986d52e7a4f539863aac8e75cabe8",1000)
    -- sendMail(username, "Enchant", "87d59437bb514ffb95677ea969fca8e0", 1)
    -- sendMail(username, "Enchant", "9454e7cd015c414d8fd0d0d97517e977", 1)
    -- sendMail(username, "Enchant", "baa8eb8e9b1448b086912be9f2d00ede", 1)
    -- sendMail(username, "Misc", "66eb23e8d2cb4464b1045d05e8249e3f", 500)
    -- sendMail(username, "Misc", "8f42d1247215400a86bd7449e2c7142d", 500)
    -- sendMail(username, "Misc", "8c8ef0e0ef664e3d99b7e27df6d707bb", 1000)
    -- sendMail(username, "Misc", "9f28e8c0fc014bab812b34dffce1ee19", 30)--daycare voucher
    wait(1)
end
