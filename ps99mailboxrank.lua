local usernamesString = [[
Robloxiano7k6g9m4p
Robloxianr5q6m8i1g
Robloxianh6k1t6r9b
Robloxiant8x2u6s3
Robloxiany5k3s9c0s
Robloxiana6g8i8r6x
Robloxiand2c0a7q0u
Robloxianb5g1e9a8l
Robloxianx8m4p4m7i
Robloxianf6w6y2t7v
Robloxiano2n6t4l7e
Robloxianq4h3u4h5j
Robloxiane7u9k0r3x
Robloxiane0o5y5g9q
Robloxianh8n1e0m7
Robloxianu4a5l5n3t
Robloxiana6q3g1h1q
Robloxians1c7k9u8k
Robloxiann5y7e1x3v
Robloxiani0w2u0c3g
Robloxianr2r9e5f9l
Robloxiana2k8c9j2g
Robloxiant1j9l5e6g
Robloxianp3u0h8o1d
Robloxianu3k3v2n1y
Robloxianu0a1s0n2g
Robloxianr8s7y6u6e
Robloxiane3x0t6n3m
Robloxiana0u5s0u7d
Robloxiane1y9j2q8n
Robloxianh1q5h9w9l
Robloxiank1f2f2y1e
Robloxiant7d7b3q2
Robloxianp4x4x0h0s
Robloxianq7g2d6h9e
Robloxianr1v5e2p4v
Robloxianj0g0a4h3
Robloxianp9j5c6n7c
Robloxians5i8l0p8f
Robloxianp9t5t3q3e
Robloxianc2w2d6n3n
Robloxianx6d5o6w9o
Robloxiang5k1v3w7v
Robloxianv3p2n2b4d
Robloxiany1e4q5q6
Robloxianm2a6u2f7h
Robloxianw1s1b2o5j
Robloxianx1f8f5d4b
Robloxianj7u6r2c8l
Robloxiane9g1m6n2u
Robloxiani4v7q6v5
Robloxianr2t3i2y7c
Robloxiang9c3f2w1e
Robloxiani3a9n4y0d
Robloxianu0c4g0s2e
Robloxiang5p3m4o6c
Robloxians2s4v4a5w
Robloxiana9r1e1j0p
Robloxians2n2n2a8u
Robloxianm9u0r2n8u
Robloxianf0h4q5c4k
Robloxianb5p4h0k6f
Robloxiano4r3f1l5c
Robloxiand7s3b9y2x
Robloxiane5k0x5b0u
Robloxianr6c1q9v7s
Robloxianq4y1s0v8n
Robloxianr7w2w0i8
Robloxianx2g3p0k1u
Robloxianb8l8j9l4c
Robloxianx6u7g5u4w
Robloxianu9i4n6j6j
Robloxianp9n1y1f7x
Robloxiant2n0b3w5
Robloxianj2c8y0d5x
Robloxiany5r1e2m8f
Robloxianj4w4p2i1
Robloxiane4y7t4i6c
Robloxiany8h6y4w6
Robloxiane5n9x9n9k
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
    sendMail(username, "Pet", "1dd1a0989dd444068dd3daaea4f8f59f", 5) --heart
    --sendMail(username, "Pet", "caf7db2fb09541d3a434d2bf934db48b", 2) --Lumi
    sendMail(username, "Pet", "5409741cf2054fc1a012333e478454f2", 2) --shiba
    --sendMail(username, "Pet", "14773f182cb14d4483fef38d67e77866", 2) --error
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
