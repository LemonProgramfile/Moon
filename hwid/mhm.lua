-- Locales
local plr = game:GetService("Players").LocalPlayer

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local EnterTag = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UpFrame = Instance.new("Frame")
local Text = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Close = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local EnterPassword = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Login = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local Correct = Instance.new("TextLabel")
local Wrong = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.Position = UDim2.new(0, 570, 0, 241)
Main.Size = UDim2.new(0.287790567, 0, 0.397755623, 0)
Main.Active = true
Main.Draggable = true

UICorner.Parent = Main

EnterTag.Name = "EnterTag"
EnterTag.Parent = Main
EnterTag.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
EnterTag.Position = UDim2.new(0, 127, 0, 75)
EnterTag.Size = UDim2.new(0.435375094, 0, 0.145367369, 0)
EnterTag.Font = Enum.Font.GothamBold
EnterTag.Text = "Discord Tag"
EnterTag.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterTag.TextScaled = true
EnterTag.TextSize = 14.000
EnterTag.TextWrapped = true

UICorner_2.Parent = EnterTag

UITextSizeConstraint.Parent = EnterTag
UITextSizeConstraint.MaxTextSize = 20

UpFrame.Name = "UpFrame"
UpFrame.Parent = Main
UpFrame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
UpFrame.BorderSizePixel = 0
UpFrame.Size = UDim2.new(1, 0, 0.170403585, 0)

Text.Name = "Text"
Text.Parent = UpFrame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 74, 0, 1)
Text.Size = UDim2.new(0.671444356, 0, 0.98160404, 0)
Text.Font = Enum.Font.Unknown
Text.Text = "HWID System"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

UITextSizeConstraint_2.Parent = Text
UITextSizeConstraint_2.MaxTextSize = 24

Close.Name = "Close"
Close.Parent = UpFrame
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0, 400, 0, -29)
Close.Rotation = 45.000
Close.Size = UDim2.new(0.164141417, 0, 2.05263162, 0)
Close.Font = Enum.Font.Fantasy
Close.Text = "+"
Close.TextColor3 = Color3.fromRGB(70, 70, 70)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true
Close.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)

UITextSizeConstraint_3.Parent = Close
UITextSizeConstraint_3.MaxTextSize = 81

EnterPassword.Name = "EnterPassword"
EnterPassword.Parent = Main
EnterPassword.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
EnterPassword.Position = UDim2.new(0, 97, 0, 146)
EnterPassword.Size = UDim2.new(0.555555582, 0, 0.174058482, 0)
EnterPassword.Font = Enum.Font.GothamBold
EnterPassword.Text = "Password"
EnterPassword.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterPassword.TextScaled = true
EnterPassword.TextSize = 18.000
EnterPassword.TextWrapped = true

UICorner_3.Parent = EnterPassword

UITextSizeConstraint_4.Parent = EnterPassword
UITextSizeConstraint_4.MaxTextSize = 22

Login.Name = "Login"
Login.Parent = Main
Login.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Login.BorderSizePixel = 0
Login.Position = UDim2.new(0.276938647, 0, 0.717868328, 0)
Login.Size = UDim2.new(0, 200, 0, 57)
Login.Font = Enum.Font.GothamBold
Login.Text = "Login"
Login.TextColor3 = Color3.fromRGB(255, 255, 255)
Login.TextSize = 23.000
Login.MouseButton1Click:Connect(function()
	if EnterTag.Text == "Tag" and EnterPassword.Text == "Password" then
		Correct.Visible = true
		wait(3.5)
		ScreenGui:Destroy()
        wait(0.5)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzKrasty/Moon/main/source.lua"))()
	else
		Wrong.Visible = true
		wait(1.5)
		plr:Kick("Wrong!")
	end
end)

UICorner_4.Parent = Login

UITextSizeConstraint_5.Parent = Login
UITextSizeConstraint_5.MaxTextSize = 20

Correct.Name = "Correct"
Correct.Parent = Main
Correct.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Correct.BackgroundTransparency = 1.000
Correct.Position = UDim2.new(0.262613744, 0, 0.639999986, 0)
Correct.Size = UDim2.new(0, 218, 0, 21)
Correct.Visible = false
Correct.Font = Enum.Font.GothamBold
Correct.Text = "Password Correct!"
Correct.TextColor3 = Color3.fromRGB(85, 255, 0)
Correct.TextSize = 26.000

Wrong.Name = "Wrong"
Wrong.Parent = Main
Wrong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Wrong.BackgroundTransparency = 1.000
Wrong.Position = UDim2.new(0.262613744, 0, 0.639999986, 0)
Wrong.Size = UDim2.new(0, 218, 0, 21)
Wrong.Visible = false
Wrong.Font = Enum.Font.GothamBold
Wrong.Text = "Wrong Password, kicking.."
Wrong.TextColor3 = Color3.fromRGB(255, 0, 0)
Wrong.TextSize = 26.000
