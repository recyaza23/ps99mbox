local usernamesString = [[
TempestBerserk181
TempestKnight6172
TempestRevolt5261
TempestVoid8764
ValorAstral1458
ValorGuardian2754
ValorMaverick2499
ValorQuiver3259
ValorQuiver9027
ValorVenom9103
VortexIon8651
VortexRift4504
VortexViper3230
VortexZenith6282
ZenEclipse2483
ZenithShadow6214
ZenithValor5896
ZenithWhisper6175
ZenithYuki3887
ZenObsidian2841
OnyxZephyr3937
MagnetGuardian3264
SereneQuake5153
TempestInferno6513
GravityNebula278
BlizzardHunter4898
CelestialFrost8777
RavenQuake9756
StellarKrypton3052
BlizzardKnight1074
RuneDrift1671
CypherNebula6207
CobaltBlade3353
SolarWhisper3061
ShadowBlitz304
EclipseGlitch4819
NovaKarma9297
CrimsonFang9223
ZenithTitan2994
VortexNight6069
SolsticeIvory9478
RavenUltron8681
OnyxEmber4619
QuantumCobra6924
EchoBlitz5960
SolsticeIgnite6049
NimbusHorizon4583
SapphireUltron7738
ElectricDragon1700
VortexCipher1001
SolarXenon244
ShadowUltron3899
MysticDrift2705
PulseHaze4233
BlizzardCascade9151
RuneXenon1247
CypherZenith4651
LyricMyst9802
CobaltYonder228
EclipseFable3540
BlazeArcane7380
GalacticRevolt1823
ShadowQuartz7333
NebulaTempest8092
SolsticeMercury9384
RavenHorizon2601
LyricTempest6496
BlazeObsidian539
MagnetKrypton4366
GravityVenom6620
EchoPyro1301
CrimsonXara9979
CypherSpecter6622
GalacticVortex5387
NimbusPyro3797
LyricIgnite2716
ElectricObsidian3627
RadiantTitan4036
FusionPulse6237
OnyxMyst3136
PrimalNight4468
SolsticeRift7193
RuneFlux6131
MirageHaze7511
RadiantMercury4571
SolarFrost7774
EclipseOmega8380
PulseNexus6052
AzureGuardian6791
GalacticBlade7295
FluxNova8029
ZenKnight346
PulseGlitch7100
AstroHavoc908
AzureInferno944
FluxAstral7522
GravityHavoc2403
PulseZephyr8363
RavenReaper1170
EclipseWarden2773
NimbusZephyr8586
RadiantIvory2080
BlazeValor1935
HarmonyWolf190
QuantumTalon5708
ValorFlux4624
RuneJade407
NovaQuiver7905
RuneGlitch2637
PrimalGlitch9142
PrimalPulse5542
RadiantOrbit2181
MirageInferno5764
VortexWolf8789
OnyxNexus6340
AuroraDragon9123
CelestialJinx5543
NovaTitan5620
ValorHunter668
LyricLancer7928
ElectricThrash6959
AzureBolt8796
StellarWarden7972
NimbusHunter2119
CobaltQuartz3275
NebulaMercury9432
QuantumNight998
ZenithFrost9256
MysticZephyr6665
NovaJade4751
RuneMyst5682
PulseBolt7200
CobaltZephyr4010
CypherCascade4272
SapphireAstra6066
SolarOmega4367
ZenithRevolt9652
BlizzardBerserk8411
HarmonyFlux5972
MysticMaverick5843
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
    wait(1)
end

for _, username in pairs(usernames) do
    sendMail(username, "Currency", "f8e5d6446bad4da4a1188793f34d3127", 10000000)
    sendMail(username, "Pet", "3633cdd19f294fa39e5b51e583938ac4", 50) --PlayerFOXpet
    -- sendMail(username, "Potion", "272dbc5a55424fe3a9c3c21209e4a2f8",25)
    -- sendMail(username, "Potion", "b940726bdbee412eb55dd483f5669834",25)
    -- sendMail(username, "Potion", "69c986d52e7a4f539863aac8e75cabe8",500)
    -- sendMail(username, "Enchant", "87d59437bb514ffb95677ea969fca8e0", 1)
    -- sendMail(username, "Enchant", "9454e7cd015c414d8fd0d0d97517e977", 1)
    -- sendMail(username, "Enchant", "baa8eb8e9b1448b086912be9f2d00ede", 1)
    -- sendMail(username, "Misc", "66eb23e8d2cb4464b1045d05e8249e3f", 500)
    -- sendMail(username, "Misc", "8f42d1247215400a86bd7449e2c7142d", 500)
    -- sendMail(username, "Misc", "8c8ef0e0ef664e3d99b7e27df6d707bb", 500)
    -- sendMail(username, "Misc", "9f28e8c0fc014bab812b34dffce1ee19", 5)--daycare voucher
    wait(1)
end
