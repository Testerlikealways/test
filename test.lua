-- 🌐 ii op mod menu remade by egalbla

local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

-- UI Setup
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "iiOpModMenu"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 220, 0, 400)
frame.Position = UDim2.new(0, 100, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true
Instance.new("UICorner", frame)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "🌐 ii op mod menu v1 made by egalbla"
title.TextColor3 = Color3.fromRGB(255, 255, 0)
title.BackgroundTransparency = 1
title.Font = Enum.Font.Code
title.TextSize = 17

local function makeBtn(text, y)
    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(0.9, 0, 0, 35)
    btn.Position = UDim2.new(0.05, 0, 0, y)
    btn.Text = text
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 18
    btn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    btn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", btn)
    return btn
end

-- Create buttons
local flyBtn = makeBtn("Toggle Fly", 40)
local noclipBtn = makeBtn("Toggle Noclip", 80)
local speedBtn = makeBtn("Speed Boost", 120)
local jumpBtn = makeBtn("Jump Boost", 160)
local spinBtn = makeBtn("Spin Fast", 200)
local msgBtn = makeBtn("Shout Message", 240)
local tpBtn = makeBtn("Teleport to Random Player", 280)
local gravityBtn = makeBtn("Toggle Gravity", 320)

-- MODS

-- Fly
local flying = false
local bv, bg, flyConn
local function toggleFly()
    local char = player.Character or player.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")
    if not flying then
        flying = true
        bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(1e5, 1e5, 1e5)
        bv.Velocity = Vector3.zero
        bv.Parent = root

        bg = Instance.new("BodyGyro")
        bg.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
        bg.P = 10000
        bg.CFrame = root.CFrame
        bg.Parent = root

        flyConn = RunService.RenderStepped:Connect(function()
            local cam = workspace.CurrentCamera
            local dir = Vector3.zero

            if UIS:IsKeyDown(Enum.KeyCode.W) then dir += cam.CFrame.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.S) then dir -= cam.CFrame.LookVector end
            if UIS:IsKeyDown(Enum.KeyCode.A) then dir -= cam.CFrame.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.D) then dir += cam.CFrame.RightVector end
            if UIS:IsKeyDown(Enum.KeyCode.Space) then dir += Vector3.new(0, 1, 0) end
            if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then dir -= Vector3.new(0, 1, 0) end

            if dir.Magnitude > 0 then
                bv.Velocity = dir.Unit * 100  -- Faster fly speed
                bg.CFrame = CFrame.new(Vector3.zero, dir.Unit)
            else
                bv.Velocity = Vector3.zero
            end
        end)
    else
        flying = false
        if flyConn then flyConn:Disconnect() end
        if bv then bv:Destroy() end
        if bg then bg:Destroy() end
    end
end

-- Noclip
local noclip = false
RunService.Stepped:Connect(function()
    if noclip and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- Speed Boost
local speedOn = false
local function toggleSpeed()
    local hum = player.Character and player.Character:FindFirstChild("Humanoid")
    if hum then
        speedOn = not speedOn
        hum.WalkSpeed = speedOn and 32 or 16
    end
end

-- Jump Boost
local jumpOn = false
local function toggleJump()
    local hum = player.Character and player.Character:FindFirstChild("Humanoid")
    if hum then
        jumpOn = not jumpOn
        hum.JumpPower = jumpOn and 100 or 50
    end
end

-- Spin Fast (Faster Spin)
local spinning = false
local spinConn
local function toggleSpin()
    local char = player.Character or player.CharacterAdded:Wait()
    local root = char:WaitForChild("HumanoidRootPart")

    if not spinning then
        spinning = true
        spinConn = RunService.Heartbeat:Connect(function()
            if root then
                root.CFrame *= CFrame.Angles(0, math.rad(50), 0)  -- Faster spin
            end
        end)
    else
        spinning = false
        if spinConn then spinConn:Disconnect() end
    end
end

-- Shout Message (Fixed)
local function shoutMessage()
    StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "🌐 Team ii op - join today! 🌐",
        Color = Color3.fromRGB(255, 0, 0),
        Font = Enum.Font.SourceSansBold,
        TextSize = 22
    })
end

-- Teleport to Random Player
local function teleportToRandomPlayer()
    local players = game.Players:GetPlayers()
    if #players > 1 then
        local targetPlayer = players[math.random(1, #players)]
        player.Character:SetPrimaryPartCFrame(targetPlayer.Character.HumanoidRootPart.CFrame)
    end
end

-- Gravity Mod
local gravityEnabled = false
local function toggleGravity()
    gravityEnabled = not gravityEnabled
    if gravityEnabled then
        workspace.Gravity = 50  -- Low gravity
    else
        workspace.Gravity = 196.2  -- Default gravity
    end
end

-- Button Click Events
flyBtn.MouseButton1Click:Connect(toggleFly)
noclipBtn.MouseButton1Click:Connect(function() noclip = not noclip end)
speedBtn.MouseButton1Click:Connect(toggleSpeed)
jumpBtn.MouseButton1Click:Connect(toggleJump)
spinBtn.MouseButton1Click:Connect(toggleSpin)
msgBtn.MouseButton1Click:Connect(shoutMessage)
tpBtn.MouseButton1Click:Connect(teleportToRandomPlayer)
gravityBtn.MouseButton1Click:Connect(toggleGravity)

-- Toggle Button UI (top-left corner)
local toggleButton = Instance.new("TextButton", gui)
toggleButton.Size = UDim2.new(0, 100, 0, 30)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "Toggle Menu"
toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Font = Enum.Font.SourceSansBold
toggleButton.TextSize = 18
Instance.new("UICorner", toggleButton)

-- Destroy Button UI (top-right corner)
local destroyButton = Instance.new("TextButton", gui)
destroyButton.Size = UDim2.new(0, 100, 0, 30)
destroyButton.Position = UDim2.new(1, -110, 0, 10)
destroyButton.Text = "Destroy Menu"
destroyButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
destroyButton.TextColor3 = Color3.new(1, 1, 1)
destroyButton.Font = Enum.Font.SourceSansBold
destroyButton.TextSize = 18
Instance.new("UICorner", destroyButton)

-- Show/hide menu logic
local menuVisible = true
toggleButton.MouseButton1Click:Connect(function()
    menuVisible = not menuVisible
    frame.Visible = menuVisible
end)

-- Destroy mod menu
destroyButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Press "M" to Toggle Menu
UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.M then
        menuVisible = not menuVisible
        frame.Visible = menuVisible
    end
end)
