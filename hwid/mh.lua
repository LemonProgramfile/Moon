local HWIDTable = loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzKrasty/Moon/main/hwid/mhlist.lua"))()
local Players = game:GetService("Players")
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()

local plr = game.Players.LocalPlayer

for i,v in pairs(HWIDTable) do
    if v == HWID then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzKrasty/Moon/main/hwid/mhm.lua"))()
    else
        print("Buy script here: discord.gg/kjksMtAuTD")
    end
end
