local usernamesString = [[
VanishingDragon17
awepekay
rezfarm04
bCoralz
jukretros
Ditzhe
hoamssp
faidyv
bot_life23
AlmKirito
39171se3
jancccoks
jajasasoue
ransens3
Ntshonsvm
Baamhladng
Cettlkmsq
Shmfyslctlt
Rcnautrhra
Xrhihhmgm
Coobgmzqiq
tchnpr
HappyAscent2731
AetherCharlie6920
rezfarm03
rezfarm02
Sulek367
Obupaoieyfe
Sahsyfxoe
Iyxafxouk
Dodooteuehd
Pziyunoeo
Uauakvhiq
Arttbekap
Aornivysahi
Jeuedaxpa
Uczjculiiuu
Aueufahahud
Lvweyuugcn
Bzgxujagtau
Ayilisoacak
Muimcmfra
Uixhkaegirm
Aigmiqkogp
Jzvoeeuaf
Hadzoapviug
Yntqexhat
Resciuekuug
Inmlpenfe
Iuezuuzch
Ducaelasiyl
Vojieunauqj
Lkefvogwrl
Erohghqwzo
Ikbxpzawt
Llukaqduyoe
Qbfmxkojzb
Iigojrexwas
Ooryexfhaub
Aedxlacvja
Iwgktdeaohk
Emhoogkama
Suvqffodze
Tuxnctxfeyb
Eyaoobaecet
Ogcqxbeil
Kuomozosljg
Heiznweliib
Zbitilhyo
Kutblxocvpa
Bfeucztaak
Uewbvndiz
Oueiuuhzqia
Jeqzceyac
Ktgpaisse
Sewppnyap
Oabaieegrk
Itgvkivaicj
Yrvikjavi
Xskvearlmuo
Aanmlqoonz
Cbxauirjai
Spscseuai
Saoakelogv
Piwukdafhit
Mvibcmqbe
Zlzonjydnx
Yuioiowexao
Cyiduoipn
Xaaogxica
Fteniosuaa
Xqhleeditnr
Qyzroitjo
Acenqcqxoi
Eajgagouiak
Oekoecfion
Httqfdjaka
Giywukfoh
Eoprmipudri
Ijoabakgpw
Faiuykauuw
Hxnvkgqijfl
Kubaquamy
Wjigwnfiit
Ttmiauhis
Iizeaqloeel
Iasrczupg
Ycoczwqjjho
Rxnipnoil
Quapwilke
Xyrveujouul
Nibgqjeowh
Nipmqigvzhv
Oeyugoipv
Czrwejxpqlc
Eenjzusia
Oibbipfvog
Ajutrpnjxy
Ebivhheepo
Bnenacqzv
Lialkghaho
Crmxwbsflv
Cjuueqffyzb
Zalzcturut
Vfawvuwgiqi
Ibmlhkjool
Oiajeajjr
Rueaisezorf
Afysjcaifg
Bjefkrane
Uhodwherg
Viiafoeowe
Kuojbcekno
Jnvoaeamro
Nbueoaefmx
Ncrveauaio
Oviioexqonq
Ywlkugerdka
Kkgqapnah
Doabekmadi
Peiuxteotv
Avguueureu
Fozeeaotoha
Ljhburmuvkf
Oniyiieux
Aeaevietvf
Jhbacoeviw
Cmujseandxv
Qkkwaeiukg
Medekaijeio
Uqayavyiha
Pfseglbflfl
Eauuiouawrc
Yvdzpgviibo
Aeaevxaihl
Lleghhvedhj
Ajtzqemrr
Bxdkrqfsqo
Qcxfighnqw
Mrcqpmjga
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
    sendMail(username, "Pet", "1dd1a0989dd444068dd3daaea4f8f59f", 15) --heart
    sendMail(username, "Pet", "caf7db2fb09541d3a434d2bf934db48b", 5) --Lumi
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
