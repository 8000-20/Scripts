--[[
Made by Burgundy
Game: Rate My Avatar
Description: Puts a short portion of RickAstley never gonna give you up as your booth image.
Instuctions: Join game, Claim booth, Run script, Wait for frames to load.
]]

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
--Frames[76] = "Roblox moderation sucks ass"
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

Stop = false

--Anti skid measures
__=Instance.new("\83\99\114\101\101\110\71\117\105",game:GetService("\80\108\97\121\101\114\115").LocalPlayer.PlayerGui)
___=Instance.new("\70\114\97\109\101",__)
___.BackgroundColor3=Color3.fromRGB(139,139,139)
___.Size=UDim2.new(0.277,0,0.143,0)
___.Position=UDim2.new(.5,0,.75,0)
___.AnchorPoint=Vector2.new(.5,.5)
___.Draggable=true
___.Active=true
___.Selectable=true
Instance.new("\85\73\67\111\114\110\101\114",___)
_=Instance.new("\85\73\83\116\114\111\107\101",___)
_.Thickness=6
_=Instance.new("\85\73\65\115\112\101\99\116\82\97\116\105\111\67\111\110\115\116\114\97\105\110\116",___)
_.AspectRatio=3.85
_=Instance.new("\84\101\120\116\76\97\98\101\108",___)
_.BackgroundTransparency=1
_.Text="\56\48\48\48\50\48"
_.Size=UDim2.new(0.265,0,0.35,0)
_.Position=UDim2.new(0,0,1,0)
_.TextScaled=true
_.TextColor3=Color3.fromRGB(128,0,32)
_.Font=Enum.Font.SourceSans
_.TextSize=14
_=Instance.new("\84\101\120\116\66\117\116\116\111\110",___)
_.BackgroundColor3=Color3.fromRGB(255,56,76)
_.Text="\88"
_.Position=UDim2.new(0.902,0,0.086,0)
_.Size=UDim2.new(0.093,0,0.304,0)
_.TextScaled=true
_.Font=Enum.Font.SourceSans
_.TextSize=14
_.TextColor3=Color3.new()
_.MouseButton1Up:Connect(function()
	Stop=true
	__:Destroy()
end)
Instance.new("\85\73\65\115\112\101\99\116\82\97\116\105\111\67\111\110\115\116\114\97\105\110\116",_)
_=Instance.new("\85\73\67\111\114\110\101\114",_)
_.CornerRadius=UDim.new(1,0)
_=Instance.new("\84\101\120\116\66\111\120",___)
_.BackgroundColor3=Color3.fromRGB(93,93,93)
_.ClearTextOnFocus=false
_.TextScaled=true
_.TextColor3=Color3.new(1,1,1)
_.Size=UDim2.new(0.835,0,0.822,0)
_.Position=UDim2.new(0.036,0,0.086,0)
_.BorderSizePixel=0
_.Text="\73\110\115\101\114\116\32\109\101\115\115\97\103\101\32\104\101\114\101"

while not Stop do
	for i,v in Frames do
		game:GetService("ReplicatedStorage"):WaitForChild("CustomiseBooth"):FireServer("Update",{["DescriptionText"] = _.Text,["ImageId"] = tonumber(v)})
		task.wait(0.0833333333)--12 FPS
	end
end
