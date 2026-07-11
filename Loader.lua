repeat  task.wait() until game:IsLoaded()
-- If you want to auto exec it just put ts file in auto exec folder
if _G.Executed then 
  return true 
end 
_G.Executed = true
local PlaceId,GameId = game.PlaceId,game.GameId
local GameList = {
  [10267363348] = "Drain the Lake",
}

if not GameList[GameId] then warn("Ts game doesn't exist") return false end

local var,err = pcall(function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LovelyCat/Scripted/refs/heads/main/" .. GameList[GameId] .. ".lua"))()
end)

if var == false  then
    print("Error : " .. err)
end
