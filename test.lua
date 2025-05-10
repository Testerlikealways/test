local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")

local holdingW = false
local teleporting = false
local screenGui

-- Setup GUI once
local function createGui()
	if screenGui then return end

	screenGui = Instance.new("ScreenGui")
	screenGui.Name = "TeleportGui"
	screenGui.ResetOnSpawn = false
	screenGui.Parent = player:WaitForChild("PlayerGui")

	local teleportButton = Instance.new("TextButton")
	teleportButton.Size = UDim2.new(0, 200, 0, 50)
	teleportButton.Position = UDim2.new(0.5, -100, 0.4, 0)
	teleportButton.AnchorPoint = Vector2.new(0.5, 0)
	teleportButton.Text = "Activate Teleport"
	teleportButton.Parent = screenGui
	teleportButton.BackgroundColor3 = Color3.fromRGB(50, 150, 250)
	teleportButton.TextColor3 = Color3.new(1, 1, 1)
	teleportButton.Font = Enum.Font.SourceSansBold
	teleportButton.TextSize = 22

	local removeButton = Instance.new("TextButton")
	removeButton.Size = UDim2.new(0, 200, 0, 50)
	removeButton.Position = UDim2.new(0.5, -100, 0.4, 60)
	removeButton.AnchorPoint = Vector2.new(0.5, 0)
	removeButton.Text = "Remove GUI"
	removeButton.Parent = screenGui
	removeButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
	removeButton.TextColor3 = Color3.new(1, 1, 1)
	removeButton.Font = Enum.Font.SourceSansBold
	removeButton.TextSize = 22

	teleportButton.MouseButton1Click:Connect(teleportThroughDarknessParts)
	removeButton.MouseButton1Click:Connect(function()
		screenGui:Destroy()
		screenGui = nil
	end)
end

-- Key input
userInputService.InputBegan:Connect(function(input, gameProcessed)
	if not gameProcessed and input.KeyCode == Enum.KeyCode.W then
		holdingW = true
	end
end)

userInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.W then
		holdingW = false
	end
end)

-- Core teleport function
function teleportThroughDarknessParts()
	if teleporting then return end
	teleporting = true

	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")

	local shutdownText
	local success = pcall(function()
		shutdownText = workspace:WaitForChild("DelayShutDown"):WaitForChild("ShutdownText")
	end)

	if not success or not shutdownText or not shutdownText:IsA("StringValue") then
		warn("DelayShutDown.ShutdownText (StringValue) not found.")
		teleporting = false
		return
	end

	-- Gather DarknessParts
	local parts = {}
	for _, model in ipairs(workspace:GetChildren()) do
		if model:IsA("Model") then
			for _, desc in ipairs(model:GetDescendants()) do
				if desc:IsA("BasePart") and desc.Name == "DarknessPart" then
					table.insert(parts, desc)
				end
			end
		end
	end

	-- Teleport to all DarknessParts
	for i, part in ipairs(parts) do
		if not holdingW then
			shutdownText.Value = "Teleport stopped. Hold W to continue."
			teleporting = false
			return
		end

		hrp.CFrame = part.CFrame + Vector3.new(0, 3, 0)
		shutdownText.Value = "Teleporting to DarknessPart " .. i .. " / " .. #parts
		task.wait(0.93) -- slower teleportation
	end

	-- Final teleport to TheEnd → GoldenChest → Trigger (Above Trigger)
	local finalTarget
	local ok = pcall(function()
		finalTarget = workspace:WaitForChild("BoatStages"):WaitForChild("NormalStages"):WaitForChild("TheEnd"):WaitForChild("GoldenChest"):WaitForChild("Trigger")
	end)

	if ok and finalTarget and finalTarget:IsA("BasePart") then
		hrp.CFrame = finalTarget.CFrame + Vector3.new(0, 10, 0) -- Teleport above the Trigger part
		shutdownText.Value = "Final teleport complete."
	else
		shutdownText.Value = "Final target (Trigger) not found."
	end

	teleporting = false
end

-- Reset on death
player.CharacterAdded:Connect(function()
	task.wait(1)
	createGui()
end)

-- Init on first load
createGui()
