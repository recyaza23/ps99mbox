script_key = "taqBOUrOHpHmEIvWfzyLNZFJCooAYQDl";
getgenv().Settings = {
    Sniper = {
        Active = false,
        ["Items"] = {
            SearchTerminal = {
                [[ Search Items via Trading Terminal, Custom Keywords NOT supported here. ]],
                ["Nice Egg"] = {Price = "5%", InventoryLimit = 355},
                ["Huge Night Terror Cat"] = {Price = "50%", UseCosmicValues = true},
            },
            ["All Class: Misc"] = {Price = 5},
            ["All Rarity: Celestial"] = {Price = "50%"},
            ["Shiny Rainbow Broomstick Cat"] = {Price = "+2%"},
            ["All Huges"] = {Price = "15m", DetectManipulation = true, AllTypes = true},
        },
        ["Switch Servers"] = {Active = true, SecondDelay = 7, OnlyPRO = false},
        ["Webhook"] = {Active = true, URL = "https://discord.com/api/webhooks/1249534633331261540/I9Fr_1feUgpp7GuAqhdh90Dypaezdu-NYa1emcPc0wFqH3uadwQcxnhNlCF0_Z0TJ0kM"},
        ["Kill Switch"] = {
            ["Limits Reached"] = false,
            ["Diamonds Hit: 25m"] = false,
            ["60 Minutes Timer"] = false,
            ["^^^ Switch To Selling"] = true,
        },
    },

    Seller = {
        Active = true,
        ["Items"] = {
            ["All Huges"] = {Price = "-4%", AllTypes = true},
            ["Shiny Huge Player Fox"] = {Price = "200m"},
            --["Shiny Golden Huge Player Fox"] = {Price = "500m",Priority = true},
            --["Golden Huge Player Fox"] = {Price = "-2%",Priority = true},
            --["Rainbow Huge Player Fox"] = {Price = "-5m",Priority = true},
            -- ["Coins Potion 5"] = {Price = 5, Priority = true},
        },
        ["Switch Servers"] = {Active = true, MinuteDelay = 20, OnlyPRO = false},
        ["Webhook"] = {Active = true, URL = "https://discord.com/api/webhooks/1249534633331261540/I9Fr_1feUgpp7GuAqhdh90Dypaezdu-NYa1emcPc0wFqH3uadwQcxnhNlCF0_Z0TJ0kM"},
        ["Kill Switch"] = {
            ["Booth Runout"] = false,
            ["Diamonds Hit: 1b"] = false,
            ["60 Minutes Timer"] = false,
            ["^^^ Switch To Sniping"] = false,
        },
        ["Diamonds Sendout"] = {Active = true, Username = "recyaza", Amount = "250m"},
    },
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b58d9c50c5ea74f255af40a8f735773.lua"))()
