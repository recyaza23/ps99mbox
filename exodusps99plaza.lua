script_key = "taqBOUrOHpHmEIvWfzyLNZFJCooAYQDl"
getgenv().Settings = {
    Sniper = {
        Active = false,
        StopParams = {
            ["Limits Reached"] = false,
            ["Diamonds Hit: 250k"] = true,
            ["60 Minutes"] = false,
            ["Switch To Selling"] = true,
        },
    },

    Seller = {
        Active = true,
        Items = {     
            ["All Huges"] = {Class = "Pet", Price = "-2%", AllTypes = true},
            ["Golden Huge Player Fox"] = {Class = "Pet", Price = "-5%"},
            ["Rainbow Huge Player Fox"] = {Class = "Pet", Price = "-6%"},
            ["Shiny Huge Player Fox"] = {Class = "Pet", Price = "200m"},
            -- ["Millionaire Bucks"] = {Class = "Misc", Price = "-8%"},
        },
        Serverhop = {
            ["Switch Servers"] = true,
            ["Teleport Delay (m)"] = 35,
            ["Add Pro Plaza Lobbies"] = false,
        },
        Webhook = {
            ["URL"] = "https://discord.com/api/webhooks/1249534633331261540/I9Fr_1feUgpp7GuAqhdh90Dypaezdu-NYa1emcPc0wFqH3uadwQcxnhNlCF0_Z0TJ0kM",
            ["Send Embeds"] = true,
            ["Remove Username"] = false,
        },
        StopParams = {
            ["Item Runout"] = false,
            ["Diamonds Hit: 20b"] = false,
            ["60 Minutes"] = false,
            ["Switch To Sniping"] = false,
        },
        Other = {
            ["Auto Accept Mail"] = true,
            ["Always Try Adding Listings"] = true,
            ["Never Join Friendslist"] = false,
        },
    },
    
    [[ Thank you for using System Exodus <3! ]]
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Mailbox: Claim All"):InvokeServer()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/60a293774110e918789cddc0e20be048.lua"))()
