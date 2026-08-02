--[[
    😈 Quyết X DeepSeek - Hitbox Expander
    Loadstring: loadstring(game:HttpGet("https://raw.githubusercontent.com/haq799271-ops/script-roblox/main/hitbox.lua"))()
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

getgenv().HeadSize = 3
getgenv().Disabled = false
getgenv().WalkSpeed = 16
getgenv().JumpPower = 50
getgenv().Gravity = 196.2

-- GUI
local SG = Instance.new("ScreenGui")
SG.Name = "QuyetXDeepSeek"
SG.Parent = game:GetService("CoreGui")
SG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SG.ResetOnSpawn = false

local MF = Instance.new("Frame")
MF.Parent = SG
MF.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MF.BorderSizePixel = 0
MF.Position = UDim2.new(0, 15, 0, 150)
MF.Size = UDim2.new(0, 195, 0, 310)
MF.ClipsDescendants = true
MF.Active = true

local TB = Instance.new("Frame")
TB.Parent = MF
TB.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
TB.BorderSizePixel = 0
TB.Size = UDim2.new(1, 0, 0, 28)

local T = Instance.new("TextLabel")
T.Parent = TB
T.BackgroundTransparency = 1
T.Position = UDim2.new(0, 8, 0, 0)
T.Size = UDim2.new(0, 140, 0, 28)
T.Font = Enum.Font.SourceSansBold
T.Text = "😈 Quyet X DeepSeek"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 11
T.TextXAlignment = Enum.TextXAlignment.Left

local MB = Instance.new("TextButton")
MB.Parent = TB
MB.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
MB.BorderSizePixel = 0
MB.Position = UDim2.new(0, 169, 0, 4)
MB.Size = UDim2.new(0, 20, 0, 20)
MB.Font = Enum.Font.SourceSansBold
MB.Text = "-"
MB.TextColor3 = Color3.fromRGB(0, 255, 100)
MB.TextSize = 14

local CF = Instance.new("Frame")
CF.Parent = MF
CF.BackgroundTransparency = 1
CF.Position = UDim2.new(0, 0, 0, 30)
CF.Size = UDim2.new(1, 0, 0, 280)

local sections = {}
local y = 5
for i, sec in ipairs({
    {icon = "🎯", title = "HITBOX", color = Color3.fromRGB(0, 255, 100)},
    {icon = "🏃", title = "SPEED", color = Color3.fromRGB(255, 200, 0)},
    {icon = "🦘", title = "JUMP", color = Color3.fromRGB(0, 150, 255)},
    {icon = "🌍", title = "GRAVITY", color = Color3.fromRGB(200, 100, 255)}
}) do
    local S = Instance.new("Frame")
    S.Parent = CF
    S.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    S.BorderSizePixel = 0
    S.Position = UDim2.new(0, 5, 0, y)
    S.Size = UDim2.new(0, 185, 0, 58)

    local H = Instance.new("TextLabel")
    H.Parent = S
    H.BackgroundTransparency = 1
    H.Size = UDim2.new(1, 0, 0, 18)
    H.Font = Enum.Font.SourceSansBold
    H.Text = sec.icon .. " " .. sec.title
    H.TextColor3 = sec.color
    H.TextSize = 10
    H.TextXAlignment = Enum.TextXAlignment.Left

    sections[i] = {frame = S, color = sec.color}
    y = y + 63
end

-- Hitbox
local HS = Instance.new("TextBox")
HS.Parent = sections[1].frame
HS.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
HS.BorderSizePixel = 0
HS.Position = UDim2.new(0, 8, 0, 22)
HS.Size = UDim2.new(0, 60, 0, 20)
HS.Font = Enum.Font.SourceSans
HS.Text = "3"
HS.TextColor3 = Color3.fromRGB(255, 255, 255)
HS.TextSize = 11

local HT = Instance.new("TextButton")
HT.Parent = sections[1].frame
HT.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
HT.BorderSizePixel = 0
HT.Position = UDim2.new(0, 75, 0, 22)
HT.Size = UDim2.new(0, 102, 0, 20)
HT.Font = Enum.Font.SourceSansBold
HT.Text = "ENABLE"
HT.TextColor3 = Color3.fromRGB(255, 255, 255)
HT.TextSize = 10

-- Speed
local SS = Instance.new("TextBox")
SS.Parent = sections[2].frame
SS.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
SS.BorderSizePixel = 0
SS.Position = UDim2.new(0, 8, 0, 22)
SS.Size = UDim2.new(0, 100, 0, 20)
SS.Font = Enum.Font.SourceSans
SS.Text = "16"
SS.TextColor3 = Color3.fromRGB(255, 255, 255)
SS.TextSize = 11

local SB = Instance.new("TextButton")
SB.Parent = sections[2].frame
SB.BackgroundColor3 = Color3.fromRGB(255, 150, 0)
SB.BorderSizePixel = 0
SB.Position = UDim2.new(0, 115, 0, 22)
SB.Size = UDim2.new(0, 62, 0, 20)
SB.Font = Enum.Font.SourceSansBold
SB.Text = "SET"
SB.TextColor3 = Color3.fromRGB(255, 255, 255)
SB.TextSize = 10

-- Jump
local JS = Instance.new("TextBox")
JS.Parent = sections[3].frame
JS.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
JS.BorderSizePixel = 0
JS.Position = UDim2.new(0, 8, 0, 22)
JS.Size = UDim2.new(0, 100, 0, 20)
JS.Font = Enum.Font.SourceSans
JS.Text = "50"
JS.TextColor3 = Color3.fromRGB(255, 255, 255)
JS.TextSize = 11

local JB = Instance.new("TextButton")
JB.Parent = sections[3].frame
JB.BackgroundColor3 = Color3.fromRGB(0, 130, 220)
JB.BorderSizePixel = 0
JB.Position = UDim2.new(0, 115, 0, 22)
JB.Size = UDim2.new(0, 62, 0, 20)
JB.Font = Enum.Font.SourceSansBold
JB.Text = "SET"
JB.TextColor3 = Color3.fromRGB(255, 255, 255)
JB.TextSize = 10

-- Gravity
local GS = Instance.new("TextBox")
GS.Parent = sections[4].frame
GS.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
GS.BorderSizePixel = 0
GS.Position = UDim2.new(0, 8, 0, 22)
GS.Size = UDim2.new(0, 100, 0, 20)
GS.Font = Enum.Font.SourceSans
GS.Text = "196.2"
GS.TextColor3 = Color3.fromRGB(255, 255, 255)
GS.TextSize = 11

local GB = Instance.new("TextButton")
GB.Parent = sections[4].frame
GB.BackgroundColor3 = Color3.fromRGB(130, 70, 200)
GB.BorderSizePixel = 0
GB.Position = UDim2.new(0, 115, 0, 22)
GB.Size = UDim2.new(0, 62, 0, 20)
GB.Font = Enum.Font.SourceSansBold
GB.Text = "SET"
GB.TextColor3 = Color3.fromRGB(255, 255, 255)
GB.TextSize = 10

-- Status
local ST = Instance.new("TextLabel")
ST.Parent = CF
ST.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
ST.BorderSizePixel = 0
ST.Position = UDim2.new(0, 5, 0, 260)
ST.Size = UDim2.new(0, 185, 0, 18)
ST.Font = Enum.Font.SourceSans
ST.Text = "🟢 Ready"
ST.TextColor3 = Color3.fromRGB(0, 255, 100)
ST.TextSize = 9

-- Functions
local function protectSelf()
    pcall(function()
        local c = LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("HumanoidRootPart")
            if h then
                h.Size = Vector3.new(2, 2, 1)
                h.Transparency = 1
                h.Material = "Plastic"
                h.CanCollide = true
            end
        end
    end)
end

local function apply()
    pcall(function()
        local c = LocalPlayer.Character
        if c then
            local h = c:FindFirstChild("Humanoid")
            if h then
                h.WalkSpeed = getgenv().WalkSpeed
                h.UseJumpPower = true
                h.JumpPower = getgenv().JumpPower
            end
        end
        workspace.Gravity = getgenv().Gravity
    end)
end

-- Drag
local drag = false
local ds, sp
TB.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        drag = true
        ds = i.Position
        sp = MF.Position
        i.Changed:Connect(function()
            if i.UserInputState == Enum.UserInputState.End then
                drag = false
            end
        end)
    end
end)
UserInputService.InputChanged:Connect(function(i)
    if drag and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
        local d = i.Position - ds
        MF.Position = UDim2.new(0, math.clamp(sp.X.Offset + d.X, -150, workspace.CurrentCamera.ViewportSize.X - 40), 0, math.clamp(sp.Y.Offset + d.Y, 0, workspace.CurrentCamera.ViewportSize.Y - 40))
    end
end)

-- Minimize
local min = false
MB.MouseButton1Click:Connect(function()
    min = not min
    if min then
        MF:TweenSize(UDim2.new(0, 150, 0, 30), "Out", "Quad", 0.3, true)
        MB.Text = "+"
    else
        MF:TweenSize(UDim2.new(0, 195, 0, 310), "Out", "Quad", 0.3, true)
        MB.Text = "-"
    end
end)

-- Hitbox Toggle
HT.MouseButton1Click:Connect(function()
    getgenv().Disabled = not getgenv().Disabled
    if getgenv().Disabled then
        HT.Text = "DISABLED"
        HT.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                pcall(function()
                    if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                        local h = p.Character.HumanoidRootPart
                        h.Size = Vector3.new(2, 2, 1)
                        h.Transparency = 1
                        h.Material = "Plastic"
                        h.CanCollide = true
                    end
                end)
            end
        end
    else
        HT.Text = "ENABLED"
        HT.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    end
end)

-- Speed Set
SB.MouseButton1Click:Connect(function()
    local v = tonumber(SS.Text)
    if v and v >= 0 and v <= 200 then
        getgenv().WalkSpeed = v
        apply()
    end
    ST.Text = "Speed: " .. getgenv().WalkSpeed
end)

-- Jump Set
JB.MouseButton1Click:Connect(function()
    local v = tonumber(JS.Text)
    if v and v >= 0 and v <= 200 then
        getgenv().JumpPower = v
        apply()
    end
    ST.Text = "Jump: " .. getgenv().JumpPower
end)

-- Gravity Set
GB.MouseButton1Click:Connect(function()
    local v = tonumber(GS.Text)
    if v and v >= 0 and v <= 200 then
        getgenv().Gravity = v
        apply()
    end
    ST.Text = "Gravity: " .. getgenv().Gravity
end)

-- Hitbox Size
HS.FocusLost:Connect(function(e)
    if e then
        local v = tonumber(HS.Text)
        if v and v >= 1 and v <= 30 then
            getgenv().HeadSize = v
        else
            HS.Text = tostring(getgenv().HeadSize)
        end
    end
end)

-- Main Loop
RunService.RenderStepped:Connect(function()
    protectSelf()
    apply()
    if not getgenv().Disabled then
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                pcall(function()
                    local c = p.Character
                    if c then
                        local h = c:FindFirstChild("HumanoidRootPart")
                        if h then
                            h.Size = Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                            h.Transparency = 0.7
                            h.BrickColor = BrickColor.new("Really blue")
                            h.Material = "Neon"
                            h.CanCollide = false
                        end
                    end
                end)
            end
        end
    end
end)

-- Player Added
Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function()
        if not getgenv().Disabled then
            task.wait(0.3)
            apply()
        end
    end)
end)

-- Respawn
LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.3)
    protectSelf()
    apply()
end)

-- Init
apply()
protectSelf()
print("✅ Quyet X DeepSeek Loaded!")
