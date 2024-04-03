--[[
Made by Burgundy
Game: Rate My Avatar
Description: Basically chat logs except every one can see it.
Instuctions: Join game, Claim booth, Run script.
]]

Players = game:GetService("Players")
Chat = game:GetService("Chat")

function Update(String)
	game:GetService("ReplicatedStorage"):WaitForChild("CustomiseBooth"):FireServer("Update",{["DescriptionText"] = String,["ImageId"] = 16220958683})
end

m1,m2,m3 = "","",""

ThreadsFrozen = false
AntiFreeze = 0

function Register(Player)
	local Name = Player.DisplayName
	Player.Chatted:Connect(function(Message)
		if #Message < 50 then
			repeat task.wait() until not ThreadsFrozen
			ThreadsFrozen = true
			local tm4 = m3
			local tm3 = m2
			local tm2 = m1
			local tm1 = '['..Name..']: '..Message
			local Send = tm4..'\n\n'..tm3..'\n\n'..tm2..'\n\n'..tm1
			if not Chat:FilterStringAsync(Send, Player, Player):match("#") then do
					AntiFreeze = 0
					m3 = tm3
					m2 = tm2
					m1 = tm1
					Update(Send)
				end else
				AntiFreeze += 1
				if AntiFreeze == 3 then
					m1,m2,m3 = "","",""
					AntiFreeze = 0
				end
			end
			ThreadsFrozen = false
		end
	end)
end

for i,Player in Players:GetPlayers() do
	Register(Player)
end

Players.PlayerAdded:Connect(function(Player)
	Register(Player)
end)
