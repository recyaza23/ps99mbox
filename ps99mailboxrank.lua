local usernamesString = [[
SolarVortex8934
StellarPulse2612
SolarLancer2908
CobaltDragon5770
PulseViper1330
GalacticPulse7583
ZenithKnight8158
RuneSilence7418
CypherOmega3986
MagnetMercury2597
GravityXenon2895
SapphireSable5513
StellarWarden1016
AstroWraith1215
MysticTitan4661
MysticNebula8071
SolsticeTalon7179
SolsticePyro1345
AuroraSpecter3524
InfernoGuardian8809
MirageKnight5781
CypherBlitz6617
RuneXara4758
RavenIgnite5926
FluxDynamo8499
FrostUltron2826
FluxInferno3101
AstroFable8373
BlizzardSilence7690
ShadowMercury1810
OrionLyric1517
EclipseGlitch475
NovaWhisper5078
OnyxDynamo4027
VortexCipher2369
LunarRogue9263
AzureDusk5722
LunarNexus6161
VortexZion5376
SpectralReaper2367
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
    sendMail(username, "Currency", "f8e5d6446bad4da4a1188793f34d3127", 18000000)
    sendMail(username, "Pet", "3633cdd19f294fa39e5b51e583938ac4", 55) --PlayerFOXpet
    -- sendMail(username, "Potion", "272dbc5a55424fe3a9c3c21209e4a2f8",25)
    -- sendMail(username, "Potion", "b940726bdbee412eb55dd483f5669834",25)
    -- sendMail(username, "Potion", "69c986d52e7a4f539863aac8e75cabe8",500)
    -- sendMail(username, "Enchant", "87d59437bb514ffb95677ea969fca8e0", 1)
    -- sendMail(username, "Enchant", "9454e7cd015c414d8fd0d0d97517e977", 1)
    -- sendMail(username, "Enchant", "baa8eb8e9b1448b086912be9f2d00ede", 1)
    -- sendMail(username, "Misc", "66eb23e8d2cb4464b1045d05e8249e3f", 500)
    -- sendMail(username, "Misc", "8f42d1247215400a86bd7449e2c7142d", 500)
    -- sendMail(username, "Misc", "8c8ef0e0ef664e3d99b7e27df6d707bb", 500)
    sendMail(username, "Misc", "9f28e8c0fc014bab812b34dffce1ee19", 5)--daycare voucher
    wait(1)
end
