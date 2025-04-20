-- Create a GUI with a button
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

-- Create a Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
frame.Parent = screenGui

-- Create a Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.5, -25)
button.Text = "Click Me"
button.Parent = frame

-- Button click event
button.MouseButton1Click:Connect(function()
    print("Button clicked!")
end)
