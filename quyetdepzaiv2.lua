-- Tạo GUI
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local MinimizeButton = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")
local SizeLabel = Instance.new("TextLabel")
local SizeSlider = Instance.new("TextBox")
local ToggleButton = Instance.new("TextButton")
local StatusLabel = Instance.new("TextLabel")
local GlowEffect = Instance.new("Frame")

local SpeedLabel = Instance.new("TextLabel")
local SpeedSlider = Instance.new("TextBox")
local JumpLabel = Instance.new("TextLabel")
local JumpSlider = Instance.new("TextBox")
local GravityLabel = Instance.new("TextLabel")
local GravitySlider = Instance.new("TextBox")
local ApplyButton = Instance.new("TextButton")
local ResetButton = Instance.new("TextButton")

-- Cấu hình GUI chính
ScreenGui.Name = "HitboxGUI"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

GlowEffect.Name = "GlowEffect"
GlowEffect.Parent = ScreenGui
GlowEffect.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
GlowEffect.BackgroundTransparency = 0.8
GlowEffect.BorderSizePixel = 0
GlowEffect.Position = UDim2.new(0, 18, 0, 198)
GlowEffect.Size = UDim2.new(0, 184, 0, 154)
GlowEffect.ZIndex = 0

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0, 20, 0, 200)
MainFrame.Size = UDim2.new(0, 200, 0, 25)
MainFrame.ClipsDescendants = true

local Border = Instance.new("Frame")
Border.Name = "Border"
Border.Parent = MainFrame
Border.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
Border.BorderSizePixel = 0
Border.Size = UDim2.new(1, 0, 0, 1)
Border.Position = UDim2.new(0, 0, 0, 0)
Border.ZIndex = 2

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 25)
TitleBar.Active = true

local TitleGradient = Instance.new("UIGradient")
TitleGradient.Parent = TitleBar
TitleGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 100)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 200, 150)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 100))
})
TitleGradient.Rotation = 90

Title.Name = "Title"
Title.Parent = TitleBar
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 5, 0, 0)
Title.Size = UDim2.new(0, 140, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "😈 Quyết X DeepSeek v2.1"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 9
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextStrokeTransparency = 0.5

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0, 172, 0, 3)
MinimizeButton.Size = UDim2.new(0, 20, 0, 18)
MinimizeButton.Font = Enum.Font.SourceSansBold
MinimizeButton.Text = "−"
MinimizeButton.TextColor3 = Color3.fromRGB(0, 255, 100)
MinimizeButton.TextSize = 14

MinimizeButton.MouseEnter:Connect(function()
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
end)

MinimizeButton.MouseLeave:Connect(function()
    MinimizeButton.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    MinimizeButton.TextColor3 = Color3.fromRGB(0, 255, 100)
end)

ContentFrame.Name = "ContentFrame"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
ContentFrame.BorderSizePixel = 0
ContentFrame.Position = UDim2.new(0, 0, 0, 25)
ContentFrame.Size = UDim2.new(1, 0, 0, 290)

-- === HITBOX SECTION ===
local HitboxSection = Instance.new("TextLabel")
HitboxSection.Name = "HitboxSection"
HitboxSection.Parent = ContentFrame
HitboxSection.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
HitboxSection.BorderSizePixel = 0
HitboxSection.Position = UDim2.new(0, 5, 0, 5)
HitboxSection.Size = UDim2.new(0, 190, 0, 18)
HitboxSection.Font = Enum.Font.SourceSansBold
HitboxSection.Text = "🎯 HITBOX (Enemy Only)"
HitboxSection.TextColor3 = Color3.fromRGB(0, 255, 100)
HitboxSection.TextSize = 10
HitboxSection.TextXAlignment = Enum.TextXAlignment.Left

SizeLabel.Name = "SizeLabel"
SizeLabel.Parent = ContentFrame
SizeLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
SizeLabel.BorderSizePixel = 0
SizeLabel.Position = UDim2.new(0, 8, 0, 28)
SizeLabel.Size = UDim2.new(0, 60, 0, 18)
SizeLabel.Font = Enum.Font.SourceSans
SizeLabel.Text = "Size:"
SizeLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
SizeLabel.TextSize = 10
SizeLabel.TextXAlignment = Enum.TextXAlignment.Left

SizeSlider.Name = "SizeSlider"
SizeSlider.Parent = ContentFrame
SizeSlider.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
SizeSlider.BorderSizePixel = 0
SizeSlider.Position = UDim2.new(0, 72, 0, 28)
SizeSlider.Size = UDim2.new(0, 70, 0, 18)
SizeSlider.Font = Enum.Font.SourceSans
SizeSlider.Text = "3"
SizeSlider.TextColor3 = Color3.fromRGB(0, 255, 100)
SizeSlider.TextSize = 10
SizeSlider.PlaceholderText = "1-30"

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ContentFrame
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(0, 8, 0, 50)
ToggleButton.Size = UDim2.new(0, 184, 0, 22)
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Text = "⚡ HITBOX ON"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 10

