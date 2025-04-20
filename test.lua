--[[ 
📦 Steam-Like UI: People Playground Styled with Verified Badge
Author: ChatGPT for @kennyklein89669
Lines: ~550 (Chunked into 3 parts)
--]]

-- ⛔ Safety check
local p = game.Players.LocalPlayer
if not p then return end

local gui = Instance.new("ScreenGui", p:WaitForChild("PlayerGui"))
gui.Name = "SteamStyleUI"
gui.ResetOnSpawn = false

-- 🖥️ Blur Background
local blur = Instance.new("BlurEffect", game.Lighting)
blur.Size = 12
blur.Name = "SteamUIBlur"

-- 🎛 Top Nav Bar
local topBar = Instance.new("Frame", gui)
topBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.BorderSizePixel = 0

local topTabs = {"SHOP", "LIBRARY", "COMMUNITY", p.Name}  -- Last tab is now the player's name
for i, tab in ipairs(topTabs) do
	local t = Instance.new("TextLabel", topBar)
	t.Text = tab
	t.Size = UDim2.new(0, 100, 1, 0)
	t.Position = UDim2.new(0, (i-1)*105, 0, 0)
	t.BackgroundTransparency = 1
	t.TextColor3 = Color3.fromRGB(150, 150, 150)
	t.Font = Enum.Font.GothamBold
	t.TextSize = 14
end

-- 🎮 Sidebar
local sidebar = Instance.new("Frame", gui)
sidebar.Size = UDim2.new(0, 250, 1, -30)
sidebar.Position = UDim2.new(0, 0, 0, 30)
sidebar.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
sidebar.BorderSizePixel = 0

-- 🔍 Search bar
local search = Instance.new("TextBox", sidebar)
search.PlaceholderText = "Search..."
search.Size = UDim2.new(1, -10, 0, 30)
search.Position = UDim2.new(0, 5, 0, 5)
search.Text = ""
search.TextColor3 = Color3.new(1,1,1)
search.BackgroundColor3 = Color3.fromRGB(40, 42, 48)
search.BorderSizePixel = 0
search.Font = Enum.Font.Gotham
search.TextSize = 14

-- 🎲 Game list with IDs and devs
local games = {
	{name = "Doors", isVerified = true, gameId = "6516141723", dev = "LSPLASH", backgroundImage = "rbxassetid://10799441537"},
	{name = "Catalog Avatar Creator", isVerified = true, gameId = "7041939546", dev = "@itsMuneeeb", backgroundImage = "rbxassetid://imageID6"},
	{name = "Murder Mystery 2", isVerified = false, gameId = "142823291", dev = "@Nikilis", backgroundImage = "rbxassetid://imageID7"},
	{name = "War Engines 0.6 [beta]", isVerified = true, gameId = "16785776740", dev = "@DoctorPurpl", backgroundImage = "rbxassetid://imageID5"},
	{name = "ball and axe", isVerified = true, gameId = "1242235469", dev = "@DoctorPurpl", backgroundImage = "rbxassetid://imageID8"},
	{name = "Toilet Tower Defense", isVerified = true, gameId = "13775256536", dev = "Telanthric Development", backgroundImage = "rbxassetid://imageID8"},
	{name = "Forsaken", isVerified = false, gameId = "18687417158", dev = "Forsaken Dev Team", backgroundImage = "rbxassetid://imageID8"},
	{name = "The Strongest Batlegrounds", isVerified = true, gameId = "10449761463", dev = "Yielding Arts", backgroundImage = "rbxassetid://imageID8"},
	{name = "Electron Chat App", isVerified = false, gameId = "104748113663969", dev = "Junior Engineers", backgroundImage = "rbxassetid://imageID8"}
}

local gameList = Instance.new("Frame", sidebar)
gameList.Size = UDim2.new(1, 0, 1, -45)
gameList.Position = UDim2.new(0, 0, 0, 40)
gameList.BackgroundTransparency = 1

-- 🎮 Main Game Display Panel
local mainPanel = Instance.new("Frame", gui)
mainPanel.Size = UDim2.new(1, -250, 1, -30)
mainPanel.Position = UDim2.new(0, 250, 0, 30)
mainPanel.BackgroundColor3 = Color3.fromRGB(24, 26, 30)
mainPanel.BorderSizePixel = 0

-- 🖼 Game Banner (Fake Steam Art)
local banner = Instance.new("Frame", mainPanel)
banner.Size = UDim2.new(1, 0, 0, 200)
banner.BackgroundColor3 = Color3.fromRGB(18, 18, 18)

