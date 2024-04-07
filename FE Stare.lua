--[[
Made by Burgundy(8000-20)
Game: Any game with R6 support
Description: Makes your character stare at the nearest player.
Instuctions: make sure your avatar is R6 and run script.
]]

RunService = game:GetService("RunService")
Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
Character = LocalPlayer.Character

Humanoid = Character.Humanoid

H = Character.HumanoidRootPart
H2 = H:clone()
H2.Parent = Character
H.Parent = H2
H2.RootJoint.Enabled = false

H2.CanCollide = true
Character.Head.CanCollide = false

NC = Instance.new("NoCollisionConstraint",Character)
NC.Part0 = H2
NC.Part1 = Character.Torso

PlayerList = Players:GetPlayers()


Players.PlayerRemoving:Connect(function(Player)
	for i,v in PlayerList do
		if v == Player then
			table.remove(PlayerList,i)
		end
	end
end)

Players.PlayerAdded:Connect(function(Player)
	table.insert(PlayerList, Player)
end)



function GetDistance(Val1, Val2)
	return (Val1 - Val2).Magnitude
end



Loop = RunService.Heartbeat:Connect(function()
	if Humanoid.Health < 10 then Loop:Disconnect() end

	local ShortestDistance = 100
	local Answer = nil
	for i = 0, 10, 1 do
		for i,Player in PlayerList do
			if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player ~= LocalPlayer then
				local Distance = GetDistance(H2.Position, Player.Character.HumanoidRootPart.Position)
				if Distance < ShortestDistance then
					ShortestDistance = Distance
					Answer = Player
				end
			end
		end
	end

	H.CFrame = CFrame.lookAt(H2.Position, Answer.Character.HumanoidRootPart.Position)
	H.Velocity = Vector3.new()
end)