local ToggleGradient = Instance.new("UIGradient")
ToggleGradient.Parent = ToggleButton
ToggleGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 180, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 100, 0))
})

-- === SPEED SECTION ===
local SpeedSection = Instance.new("TextLabel")
SpeedSection.Name = "SpeedSection"
SpeedSection.Parent = ContentFrame
SpeedSection.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
SpeedSection.BorderSizePixel = 0
SpeedSection.Position = UDim2.new(0, 5, 0, 80)
SpeedSection.Size = UDim2.new(0, 190, 0, 18)
SpeedSection.Font = Enum.Font.SourceSansBold
SpeedSection.Text = "🏃 SPEED"
SpeedSection.TextColor3 = Color3.fromRGB(255, 200, 0)
SpeedSection.TextSize = 10
SpeedSection.TextXAlignment = Enum.TextXAlignment.Left

SpeedLabel.Name = "SpeedLabel"
SpeedLabel.Parent = ContentFrame
SpeedLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
SpeedLabel.BorderSizePixel = 0
SpeedLabel.Position = UDim2.new(0, 8, 0, 103)
SpeedLabel.Size = UDim2.new(0, 60, 0, 18)
SpeedLabel.Font = Enum.Font.SourceSans
SpeedLabel.Text = "Speed:"
SpeedLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
SpeedLabel.TextSize = 10
SpeedLabel.TextXAlignment = Enum.TextXAlignment.Left

SpeedSlider.Name = "SpeedSlider"
SpeedSlider.Parent = ContentFrame
SpeedSlider.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
SpeedSlider.BorderSizePixel = 0
SpeedSlider.Position = UDim2.new(0, 72, 0, 103)
SpeedSlider.Size = UDim2.new(0, 70, 0, 18)
SpeedSlider.Font = Enum.Font.SourceSans
SpeedSlider.Text = "16"
SpeedSlider.TextColor3 = Color3.fromRGB(255, 200, 0)
SpeedSlider.TextSize = 10
SpeedSlider.PlaceholderText = "Max 200"

-- === JUMP SECTION ===
local JumpSection = Instance.new("TextLabel")
JumpSection.Name = "JumpSection"
JumpSection.Parent = ContentFrame
JumpSection.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
JumpSection.BorderSizePixel = 0
JumpSection.Position = UDim2.new(0, 5, 0, 130)
JumpSection.Size = UDim2.new(0, 190, 0, 18)
JumpSection.Font = Enum.Font.SourceSansBold
JumpSection.Text = "🦘 JUMP POWER"
JumpSection.TextColor3 = Color3.fromRGB(0, 150, 255)
JumpSection.TextSize = 10
JumpSection.TextXAlignment = Enum.TextXAlignment.Left

JumpLabel.Name = "JumpLabel"
JumpLabel.Parent = ContentFrame
JumpLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
JumpLabel.BorderSizePixel = 0
JumpLabel.Position = UDim2.new(0, 8, 0, 153)
JumpLabel.Size = UDim2.new(0, 60, 0, 18)
JumpLabel.Font = Enum.Font.SourceSans
JumpLabel.Text = "Jump:"
JumpLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
JumpLabel.TextSize = 10
JumpLabel.TextXAlignment = Enum.TextXAlignment.Left

JumpSlider.Name = "JumpSlider"
JumpSlider.Parent = ContentFrame
JumpSlider.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
JumpSlider.BorderSizePixel = 0
JumpSlider.Position = UDim2.new(0, 72, 0, 153)
JumpSlider.Size = UDim2.new(0, 70, 0, 18)
JumpSlider.Font = Enum.Font.SourceSans
JumpSlider.Text = "50"
JumpSlider.TextColor3 = Color3.fromRGB(0, 150, 255)
JumpSlider.TextSize = 10
JumpSlider.PlaceholderText = "Max 200"

-- === GRAVITY SECTION ===
local GravitySection = Instance.new("TextLabel")
GravitySection.Name = "GravitySection"
GravitySection.Parent = ContentFrame
GravitySection.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
GravitySection.BorderSizePixel = 0
GravitySection.Position = UDim2.new(0, 5, 0, 180)
GravitySection.Size = UDim2.new(0, 190, 0, 18)
GravitySection.Font = Enum.Font.SourceSansBold
GravitySection.Text = "🌍 GRAVITY"
GravitySection.TextColor3 = Color3.fromRGB(200, 100, 255)
GravitySection.TextSize = 10
GravitySection.TextXAlignment = Enum.TextXAlignment.Left

