--[[
Made by Burgundy(8000-20)
Game: Any
Description: Makes your game Extremely low quality.
Instuctions: Join game, Run script.
]]
Divide = 10 -- higher = less quality better performance, lower = higher quality and worse performance

RunService = game:GetService("RunService")
RunService:Set3dRenderingEnabled(false)
Coregui = game:GetService("CoreGui")
sg = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer.PlayerGui)
sg.IgnoreGuiInset = true
sg.ResetOnSpawn = false
Gui = Instance.new("Frame", sg)
Coregui.RobloxGui.Enabled = false
Coregui.RobloxGui.Enabled = true
Camera = workspace.CurrentCamera
ScreenPixels = Vector2.new(math.floor(Camera.ViewportSize.X/Divide),math.floor(Camera.ViewportSize.Y/Divide))

for i2 = 0, ScreenPixels.Y-1, 1 do
	for i = 0, ScreenPixels.X-1, 1 do
		local Pixel = Instance.new("Frame",Gui)
		Pixel.Size = UDim2.new(0,Divide,0,Divide)
		Pixel.Position = UDim2.new(0,i*Divide,0,i2*Divide)
		Pixel.BorderSizePixel = 0
	end
end

local filter = {}
local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
raycastParams.FilterDescendantsInstances = filter

Evens = true

RunService.RenderStepped:Connect(function()
    Evens = not Evens
	for i,Pixel in pairs(Gui:GetChildren()) do
        if i % 2 == 0 and Evens then continue end
        if i % 2 ~= 0 and not Evens then continue end
        if math.random(1,2) == 1 then continue end
		local Raycast = Camera:ViewportPointToRay(Pixel.Position.X.Offset,Pixel.Position.Y.Offset)
		raycastResult = workspace:Raycast(Raycast.Origin, Raycast.Direction * 1000, raycastParams)

		if raycastResult and raycastResult.Instance and raycastResult.Instance:IsA("BasePart") then do
                if raycastResult.Instance.Transparency > 0 then
                    table.insert(filter, raycastResult.Instance)
                    raycastParams.FilterDescendantsInstances = filter
                    continue
                end
				Pixel.BackgroundColor3 = raycastResult.Instance.Color
			end else
			Pixel.BackgroundColor3 = Color3.fromRGB(56, 235, 255)
		end
	end
end)
