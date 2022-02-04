-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

--Properties:

ScreenGui.Parent = game.StarterGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.675154328, 0, 0.639735103, 0)
Frame.Size = UDim2.new(0.324845672, 0, 0.360264897, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.202205881, 0)
TextLabel.Font = Enum.Font.PatrickHand
TextLabel.Text = "jojo v.1.1"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.261282653, 0, 0.790441155, 0)
TextButton.Size = UDim2.new(0.47505939, 0, 0.183823526, 0)
TextButton.Font = Enum.Font.PatrickHand
TextButton.Text = "PULL"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(239, 239, 239)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.137767226, 0, 0.459558815, 0)
TextBox.Size = UDim2.new(0.760095, 0, 0.183823526, 0)
TextBox.Font = Enum.Font.PatrickHand
TextBox.PlaceholderText = "script name here"
TextBox.Text = "jojoScript"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

local function show()
	ScreenGui.Enabled = true
end

return {Input=TextBox,Pull=TextButton,Show=show}