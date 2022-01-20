local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
     Title = "Cart GUI | Made by AlperSocial",
     Style = 1,
     SizeX = 400,
     SizeY = 400,
     Theme = "Dark"
})

local Page = UI.New({
    Title = "Trolling"
})

local Page2 = UI.New({
    Title = "Rdite Only"
})

local Page3 = UI.New({
    Title = "Extra"
})


Page.Button({
    Text = "Spam Up On Carts",
    Callback = function()
       for i, v in pairs(workspace:GetDescendants()) do
   if v.Parent.Name == "Up" and v.ClassName == "ClickDetector" then
       spawn(function()
            while true do
                 wait()
                 if v then
                    fireclickdetector(v)
                else
                   break;
               end
           end
       end)
   elseif v.Parent.Name == "On" and v.ClassName == "ClickDetector" then
       if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(v)
       end
       v.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(v)
           end
       end)
   end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Parent.Name == "Up" and descendant.ClassName == "ClickDetector" then
       spawn(function()
              while true do
              wait()
               if descendant then
                   fireclickdetector(descendant)
                else
                    break;
               end
           end
        end)
   elseif descendant.Parent.Name == "On" and descendant.ClassName == "ClickDetector" then
       if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(descendant)
       end
       descendant.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(descendant)
           end
       end)
   end
end) 
    end
})

Page.Button({
    Text = "Spam Down On Carts",
    Callback = function()
       for i, v in pairs(workspace:GetDescendants()) do
   if v.Parent.Name == "Down" and v.ClassName == "ClickDetector" then
       spawn(function()
            while true do
                 wait()
                 if v then
                    fireclickdetector(v)
                else
                   break;
               end
           end
       end)
   elseif v.Parent.Name == "On" and v.ClassName == "ClickDetector" then
       if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(v)
       end
       v.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if v.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(v)
           end
       end)
   end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant.Parent.Name == "Down" and descendant.ClassName == "ClickDetector" then
       spawn(function()
              while true do
              wait()
               if descendant then
                   fireclickdetector(descendant)
                else
                    break;
               end
           end
        end)
   elseif descendant.Parent.Name == "On" and descendant.ClassName == "ClickDetector" then
       if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
           fireclickdetector(descendant)
       end
       descendant.Parent:GetPropertyChangedSignal("BrickColor"):Connect(function()
           if descendant.Parent.BrickColor ~= BrickColor.new("Dark green") then
               fireclickdetector(descendant)
           end
       end)
   end
end) 
    end
})

Page.Button({
    Text = "Invis Fling",
    Callback = function()
       spawn(function()
local message = Instance.new("Message",workspace)
message.Text = "Loaded press z to execute inviseble , press x to respawn)"
wait(3)
message:Destroy()
end)








local mouse = game.Players.LocalPlayer:GetMouse()

local groot = nil

mouse.KeyDown:connect(function(k)
	
	if k == "z" then
		
		
		
spawn(function()
local message = Instance.new("Message",workspace)
message.Text = "Fe Invisible Fling By Diemiers#4209 Loaded (wait 11 seconds to load)"
wait(11)
message:Destroy()
end)


local ch = game.Players.LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)
 game.Players.LocalPlayer.Character=prt
wait(5)
game.Players.LocalPlayer.Character=ch
wait(6)


local plr = game.Players.LocalPlayer
mouse = plr:GetMouse()

local Hum = Instance.new("Humanoid")
Hum.Parent = game.Players.LocalPlayer.Character


local root =  game.Players.LocalPlayer.Character.HumanoidRootPart


for i,v in pairs(plr.Character:GetChildren()) do
	
	if v ~= root and  v.Name ~= "Humanoid" then
		
		v:Destroy()
		
	end
	
	
end
           
workspace.CurrentCamera.CameraSubject = root

local se = Instance.new("SelectionBox",root)
se.Adornee = root


game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)
game:GetService('RunService').RenderStepped:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)


power = 999999 -- change this to make it more or less powerful

power = power*10

---
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 





local plr = game.Players.LocalPlayer
local torso = root
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 120
local speed = 15


---local bambam = Instance.new("BodyThrust")
---bambam.Parent = torso
--bambam.Force = Vector3.new(9999999,0,9999999)
--bambam.Location = torso.Position


---
groot = root
 
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(0, 0, 0)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.2
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end

until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()

end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
elseif key:lower() == "r" then

end
end)
Fly()

		
		
	elseif k == "x" then
		
		
		spawn(function()
local message = Instance.new("Message",workspace)
message.Text = "Respawning dont spam"
wait(1)
message:Destroy()
end)
		
		local saved = groot.Position
		
local ch = game.Players.LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)
 game.Players.LocalPlayer.Character=prt
wait(5)
 game.Players.LocalPlayer.Character=ch
local poop = nil
		repeat wait() poop = game.Players.LocalPlayer.Character:FindFirstChild("Head") until poop ~= nil
		wait(1)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(saved)
		
	end
	
	
end)
    end
})

Page.Button({
    Text = "Rejoin to stop",
    Callback = function()
       local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

tpservice:Teleport(game.PlaceId, plr)
    end
})

Page2.Button({
    Text = "Mess With Carts",
    Callback = function()
       getgenv().AutoBreakCarts = true
spawn(function()
while AutoBreakCarts do wait(0.3)
   pcall(function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end end) end end)
    end
})

Page2.Button({
    Text = "Break The Game",
    Callback = function()
       for i, v in next, workspace:GetDescendants() do
if v:IsA"ClickDetector" and v.Parent.Name ~= "Down" then
spawn(function()
while v:IsDescendantOf(workspace) and wait() do
if v.Parent.Name ~= "On" then fireclickdetector(v)
elseif tostring(v.Parent.BrickColor) == "Bright red" then fireclickdetector(v) end
end
end)
end
end
workspace.DescendantAdded:Connect(function(v)
if v:IsA"ClickDetector" and v.Parent.Name ~= "Down" then
while v:IsDescendantOf(workspace) and wait() do
if v.Parent.Name ~= "On" then fireclickdetector(v)
elseif tostring(v.Parent.BrickColor) == "Bright red" then fireclickdetector(v) end
end
end
end)
    end
})

Page2.Button({
    Text = "Finish",
    Callback = function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.683014, 849.75, 321.389221, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end
})



Page3.Slider({
    Text = "WalkSpeed",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
    end,
    Min = 16,
    Max = 1000,
    Def = 4
})

Page3.Slider({
    Text = "JumpPower",
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
    end,
    Min = 50,
    Max = 1000,
    Def = 4
})

Page3.Button({
    Text = "Admin (Infinite Yield)",
    Callback = function()
       loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
