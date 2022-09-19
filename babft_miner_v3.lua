local OnOffBool = Instance.new("BoolValue")
OnOffBool.Parent = workspace
OnOffBool.Name = "OnOffBool"
BoolValue = false

local ScreenGui = Instance.new("ScreenGui")
local OnOff = Instance.new("TextButton")
local Exit = Instance.new("TextButton")


---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OnOff.Name = "OnOff"
OnOff.Parent = ScreenGui
OnOff.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnOff.Position = UDim2.new(1, -80, 1, -240)
OnOff.Size = UDim2.new(0, 80, 0, 20)
OnOff.Font = Enum.Font.SourceSans
OnOff.TextColor3 = Color3.fromRGB(0, 0, 0)
OnOff.TextSize = 14.000

Exit.Name = "Exit"
Exit.Parent = ScreenGui
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.Position = UDim2.new(1, -80, 1, -220)
Exit.Size = UDim2.new(0, 80, 0, 20)
Exit.Font = Enum.Font.SourceSans
Exit.TextColor3 = Color3.fromRGB(0, 0, 0)
Exit.TextSize = 14.000

-- Scripts:

local function SPCB_fake_script() -- OnOff.OnOff 
	local script = Instance.new('LocalScript', OnOff)

	local button = script.Parent
	
	local function onButtonActivated()
		print("SomeBullshitOnOff")
    workspace.OnOffBool.Value = not(workspace.OnOffBool.Value)	
    local conn = game:GetService('RunService').Heartbeat:Connect(function()
    if workspace.OnOffBool.Value then
        conn:Disconnect() -- bam
    end
  masss()
  end)
	end
	
	button.Activated:Connect(onButtonActivated)
end
coroutine.wrap(SPCB_fake_script)()
local function TCDXYY_fake_script() -- Exit.Exit 
	local script = Instance.new('LocalScript', Exit)

	local button = script.Parent
	
	local function onButtonActivated()
		print("DisConnection")
    workspace.OnOffBool.Value = false
    script.Parent.Parent:Destroy()	
	end
	
	button.Activated:Connect(onButtonActivated)
end
coroutine.wrap(TCDXYY_fake_script)()

---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------

function d()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 105, 0)
end

function tpd(x1, y1, z1)
    for i = 0,1,1 
    do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
        d()
        wait(1.05)
    end
end
x2=game.Players.LocalPlayer.Character.UpperTorso.Position.X
y2=30
z2=game.Players.LocalPlayer.Character.UpperTorso.Position.Z
start = true
function masss()
--local var = game.Players.LocalPlayer.Character.UpperTorso.Position
local varZ = game.Players.LocalPlayer.Character.UpperTorso.Position.Z
    wait(2)
    if (game.Players.LocalPlayer.Character.UpperTorso.Position.Y<-10) --[[and not(start)]] then --[[wait(2)]] start = true end
    if --[[(game.Players.LocalPlayer.Character.UpperTorso.Position.Y>-5) and ]](varZ<1000) then
    wait(2.1)
    varZ = game.Players.LocalPlayer.Character.UpperTorso.Position.Z
    if  (start) and (varZ<1000) then
        start = false
        --[[x=x2
        
        y=y2
        z=z2]
        tpd(x, y, z)]]
        x=-51.5656
        y=65
        z=1369.09
        --tpd(x,y,z)
        for i = 0,8,1 
        do
            tpd(x, y, z)
            z=z+770
        end
        tpd(x, y, z)
        z=z+1200
        y=-359
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
        wait(15)
        while game.Players.LocalPlayer.Character.UpperTorso.Position.Y < -300 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
            wait(15)
        end
		--game:service'Players'.LocalPlayer.Idled:connect(function()
		--bb:CaptureController()bb:ClickButton2(Vector2.new())
    end
    end
end
--while true do masss() end
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()
bb:ClickButton2(Vector2.new())end)
--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(x2,y2,z2)
local conn = game:GetService('RunService').Heartbeat:Connect(function()
    if workspace.OnOffBool.Value then
        conn:Disconnect() -- bam
    end
  masss()
  end)
