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
    Text = "Rejoin to stop",
    Callback = function()
       local tpservice= game:GetService("TeleportService")
local plr = game.Players.LocalPlayer

tpservice:Teleport(game.PlaceId, plr)
    end
})

Page.Button({
    Text = "Mess With carts",
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

Page.Button({
    Text = "Break the game",
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
