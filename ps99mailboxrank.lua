local usernamesString = [[
ValorYonder7813
SereneObsidian3429
ShadowVortex6323
PrimalDrift3798
FrostFable6246
MirageSilence6857
EchoHavoc8499
MirageBlitz7348
TempestQuiver8343
NebulaBolt7241
NimbusCobra7934
RavenBerserk6244
ElectricRogue2439
SapphireOmega3836
SolsticeOrbit6804
NovaQuartz3891
NovaBlade1368
BlizzardJinx800
AuroraAstra121
SereneSable4079
NebulaWild1564
EclipseObsidian7601
InfernoGuardian4649
CypherAstral2140
RuneQuiver6048
PhoenixEcho7670
RavenObsidian9814
AzureOrbit2536
EchoHaze6201
ShadowQuartz5157
CelestialObsidian732
FusionStorm9578
SereneGlitch8744
GalacticPyro9184
OnyxTempest4073
StellarBlaze3162
AstroAstral3963
AzureNebula1903
MirageBlaze9566
BlizzardWraith9302
SapphireGriffin4592
NebulaTalon887
NovaHunter1744
ZenIgnite9755
SpectralWolf1050
AstroBlaze9814
PhoenixHavoc6618
SolarTempest2229
RavenEcho2062
EclipseRift24
OrionRift3910
NovaKrypton1919
ValorHaze6290
RavenCascade2379
ShadowRift4329
CrimsonNova577
CypherIvory9942
MirageDynamo5868
FluxKarma4146
SolsticeTempest7994
AstroInferno7562
BlizzardIgnite4834
GravityZion6309
FrostShadow4764
StellarFlux1656
ZenithWarden6375
FluxKarma9714
AuroraZenith2481
SapphireStorm4363
PulseDrift4417
TempestGuardian4900
MysticLyric4336
QuantumPyro8488
SpectralGriffin6074
PrimalEcho2777
PrimalVortex4831
TempestValor4008
RavenXara2776
InfernoValor829
OnyxFable6076
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