-- 🏷 Game Title (Make sure this is initialized first)
local gameTitle = Instance.new("TextLabel", banner)
gameTitle.Text = "People Playground"  -- Default text
gameTitle.Size = UDim2.new(1, -20, 0, 50)
gameTitle.Position = UDim2.new(0, 10, 0, 10)
gameTitle.Font = Enum.Font.GothamBlack
gameTitle.TextSize = 36
gameTitle.TextColor3 = Color3.new(1, 1, 1)
gameTitle.BackgroundTransparency = 1
gameTitle.TextXAlignment = Enum.TextXAlignment.Left

-- 🎖 Verified Badge (Initially not visible)
local verifiedBadge = Instance.new("ImageLabel", banner)
verifiedBadge.Size = UDim2.new(0, 24, 0, 24)
verifiedBadge.Position = UDim2.new(0, gameTitle.TextBounds.X + 10, 0, 10)  -- Adjust position closer to title
verifiedBadge.Image = "rbxassetid://75772963150384"  -- Verified badge image ID
verifiedBadge.BackgroundTransparency = 1
verifiedBadge.Visible = false  -- Will be toggled on when a verified game is selected

-- Developer Label
local devLabel = Instance.new("TextLabel", banner)
devLabel.Text = "Developer: Unknown"  -- Default text
devLabel.Size = UDim2.new(1, -20, 0, 30)
devLabel.Position = UDim2.new(0, 10, 0, 60)
devLabel.Font = Enum.Font.Gotham
devLabel.TextSize = 14
devLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
devLabel.BackgroundTransparency = 1

-- Now we proceed to creating the game backgrounds (images) and buttons
local selectedGame = nil  -- Variable to track the selected game
for i, game in ipairs(games) do
	-- Create background for each game
	local background = Instance.new("ImageLabel", gameList)
	background.Size = UDim2.new(1, -10, 0, 30)
	background.Position = UDim2.new(0, 5, 0, (i - 1) * 35)
	background.BackgroundTransparency = 1
	background.Image = game.backgroundImage  -- Set the background image for each game

	-- Add the text button as well
	local gBtn = Instance.new("TextButton", gameList)
	gBtn.Text = game.name
	gBtn.Size = UDim2.new(1, -10, 0, 30)
	gBtn.Position = UDim2.new(0, 5, 0, (i - 1) * 35)
	gBtn.BackgroundColor3 = game.isVerified and Color3.fromRGB(0, 120, 0) or Color3.fromRGB(45, 45, 45)
	gBtn.TextColor3 = Color3.new(1,1,1)
	gBtn.Font = Enum.Font.Gotham
	gBtn.TextSize = 14
	gBtn.BorderSizePixel = 0

	-- Add functionality to change the game title when clicked
	gBtn.MouseButton1Click:Connect(function()
		gameTitle.Text = game.name  -- Change the gameTitle to the selected game's name
		devLabel.Text = "Developer: " .. game.dev  -- Set the developer name below the game title
		verifiedBadge.Visible = game.isVerified  -- Toggle the visibility of the verified badge
		verifiedBadge.Position = UDim2.new(0, gameTitle.TextBounds.X + 10, 0, 10)  -- Adjust badge position after title change
		selectedGame = game  -- Store the selected game
	end)
end

-- ▶️ Play Button
local playButton = Instance.new("TextButton", mainPanel)
playButton.Size = UDim2.new(0, 120, 0, 30)
playButton.Position = UDim2.new(0, 10, 0, 300)  -- Placing it in the same spot
playButton.Text = "Play"  -- Make it Play now
playButton.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
playButton.TextColor3 = Color3.fromRGB(255, 255, 255)
playButton.Font = Enum.Font.GothamBold
playButton.TextSize = 14
playButton.BorderSizePixel = 0

playButton.MouseButton1Click:Connect(function()
	if selectedGame then
		-- Validate if the selected game has a proper gameId
		if selectedGame.gameId then
			-- Teleport the player to the game based on the selected game's ID
			print("Teleporting to game ID: " .. selectedGame.gameId)
			local TeleportService = game:GetService("TeleportService")
			local placeId = tonumber(selectedGame.gameId)  -- Ensure that the gameId is treated as a number

			-- Check if the placeId is valid
			if placeId then
				-- Teleport to the game
				TeleportService:Teleport(placeId, p)
			else
				print("Invalid gameId for teleportation: " .. selectedGame.gameId)
			end
		else
			print("No valid gameId found for selected game.")
		end
	else
		print("No game selected for teleportation.")
	end
end)

-- 🎮 Game Status + Stats
local statsPanel = Instance.new("Frame", mainPanel)
statsPanel.Size = UDim2.new(1, -20, 0, 80)
statsPanel.Position = UDim2.new(0, 10, 0, 210)
statsPanel.BackgroundTransparency = 1

local stats = {
	{label = "PLAYTIME", value = "23.8 hours"},
	{label = "LAST GAME", value = "Today"},
	{label = "ACHIEVEMENTS", value = "6/17 (35%)"}
}

