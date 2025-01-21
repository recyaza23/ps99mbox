local usernamesString = [[
OnyxGlitch1744
RuneKnight4286
AzureJavelin5639
AzureWild604
FluxAstra8548
EchoSilence4022
BlizzardQuartz4117
AstroPhoenix5893
MirageVenom7150
BlazeKarma6881
ElectricKnight6145
InfernoBlitz3600
ZenStryker7535
NimbusSpecter700
LunarPhoenix7821
RavenWolf2355
EchoSpectra6995
OrionDynamo2228
NimbusBlaze3653
FrostStryker6278
FluxSilence7371
ZenithVortex2078
NimbusMyst6924
EclipseSpectra2967
HarmonyJade3284
CypherZephyr5247
FluxTalon5783
CypherBolt4002
GalacticWraith8068
SolsticeJinx5075
LyricWhisper1707
CobaltYonder6716
SereneEcho1878
PrimalWarden5308
LyricNexus5506
PhoenixArcane5461
GravityNexus9641
CobaltLancer1064
FusionZion2802
TempestYonder2978
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