GravityLabel.Name = "GravityLabel"
GravityLabel.Parent = ContentFrame
GravityLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
GravityLabel.BorderSizePixel = 0
GravityLabel.Position = UDim2.new(0, 8, 0, 203)
GravityLabel.Size = UDim2.new(0, 60, 0, 18)
GravityLabel.Font = Enum.Font.SourceSans
GravityLabel.Text = "Gravity:"
GravityLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
GravityLabel.TextSize = 10
GravityLabel.TextXAlignment = Enum.TextXAlignment.Left

GravitySlider.Name = "GravitySlider"
GravitySlider.Parent = ContentFrame
GravitySlider.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
GravitySlider.BorderSizePixel = 0
GravitySlider.Position = UDim2.new(0, 72, 0, 203)
GravitySlider.Size = UDim2.new(0, 70, 0, 18)
GravitySlider.Font = Enum.Font.SourceSans
GravitySlider.Text = "196.2"
GravitySlider.TextColor3 = Color3.fromRGB(200, 100, 255)
GravitySlider.TextSize = 10
GravitySlider.PlaceholderText = "Max 200"

-- Buttons
ApplyButton.Name = "ApplyButton"
ApplyButton.Parent = ContentFrame
ApplyButton.BackgroundColor3 = Color3.fromRGB(0, 100, 200)
ApplyButton.BorderSizePixel = 0
ApplyButton.Position = UDim2.new(0, 8, 0, 235)
ApplyButton.Size = UDim2.new(0, 90, 0, 22)
ApplyButton.Font = Enum.Font.SourceSansBold
ApplyButton.Text = "✅ APPLY"
ApplyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyButton.TextSize = 10

ResetButton.Name = "ResetButton"
ResetButton.Parent = ContentFrame
ResetButton.BackgroundColor3 = Color3.fromRGB(200, 50, 0)
ResetButton.BorderSizePixel = 0
ResetButton.Position = UDim2.new(0, 102, 0, 235)
ResetButton.Size = UDim2.new(0, 90, 0, 22)
ResetButton.Font = Enum.Font.SourceSansBold
ResetButton.Text = "🔄 RESET"
ResetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetButton.TextSize = 10

StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = ContentFrame
StatusLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
StatusLabel.BorderSizePixel = 0
StatusLabel.Position = UDim2.new(0, 8, 0, 262)
StatusLabel.Size = UDim2.new(0, 184, 0, 18)
StatusLabel.Font = Enum.Font.SourceSans
StatusLabel.Text = "🟢 Ready | v2.1"
StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
StatusLabel.TextSize = 9

-- ============================================
-- LOGIC
-- ============================================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

getgenv().HeadSize = 3
getgenv().Disabled = false
getgenv().WalkSpeed = 16
getgenv().JumpPower = 50
getgenv().Gravity = 196.2
local isMinimized = false

local function protectSelfHitbox()
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

local function applyMovementSettings()
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

LocalPlayer.CharacterAdded:Connect(function(char)
    task.wait(0.3)
    protectSelfHitbox()
    applyMovementSettings()
    local h = char:WaitForChild("Humanoid", 5)
    if h then
        h.WalkSpeed = getgenv().WalkSpeed
        h.UseJumpPower = true
        h.JumpPower = getgenv().JumpPower
    end
end)

spawn(function()
    while true do
        if not isMinimized then
            for i = 0.8, 0.95, 0.05 do
                GlowEffect.BackgroundTransparency = i
                task.wait(0.1)
            end
            for i = 0.95, 0.8, -0.05 do
                GlowEffect.BackgroundTransparency = i
                task.wait(0.1)
            end
        else
            task.wait(0.5)
        end
    end
end)

local dragging, dragInput, dragStart, startPos = false, nil, nil, nil

local function updateDrag(input)
    local delta = input.Position - dragStart
    local newX = math.clamp(startPos.X.Offset + delta.X, -MainFrame.AbsoluteSize.X + 20, workspace.CurrentCamera.ViewportSize.X - 20)
    local newY = math.clamp(startPos.Y.Offset + delta.Y, -MainFrame.AbsoluteSize.Y + 20, workspace.CurrentCamera.ViewportSize.Y - 20)
    MainFrame.Position = UDim2.new(0, newX, 0, newY)
    GlowEffect.Position = UDim2.new(0, newX - 2, 0, newY - 2)
end

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateDrag(input)
    end
end)

