-- join ring 1

local function notify(t,d)
	game:GetService("StarterGui"):SetCore("SendNotification",{Title="JToH XMas";Text=t;Duration=d or 3})
end
repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent
task.wait(2)
notify("Starting soon")
syn.queue_on_teleport("print('gwehglnkwhj')"..game:HttpGet("https://raw.githubusercontent.com/terminite1/Libraries/main/jtohxmas.txt"))

local function collectPresents()
    for i,v in pairs(workspace.PresentLocations:GetChildren()) do
        if v:IsA("UnionOperation") then
            firetouchinterest(game.Players.LocalPlayer.Character.Torso,v,0)
        end
    end
    notify("Done collecting R1, teleporting to Z1 in a bit")
end

local function teleport(id)
	game:GetService("TeleportService"):Teleport(id,game.Players.LocalPlayer)
end

if game.PlaceId == 9070657865 then
    collectPresents()
    task.wait(8)
    notify("Teleporting",8)
    teleport(9071001075)
end