for i, stat in ipairs(stats) do
	local statLabel = Instance.new("TextLabel", statsPanel)
	statLabel.Size = UDim2.new(0.3, 0, 1, 0)
	statLabel.Position = UDim2.new((i-1)*0.33, 0, 0, 0)
	statLabel.Text = stats[i].label .. "\n" .. stats[i].value
	statLabel.Font = Enum.Font.Gotham
	statLabel.TextSize = 14
	statLabel.TextWrapped = true
	statLabel.TextColor3 = Color3.new(1, 1, 1)
	statLabel.BackgroundTransparency = 1
end

-- 🏆 Achievements Section
local achFrame = Instance.new("Frame", mainPanel)
achFrame.Size = UDim2.new(0.5, -20, 0, 120)
achFrame.Position = UDim2.new(0, 10, 0, 350)
achFrame.BackgroundColor3 = Color3.fromRGB(34, 36, 40)
achFrame.BorderSizePixel = 0

local achLabel = Instance.new("TextLabel", achFrame)
achLabel.Text = "Achievements - 6/17"
achLabel.Size = UDim2.new(1, 0, 0, 30)
achLabel.Font = Enum.Font.GothamBold
achLabel.TextSize = 14
achLabel.TextColor3 = Color3.fromRGB(180, 180, 255)
achLabel.BackgroundTransparency = 1

-- 🔵 Progress Bar
local progressBarBG = Instance.new("Frame", achFrame)
progressBarBG.Size = UDim2.new(1, -20, 0, 8)
progressBarBG.Position = UDim2.new(0, 10, 0, 35)
progressBarBG.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local progressBar = Instance.new("Frame", progressBarBG)
progressBar.Size = UDim2.new(0.35, 0, 1, 0)  -- Initial progress at 35%
progressBar.BackgroundColor3 = Color3.fromRGB(0, 120, 255)

-- 📜 Patch Notes Section
local patchNotes = Instance.new("Frame", mainPanel)
patchNotes.Size = UDim2.new(0.45, -20, 0, 120)
patchNotes.Position = UDim2.new(0.5, 10, 0, 350)
patchNotes.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
patchNotes.BorderSizePixel = 0

local patchTitle = Instance.new("TextLabel", patchNotes)
patchTitle.Text = "Patchnotes - 1.27 Patch 5"
patchTitle.Size = UDim2.new(1, -10, 0, 25)
patchTitle.Position = UDim2.new(0, 5, 0, 5)
patchTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
patchTitle.Font = Enum.Font.GothamBold
patchTitle.TextSize = 14
patchTitle.BackgroundTransparency = 1

local patchText = Instance.new("TextLabel", patchNotes)
patchText.Text = "Absolutely nothing of note!\nStill a cool game tho."
patchText.Size = UDim2.new(1, -10, 0, 80)
patchText.Position = UDim2.new(0, 5, 0, 30)
patchText.TextColor3 = Color3.fromRGB(200, 200, 200)
patchText.Font = Enum.Font.Gotham
patchText.TextSize = 13
patchText.TextWrapped = true
patchText.TextYAlignment = Enum.TextYAlignment.Top
patchText.BackgroundTransparency = 1

-- 🔻 Bottom Tabs: Notes | Downloads | Friends & Chat
local bottomTabs = {"Notes", "Downloads", "Friends & Chat"}
for i, tabName in ipairs(bottomTabs) do
	local tab = Instance.new("TextButton", mainPanel)
	tab.Text = tabName
	tab.Size = UDim2.new(0, 120, 0, 30)
	tab.Position = UDim2.new(0, 10 + (i-1)*130, 0, 490)
	tab.BackgroundColor3 = Color3.fromRGB(35, 37, 41)
	tab.TextColor3 = Color3.new(1,1,1)
	tab.Font = Enum.Font.Gotham
	tab.TextSize = 14
	tab.BorderSizePixel = 0
end

-- 🔊 UI Sound Effects
local soundHover = Instance.new("Sound", gui)
soundHover.SoundId = "rbxassetid://12221967" -- Replace with UI hover sound
soundHover.Volume = 0.25
soundHover.Name = "HoverSound"

-- 🔁 Add hover sound to buttons
for _, btn in ipairs(gui:GetDescendants()) do
	if btn:IsA("TextButton") then
		btn.MouseEnter:Connect(function()
			if soundHover.IsLoaded then
				soundHover:Play()
			end
		end)
	end
end

-- 🌈 Final Polish
for _, obj in ipairs(gui:GetDescendants()) do
	if obj:IsA("TextButton") or obj:IsA("Frame") then
		local corner = Instance.new("UICorner", obj)
		corner.CornerRadius = UDim.new(0, 6)
	end
end

-- ✅ Done
print("✅ Steam-style UI successfully loaded!")
