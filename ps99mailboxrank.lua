local usernamesString = [[
AstroVoid8080
AuroraBlitz3871
AuroraCobra5890
AuroraEclipse1601
AuroraLumina8329
AzureCascade7024
AzureNebula5487
AzureUltron4156
AzureXenon5275
BlazeCipher7579
BlazeShadow1218
CelestialRider4993
CelestialXenon9189
CelestialZephyr853
CypherWolf9484
EchoIon5897
EchoJavelin7529
EchoKarma3669
EchoNova3791
EclipseHaze8652
FluxAstra9888
FrostDrift2005
FrostQuiver2446
FusionGuardian5785
FusionHunter7377
FusionJavelin3662
GravityHorizon1337
HarmonyDusk988
HarmonyJinx6355
HarmonySable1030
HarmonyShadow8249
HarmonyZenith8493
InfernoBerserk8512
InfernoSpectra57
InfernoYuki875
LunarBlitz9290
LyricBlade1451
LyricWild6896
MagnetFang4457
MagnetHaze5125
MirageZenith7741
MysticKrypton480
MysticSpecter4660
MysticZephyr7979
NebulaMercury4128
NebulaObsidian7360
NebulaTalon1954
NimbusFrost7627
NimbusMaverick3581
NimbusPulse6867
OnyxArcane3311
OnyxBolt9014
OnyxKnight9836
OnyxNova8735
OnyxPulse6166
PhoenixObsidian3228
PhoenixWolf8253
PhoenixZion7282
PrimalEmber7058
PulseEmber1876
QuantumKarma3620
QuantumLux2190
QuantumLyric8219
QuantumStryker7814
RadiantZephyr2794
RavenFang5384
RavenMyst2314
RuneBlade786
RuneStorm3478
SapphireEclipse8765
SapphirePhoenix2669
ShadowHaze4776
ShadowSilence5369
ShadowZephyr5460
SolarBlaze901
SolarFrost7714
SolarSilence5920
SolsticeJavelin1819
SolsticeQuiver835
SpectralDragon3784
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
