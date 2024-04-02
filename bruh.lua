Frames = {}

Frames[2] = "16980924516"
Frames[3] = "16980924207"
Frames[4] = "16980923983"
Frames[5] = "16980918872"
Frames[6] = "16980918636"
Frames[7] = "16980918442"
Frames[8] = "16980918014"
Frames[9] = "16980917653"
Frames[10] = "16980917411"
Frames[11] = "16980941248"
Frames[12] = "16980941063"
Frames[13] = "16980940858"
Frames[14] = "16980940701"
Frames[15] = "16980935177"
Frames[16] = "16980935022"
Frames[17] = "16980934789"
Frames[18] = "16980934504"
Frames[19] = "16980934318"
Frames[20] = "16980934103"
Frames[21] = "16981422133"
Frames[22] = "16981421961"
Frames[23] = "16981421623"
Frames[24] = "16981421359"
Frames[25] = "16981414944"
Frames[26] = "16981414561"
Frames[27] = "16981414307"
Frames[28] = "16981413937"
Frames[29] = "16981413683"
Frames[30] = "16981413205"
Frames[31] = "16981406336"
Frames[32] = "16981406113"
Frames[33] = "16981405834"
Frames[34] = "16981405514"
Frames[35] = "16981405238"
Frames[36] = "16981404928"
Frames[37] = "16981397870"
Frames[38] = "16981397547"
Frames[39] = "16981397151"
Frames[40] = "16981396815"
Frames[41] = "16981396409"
Frames[42] = "16981396103"
Frames[43] = "16981387991"
Frames[44] = "16981387613"
Frames[45] = "16981387231"
Frames[46] = "16981386815"
Frames[47] = "16981386416"
Frames[48] = "16981386066"
Frames[49] = "16981378142"
Frames[50] = "16981377733"
Frames[51] = "16981377412"
Frames[52] = "16981377041"
Frames[53] = "16981376746"
Frames[54] = "16981376461"
Frames[55] = "16981368291"
Frames[56] = "16981368032"
Frames[57] = "16981367759"
Frames[58] = "16981367313"
Frames[59] = "16981366985"
Frames[60] = "16981366643"
Frames[61] = "16981359710"
Frames[62] = "16981359442"
Frames[63] = "16981359152"
Frames[64] = "16981358952"
Frames[65] = "16981358645"
Frames[66] = "16981358377"
Frames[67] = "16981351658"
Frames[68] = "16981351224"
Frames[69] = "16981350801"
Frames[70] = "16981350409"
Frames[71] = "16981350121"
Frames[72] = "16981349899"
Frames[73] = "16980991000"
Frames[74] = "16980990838"
Frames[75] = "16980990575"
Frames[77] = "16980990035"
Frames[78] = "16980989822"
Frames[79] = "16980983812"
Frames[80] = "16980983375"
Frames[81] = "16980983185"
Frames[82] = "16980982963"
Frames[83] = "16980982685"
Frames[84] = "16980982429"
Frames[85] = "16980977188"
Frames[86] = "16980976801"
Frames[87] = "16980976539"
Frames[88] = "16980976228"
Frames[89] = "16980976008"
Frames[91] = "16980970500"
Frames[92] = "16980970325"
Frames[93] = "16980970124"
Frames[94] = "16980969910"
Frames[95] = "16980969625"
Frames[96] = "16980969110"
Frames[97] = "16980964026"
Frames[98] = "16980963571"
Frames[99] = "16980963246"
Frames[100] = "16980962802"
Frames[101] = "16980962312"
Frames[102] = "16980962076"
Frames[103] = "16980957258"
Frames[104] = "16980956911"
Frames[105] = "16980956569"
Frames[106] = "16980956175"
Frames[107] = "16980955562"
Frames[108] = "16980955056"
Frames[109] = "16980950410"
Frames[110] = "16980949972"
Frames[111] = "16980949617"
Frames[112] = "16980949077"
Frames[113] = "16980948704"
Frames[114] = "16980948398"

Players = game:GetService("Players")
Chat = game:GetService("Chat")

m1,m2,m3 = "","",""

ThreadsFrozen = false
AntiFreeze = 0

MESSEGTEX = ""

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
					MESSEGTEX = Send
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

while true do
	for i,v in Frames do
		game:GetService("ReplicatedStorage"):WaitForChild("CustomiseBooth"):FireServer("Update",{["DescriptionText"] = MESSEGTEX,["ImageId"] = tonumber(v)})
		task.wait(0.0833333333)
	end
end
