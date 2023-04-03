--Only HandSome Can Use
--Made by Me (Nhozvo)
--Version: 2.5 (Only I Choose Will Use)

local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local window = kavoUi.CreateLib("BlackTree","DarkTheme")

---Tabs

local Tab1 = window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")
local Tab2 = window:NewTab("Support")
local Tab2Section = Tab2:NewSection("This will help u")
local Tab3 = window:NewTab("Credits")
local Tab3Section = Tab3:NewSection("Made By Nhozvo")
local Tab3Section = Tab3:NewSection("Thx To Haidang made this ui")

---Buttons

Tab1Section:NewSlider("Walkspeed", "Changes how fast you walk.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

Tab1Section:NewSlider("JumpPower", "Changes how fast you jump.", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

Tab1Section:NewButton("Hitbox","Increase Range",function()
_G.HeadSize = 25
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

Tab1Section:NewButton("Invisible","Makes You Invisible",function()
-- FE Invisible

Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))
end)

Tab1Section:NewButton("Remove Fog","No more fog" ,function()
game.Lighting.Fog:Destroy()
end)

Tab2Section:NewButton("Keyboard","Pc Like Keyboard",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

Tab1Section:NewToggle("Infinite Jump", "Lets you infinitely jump", function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
    end)
    
Tab2Section:NewButton("Infinite Yield", "Give you infinite yield script.", function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

Tab2Section:NewButton("Anti Afk", "It will Afk inf without get kick by anticheat", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/phingro/idk/main/anti%20afk"))()
    end)

Tab2Section:NewButton("Tools Giver (Good For People Have 2 Item)", "i will use this", function()
     loadstring(game:HttpGet('https://pastebin.com/raw/u3HnnnpD'))()
     end)

Tab2Section:NewButton("Lag Switch (This Will Give U Lag Fake)", " Good For Me", function()
     loadstring(game:HttpGet("https://paste.gg/p/anonymous/d3492bd620bd4c46b54680ac80b0fa0d/files/161ddd9c992c4ceba3c298458d45188a/raw", true))()
      end)

Tab2Section:NewButton("Drop Tool (I Find This So Long)", "Drop Tools", function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/RoboGrape/dropbuttongui/main/dropitemgui"))()
      end)
