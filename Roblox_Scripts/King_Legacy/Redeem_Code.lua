local StarHubX_Codes = loadstring(game:HttpGet("https://raw.githubusercontent.com/KenzCoder47/Main/script/Roblox_Scripts/King_Legacy/Code.lua"))()

for _, Code in ipairs(StarHubX_Codes) do
    local Split_Data = Code:match("%] (.+)")
    print(Split_Data) -- Change print to fireserver
    task.wait(0.325)
end
