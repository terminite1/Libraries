local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer

local rem = game:GetService("ReplicatedStorage").RemoteEvents.Equip

local function destroyMelon(character)
    rem:FireServer("Watermelon")
    if character:WaitForChild("Watermelon") then
        character.Watermelon.Handle:Destroy()
    end
end

if plr.Character then
    destroyMelon(plr.Character)
end

plr.CharacterAdded:Connect(function()
    destroyMelon(plr.Character)
end)