local function toggleMinimize()
    isMinimized = not isMinimized
    if isMinimized then
        MainFrame:TweenSize(UDim2.new(0, 140, 0, 22), "Out", "Back", 0.4, true)
        GlowEffect:TweenSize(UDim2.new(0, 144, 0, 26), "Out", "Back", 0.4, true)
        MinimizeButton.Text = "+"
        Title.TextSize = 8
        MinimizeButton.Size = UDim2.new(0, 16, 0, 14)
        MinimizeButton.Position = UDim2.new(0, 118, 0, 4)
        Title.Size = UDim2.new(0, 100, 0, 22)
        Border.BackgroundColor3 = Color3.fromRGB(255, 100, 0)
    else
        MainFrame:TweenSize(UDim2.new(0, 200, 0, 315), "Out", "Back", 0.4, true)
        GlowEffect:TweenSize(UDim2.new(0, 204, 0, 319), "Out", "Back", 0.4, true)
        MinimizeButton.Text = "−"
        Title.TextSize = 9
        MinimizeButton.Size = UDim2.new(0, 20, 0, 18)
        MinimizeButton.Position = UDim2.new(0, 172, 0, 3)
        Title.Size = UDim2.new(0, 140, 0, 25)
        Border.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    end
end

MinimizeButton.MouseButton1Click:Connect(toggleMinimize)

local function updateHitbox(player)
    if getgenv().Disabled then return end
    if player == LocalPlayer then return end
    pcall(function()
        local c = player.Character
        if c then
            local h = c:FindFirstChild("HumanoidRootPart")
            if h then
                h.Size = Vector3.new(getgenv().HeadSize, getgenv().HeadSize, getgenv().HeadSize)
                h.Transparency = 0.85
                h.BrickColor = BrickColor.new("Institutional white")
                h.Material = "Glass"
                h.CanCollide = false
            end
        end
    end)
end

RunService.RenderStepped:Connect(function()
    protectSelfHitbox()
    if not getgenv().Disabled then
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                updateHitbox(p)
            end
        end
    end
    applyMovementSettings()
end)

Players.PlayerAdded:Connect(function(p)
    p.CharacterAdded:Connect(function()
        if not getgenv().Disabled then
            task.wait(0.3)
            updateHitbox(p)
        end
    end)
end)

ToggleButton.MouseButton1Click:Connect(function()
    getgenv().Disabled = not getgenv().Disabled
    if getgenv().Disabled then
        ToggleButton.Text = "💤 HITBOX OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(140, 0, 0)
        StatusLabel.Text = "🔴 Hitbox Disabled"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
        Border.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= LocalPlayer then
                pcall(function()
                    if p.Character then
                        local h = p.Character:FindFirstChild("HumanoidRootPart")
                        if h then
                            h.Size = Vector3.new(2, 2, 1)
                            h.Transparency = 1
                            h.Material = "Plastic"
                            h.CanCollide = true
                        end
                    end
                end)
            end
        end
    else
        ToggleButton.Text = "⚡ HITBOX ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 140, 0)
        StatusLabel.Text = "🟢 Hitbox Active"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
        Border.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
        GlowEffect.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
    end
end)

ApplyButton.MouseButton1Click:Connect(function()
    local s = tonumber(SpeedSlider.Text)
    local j = tonumber(JumpSlider.Text)
    local g = tonumber(GravitySlider.Text)
    if s and s >= 0 and s <= 200 then getgenv().WalkSpeed = s end
    if j and j >= 0 and j <= 200 then getgenv().JumpPower = j end
    if g and g >= 0 and g <= 200 then getgenv().Gravity = g end
    applyMovementSettings()
    StatusLabel.Text = "✅ S:" .. getgenv().WalkSpeed .. " J:" .. getgenv().JumpPower .. " G:" .. getgenv().Gravity
    StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
end)

ResetButton.MouseButton1Click:Connect(function()
    getgenv().WalkSpeed = 16
    getgenv().JumpPower = 50
    getgenv().Gravity = 196.2
    SpeedSlider.Text = "16"
    JumpSlider.Text = "50"
    GravitySlider.Text = "196.2"
    applyMovementSettings()
    StatusLabel.Text = "🔄 Reset to Default"
    StatusLabel.TextColor3 = Color3.fromRGB(255, 200, 0)
end)

SizeSlider.FocusLost:Connect(function(e)
    if e then
        local v = tonumber(SizeSlider.Text)
        if v and v >= 1 and v <= 30 then
            getgenv().HeadSize = v
        else
            SizeSlider.Text = tostring(getgenv().HeadSize)
        end
    end
end)

task.wait(0.5)
protectSelfHitbox()
applyMovementSettings()
print("✅ Quyết X DeepSeek v2.1 Loaded!")
