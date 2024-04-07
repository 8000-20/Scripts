--[[
Made by Burgundy(8000-20)
Game: Games that use LegacyChatService (Prison life, Rate my avatar)
Description: Allows you to chat with other people who run the script unfiltered and privately.
Instuctions: Join game, Run script, Click button next to chat bar to toggle.
]]

Key = "瓷"
Chars = {
	{Char = "a", Replace = "米"},
	{Char = "b", Replace = "饭"},
	{Char = "c", Replace = "稻"},
	{Char = "d", Replace = "水"},
	{Char = "e", Replace = "泽"},
	{Char = "f", Replace = "浇"},
	{Char = "g", Replace = "冲"},
	{Char = "h", Replace = "灌"},
	{Char = "i", Replace = "垢"},
	{Char = "j", Replace = "火"},
	{Char = "k", Replace = "炉"},
	{Char = "l", Replace = "气"},
	{Char = "m", Replace = "空"},
	{Char = "n", Replace = "晾"},
	{Char = "o", Replace = "曝"},
	{Char = "p", Replace = "家"},
	{Char = "q", Replace = "錀"},
	{Char = "r", Replace = "钃"},
	{Char = "s", Replace = "冰"},
	{Char = "t", Replace = "畈"},
	{Char = "u", Replace = "工"},
	{Char = "v", Replace = "雨"},
	{Char = "w", Replace = "霅"},
	{Char = "x", Replace = "状"},
	{Char = "y", Replace = "试"},
	{Char = "z", Replace = "幂"},
}

check1 = false
check2 = false
if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.LegacyChatService then
	check1 = true
end 
if hookmetamethod then
	check2 = true
end
function SendNotification(Title,Text)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title = Title, -- Required
		Text = Text, -- Required
		Icon = "" -- Optional
	})
end
if not check1 then
	SendNotification("Incompatable game","Hacker chat only works with legacy chat")
	return
end
if not check2 then
	SendNotification("Incompatable executor","Hacker chat requires hookmetamethod")
	return
end

ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
ChatUi = LocalPlayer.PlayerGui.Chat.Frame
ChatBarParentFrame = ChatUi.ChatBarParentFrame
ChatBox = ChatBarParentFrame.Frame.BoxFrame.Frame

HackerChatEnabled = false

ChatBox.TextLabel.Text = "Click button on right to toggle hacker chat"

ChatBarParentFrame.Frame.Size = UDim2.new(.885,0,1)
ToggleButton = Instance.new("TextButton",ChatBarParentFrame)
ToggleButton.Size = UDim2.new(.11,0,1)
ToggleButton.AnchorPoint = Vector2.new(1,0)
ToggleButton.Position = UDim2.new(1,0,0)
ToggleButton.BorderSizePixel = 0
ToggleButton.BackgroundColor3 = Color3.new()
ToggleButton.TextColor3 = Color3.new(1,0,0)
ToggleButton.TextScaled = true
ToggleButton.Text = "H"
ToggleButton.Font = Enum.Font.Ubuntu
ToggleButton.FontFace.Weight = Enum.FontWeight.Bold

ToggleButton.MouseButton1Up:Connect(function()
	HackerChatEnabled = not HackerChatEnabled
	if HackerChatEnabled then do
		ToggleButton.TextColor3 = Color3.new(0,1,0)
		end else
		ToggleButton.TextColor3 = Color3.new(1,0,0)
	end
end)

RenderLoop = RunService.RenderStepped:Connect(function()
	local Trans = ChatBarParentFrame.Frame.BackgroundTransparency
	ToggleButton.BackgroundTransparency = Trans
	ToggleButton.TextTransparency = Trans
end)

Bindable = ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local refs = {}

refs.__namecall = hookmetamethod(game, "__namecall", function(...)
	local self = ...
	local Args = {...}
	local method = getnamecallmethod()

	if self == Bindable and method == "FireServer" and HackerChatEnabled == true then
		local Message = string.lower(Args[2])
		for i,v in Chars do
			Message = Message:gsub(v.Char, v.Replace)
		end
		return refs.__namecall(Args[1],Key..Message,Args[3])
	end

	return refs.__namecall(...)
end)

function Convert(Object)
	if not Object:IsA("TextLabel") then return end
	if string.match(Object.Text,Key) then
		Object.TextColor3 = Color3.new(1,0,0)
		local Message = Object.Text:gsub(Key,"")
		for i,v in Chars do
			Message = Message:gsub(v.Replace, v.Char)
		end
		Object.Text = Message
	end
end

LocalPlayer.PlayerGui.BubbleChat.DescendantAdded:Connect(Convert)
game:GetService("CoreGui").BubbleChat.DescendantAdded:Connect(Convert)

ChatUi.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.DescendantAdded:Connect(function(Object)
	if not Object:IsA("TextLabel") then return end
	if string.match(Object.Text,Key) then
		Object.Text = ""
		Object:GetPropertyChangedSignal("Text"):Wait()
	end
	if string.match(Object.Text,"__") then
		Object:GetPropertyChangedSignal("Text"):Wait()
	end
	Convert(Object)
end)

SendNotification("\72\97\99\107\101\114\32\67\104\97\116\32\76\111\97\100\101\100","\83\99\114\105\112\116\101\100\32\98\121\32\66\117\114\103\117\110\100\121\40\56\48\48\48\45\50\48\41")
