-- --60m Gems,75 pet,20 pot coin,20 pot damage,20 pot treasure,400 pot coin4,speedpot
-- --1 super lightning,1 coin,1critical,1strong,500 comet,500 coin jar,500 rainbow fruit,400 ball,1000 diamond flag
-- gems= "ac2c62f023e6494ea8a6624c49a2bdb0",Currency
-- coin7pot="272dbc5a55424fe3a9c3c21209e4a2f8",Potion
-- damage7pot="b940726bdbee412eb55dd483f5669834",Potion
-- treasure7pot="22ca52843a0a413899a9036fe31885fb",Potion
-- coin4pot="69c986d52e7a4f539863aac8e75cabe8",Potion
-- speed3pot="629eed11b22c4db69b2c183bde4097c8",Potion
-- superlightning="2efa3f8f01eb4ad3800acb48ce42272a",Enchant
-- coin7enc="87d59437bb514ffb95677ea969fca8e0",Enchant
-- crit7enc="9454e7cd015c414d8fd0d0d97517e977",Enchant
-- strong7enc="baa8eb8e9b1448b086912be9f2d00ede",Enchant
-- comet="66eb23e8d2cb4464b1045d05e8249e3f",Misc
-- coinjar="8f42d1247215400a86bd7449e2c7142d",Misc
-- toyball="1e9c953e07724043865b462f9ff92e22",Misc
-- diamondflag="8c8ef0e0ef664e3d99b7e27df6d707bb",Misc
-- rainbowfruit="90cf2192290046c8a0ae1031814ff671",Fruit

-- Pinata= "3003b07bc6e14149a44e2240e27000ff",Misc
-- Luckyblock="a859ae3844a74c6291efaf0bf3fc71a8",Misc
-- Luckyenc="50ef07cdaf98421981b09f9b6ecc94b9",Enchant
-- SuperiorChest="92b1f16f144e47339b05fc04010d32ca",Enchant
-- Chestspell="5b79942ee7a2446eb64aaeae09905054",Ultimate
-- kawaiipet= "2ac619ec5d454ac4b27fc384dce5a1f3",Pet
-- ChefMonkey= "8981e67c27dc41e581fcfd809f19db80",Pet
-- abstract agony="abb683ea91c142a08ee9747e23d8952f",Pet
--gorgonpet ="b34eae172b2b4a0fa25c55060e577668",Pet

local usernamesString = [[
bansos001
bansos0012
Erp817Gritz618
Sulek367
Ferer619
DraconicThornheart16
DawnshardFrost4397
HorizonMistwhisper30
ThornwoodDragon3634
CalmStormlord6806
RavenpeakShifter4179
OrionFrenzy819
StormcloudAstra2682
ThunderlandMidnight2
AurorafoxLumina9488
DeltanRevolt6049
HollowindIroncrest16
CosmicZephyr878
GalecrestSpectra9763
MoonveilOmega829
ShadowcastShifter884
ThunderlandLink406
HarmonyDuskprince890
NovaFlow4679
GraphiteFinale9634
GoliathSilver4769
ZenithalSphere8141
CeruleanStorm5539
AurorafoxPortal3929
AstraluxOmega4407
TemporaSilvermane798
FusionWarbler4621
AuroraShade9256
SolstriderReactor847
GlacialDragon5341
StellarEbony3577
ShadowZenithspike322
ShadeRiddle715
DawnflareKindle6397
IllusionLink6615
HollowindSpectra1408
MirageSentinel5965
ZenithGalaxy4341
MagnetThornclaw1730
SapphireOutlier7798
StellarXara8167
QuantaMist2058
TempestSurge2785
AuroraFrost7946
AuroraeAshwing8524
CryptixKrypton555
ArdentGreybloom4916
EquinoxBramble1740
PolarisPlasma8218
GlacialCrash6564
PulseAshdrake3556
TurbulenceRadiance98
VibranceAstralwolf32
WildfireChill3610
PolarisAshwing8258
CelestialJolt4116
RadiantXiri428
StellarisEmberclaw99
SapphireSummit7559
MagnesisFang165
AmethystNightgaze151
AvenpeakRunesteel291
AviorThornclaw3112
SteelblueSilence3570
GravitasFrontier8258
PsycheEmberbloom7105
AzureRift9766
SnowstormNightbloom2
PolarisShifter7017
GoliathPhoenix8488
SpellboundEclipse543
GravitasKindle7848
CosmonShadow3374
CrystalGladeshadow17
ExosphereNeon7473
AmethystGriffinwing7
IcicleEmberdrift464
NebulonNightgaze3925
ThornstrikeVortex977
PsycheUltron9838
StellarisGreybloom66
MirageShadow7573
GalacticIronroot1396
GalacticSable4396
StormspireStormfang7
MythspireKrypton3643
VortexFrontier1891
PulseGust6599
CypherIroncrest6665
TempestEclipse5679
GlacialCloudbreaker9
AuroraRenegade9754
MoonsightLunarfall33
SolarLancer8896
StarweaverOrbit1160
EnigmaIon2589
PolarisStrider4548
IonstormTremor8649
CrimsonflareGalaxy10
CelestialTopaz5613
Yluauekou
Wrmscuoqic
Iuowmuykdve
Wbelitmulx
Gclufatefu
Kuqiavorw
Oeoyezqzy
Iplufjrekg
Qxoqfatnkr
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
    -- sendMail(username, "Currency", "f8e5d6446bad4da4a1188793f34d3127", 28000000)
    sendMail(username, "Pet", "1dd1a0989dd444068dd3daaea4f8f59f", 15) --heart
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
