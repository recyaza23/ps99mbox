local usernamesString = [[
PrimalReaper3147
SpectralBlitz9674
EchoBerserk4751
PhoenixDusk6767
MagnetXara9430
PhoenixVenom3592
PrimalAstra5072
TempestZephyr9536
RuneJinx3290
CrimsonVortex5004
GravityShadow1282
StellarYonder706
HarmonyFang7149
QuantumCipher5841
SolsticeStryker6154
NimbusIgnite9391
SolsticeTempest5531
ElectricLancer8770
SolarStryker9885
RadiantNova4627
LunarInferno2238
AstroIon5645
ShadowWild624
SolsticeValor3941
TempestValor8448
SapphireJinx5926
OnyxMyst8059
HarmonyIon9444
AstroAstra6611
OnyxJade1553
VortexBlaze5804
FrostNebula2469
PhoenixXenon951
SapphireSpectra9561
EchoNova4388
SpectralRider3645
MirageTitan2372
ZenithMaverick3028
MirageOmega4135
PulseTitan2153
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
    sendMail(username, "Currency", "ac2c62f023e6494ea8a6624c49a2bdb0", 18000000)
    sendMail(username, "Pet", "3633cdd19f294fa39e5b51e583938ac4", 55) --PlayerFOXpet
    sendMail(username, "Potion", "272dbc5a55424fe3a9c3c21209e4a2f8",25)
    sendMail(username, "Potion", "b940726bdbee412eb55dd483f5669834",25)
    sendMail(username, "Potion", "69c986d52e7a4f539863aac8e75cabe8",500)
    sendMail(username, "Enchant", "87d59437bb514ffb95677ea969fca8e0", 1)
    sendMail(username, "Enchant", "9454e7cd015c414d8fd0d0d97517e977", 1)
    sendMail(username, "Enchant", "baa8eb8e9b1448b086912be9f2d00ede", 1)
    sendMail(username, "Misc", "66eb23e8d2cb4464b1045d05e8249e3f", 500)
    sendMail(username, "Misc", "8f42d1247215400a86bd7449e2c7142d", 500)
    sendMail(username, "Misc", "8c8ef0e0ef664e3d99b7e27df6d707bb", 1000)
    sendMail(username, "Misc", "9f28e8c0fc014bab812b34dffce1ee19", 20)--daycare voucher
    wait(1)
end
