local FileTarget = "https://raw.githubusercontent.com/Pandalium1/GHUB/refs/heads/main/Files/"
local Files = {
    {PlaceId = 142823291, File = "MM2.lua"}
}

local function loadFile(placeId)
    for _, file in ipairs(Files) do
        if file.PlaceId == placeId then
            local url = FileTarget .. file.File
            local success, result = pcall(function()
                return game:HttpGet(url)
            end)
            
            if success then
                local func, loadError = loadstring(result)
                if func then
                    pcall(func)
                end
            end
            return
        end
    end
end

loadFile(game.PlaceId)
