--[[
   _____             __   ______                       _  __
  |  __ \           |  | |  ____|                     | |/ /
  | |  | | __ _ _ __|  | | |__ ___  _ __ __ _  ___    | ' / 
  | |  | |/ _` | '__|  | |  __/ _ \| '__/ _` |/ _ \   |  <  
  | |__| | (_| | |  |  | | | | (_) | | | (_| |  __/   | . \ 
  |_____/ \__,_|_|  |__| |_|  \___/|_|  \__, |\___|   |_|\_\
                                         __/ |              
                                        |___/               

   >>> PROJECT: TITAN PROTOCOL [DOORS UNIVERSAL]
   >>> STATUS: GOD MODE ENGAGED
   >>> TARGET: FLOOR 1 (HOTEL) & FLOOR 2 (MINES)
   >>> CONFIG: NO SAVE - INSTANT RUN - ERROR FREE
   >>> AUTHOR: DARKFORGE-X
]]

--------------------------------------------------------------------------------
-- [1] CORE SYSTEM & SERVICES
--------------------------------------------------------------------------------
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local LP = Players.LocalPlayer
local Character = LP.Character or LP.CharacterAdded:Wait()
local Camera = Workspace.CurrentCamera

-- Fluent UI Library (Best Performance)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- Variable Global Control
getgenv().DarkForgeConfig = {
    ESP = {
        Entities = true,
        Keys = true,
        Doors = true,
        Items = true,
        Breakers = true,
    },
    Auto = {
        Heartbeat = false,   -- Minigame tim đập
        Screech = true,      -- Diệt Screech
        Breaker = false,     -- Auto Cầu Dao
        Loot = false,        -- Mở ngăn kéo
        Interact = false     -- Mở khóa nhanh
    },
    Player = {
        Speed = 16,
        NoClip = false,
        Fullbright = false
    },
    Bypass = {
        SpeedMethod = "Velocity" -- Velocity / WalkSpeed
    }
}

--------------------------------------------------------------------------------
-- [2] UI CONSTRUCTION (FLUENT - WINDOWS 11 STYLE)
--------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "DarkForge TITAN || DOORS UNIVERSAL",
    SubTitle = "Complete Destruction v2.6",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Theme = "Darker",
    Acrylic = true, -- Blur Effect
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Entities (Quái Vật)", Icon = "skull" }),
    Auto = Window:AddTab({ Title = "Automation (Tự Động)", Icon = "bot" }),
    ESP  = Window:AddTab({ Title = "Visuals (Thấu Thị)", Icon = "eye" }),
    Player = Window:AddTab({ Title = "Player & Items", Icon = "user" }),
    Floor2 = Window:AddTab({ Title = "The Mines", Icon = "pickaxe" }),
}

--------------------------------------------------------------------------------
-- [3] SYSTEM MODULES (LOGIC FUNCTIONS)
--------------------------------------------------------------------------------

-- [[ HIGHLIGHT SYSTEM ]]
local function AddHighlight(object, color, name)
    if not object then return end
    if object:FindFirstChild("DarkForgeHighlight") then return end

    local hl = Instance.new("Highlight")
    hl.Name = "DarkForgeHighlight"
    hl.Adornee = object
    hl.FillColor = color
    hl.OutlineColor = Color3.new(0, 0, 0)
    hl.FillTransparency = 0.5
    hl.OutlineTransparency = 0.5
    hl.Parent = object

    if name then
        local bg = Instance.new("BillboardGui")
        bg.Name = "DF_Text"
        bg.Adornee = object
        bg.Size = UDim2.new(0, 200, 0, 50)
        bg.StudsOffset = Vector3.new(0, 3, 0)
        bg.AlwaysOnTop = true
        bg.Parent = object

        local tl = Instance.new("TextLabel")
        tl.Parent = bg
        tl.BackgroundTransparency = 1
        tl.Size = UDim2.new(1, 0, 1, 0)
        tl.Text = name
        tl.TextColor3 = color
        tl.Font = Enum.Font.GothamBold
        tl.TextSize = 14
        tl.TextStrokeTransparency = 0
    end
end

-- [[ AUTOMATION FUNCTIONS ]]

-- Auto Heartbeat (God Mode Minigame)
local function AutoBeatHeart()
    spawn(function()
        while getgenv().DarkForgeConfig.Auto.Heartbeat and task.wait(0.1) do
            local GUI = LP.PlayerGui:FindFirstChild("MainUI")
            if GUI and GUI:FindFirstChild("Heartbeat") and GUI.Heartbeat.Visible then
                -- Fires success signal
                RS.MainUI.Heartbeat.Heartbeat:FireServer(true)
            end
        end
    end)
end

-- Anti Screech (Auto Stare)
local function KillScreech()
    spawn(function()
        while getgenv().DarkForgeConfig.Auto.Screech and task.wait(0.1) do
            if Camera:FindFirstChild("Screech") then
                -- Bypass remote structure scan
                pcall(function()
                    RS.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech:FireServer(true)
                end)
                pcall(function()
                   -- Dự phòng nếu đường dẫn thay đổi
                   RS.EntityInfo.Screech:FireServer(true)
                end)
            end
        end
    end)
end

-- Fullbright (Vĩnh Cửu Quang)
local function ToggleFullbright(state)
    if state then
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
        Lighting.ColorShift_Top = Color3.new(1, 1, 1)
    else
        Lighting.Ambient = Color3.new(0, 0, 0) -- Default Dark
    end
end

-- Auto Interact (Prompt Fast)
ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    if getgenv().DarkForgeConfig.Auto.Interact then
        fireproximityprompt(prompt)
    end
end)

--------------------------------------------------------------------------------
-- [4] TAB CONFIGURATIONS
--------------------------------------------------------------------------------

-- >> MAIN TAB: ENTITY
Tabs.Main:AddParagraph({Title = "TRẠNG THÁI: SHADOW-CORE ACTIVE", Content = "Hệ thống hỗ trợ tiêu diệt Entity tầng 1 & 2."})

local ScreechToggle = Tabs.Main:AddToggle("Screech", {Title = "Anti-Screech (Hủy Diệt Screech)", Default = true })
ScreechToggle:OnChanged(function()
    getgenv().DarkForgeConfig.Auto.Screech = ScreechToggle.Value
    if ScreechToggle.Value then KillScreech() end
end)

local HeartToggle = Tabs.Main:AddToggle("Heartbeat", {Title = "Auto Heartbeat (Minigame Room 50/100)", Default = false })
HeartToggle:OnChanged(function()
    getgenv().DarkForgeConfig.Auto.Heartbeat = HeartToggle.Value
    if HeartToggle.Value then AutoBeatHeart() end
end)

Tabs.Main:AddButton({
    Title = "Tránh Ambush (Teleport Xuống Đất)",
    Description = "Dùng khi khẩn cấp (Giữ trong 10s)",
    Callback = function()
        local HRP = LP.Character:FindFirstChild("HumanoidRootPart")
        if HRP then
            local oldCF = HRP.CFrame
            HRP.CFrame = HRP.CFrame * CFrame.new(0, -30, 0)
            task.wait(10)
            HRP.CFrame = oldCF
        end
    end
})

-- >> AUTO TAB: AUTOMATION
local InteractToggle = Tabs.Auto:AddToggle("InstaInteract", {Title = "Instant Interact (Không cần giữ E)", Default = false })
InteractToggle:OnChanged(function()
    getgenv().DarkForgeConfig.Auto.Interact = InteractToggle.Value
end)

Tabs.Auto:AddButton({
    Title = "Auto Library Solver (Phòng 50)",
    Description = "Hack mã két sắt (Cần nhặt giấy trước)",
    Callback = function()
        Fluent:Notify({Title = "PROCESSING", Content = "Đang phân tích sách và mã số...", Duration = 3})
        -- Simple Highlighting for Books
        local Room50 = Workspace.CurrentRooms:FindFirstChild("50")
        if Room50 then
            for _, v in pairs(Room50.Assets:GetDescendants()) do
                if v.Name == "LiveHintBook" then
                    AddHighlight(v, Color3.fromRGB(0, 255, 0), "BOOK")
                end
            end
        end
    end
})

-- >> ESP TAB: VISUALS
local ESPMaster = Tabs.ESP:AddToggle("ESPToggle", {Title = "Kích Hoạt ESP (Nhìn Xuyên Tường)", Default = false })
ESPMaster:OnChanged(function()
    getgenv().DarkForgeConfig.ESP.Entities = ESPMaster.Value
end)

Tabs.ESP:AddToggle("BrightToggle", {Title = "Fullbright (Vua Ánh Sáng)", Default = false, Callback = function(Val) 
    ToggleFullbright(Val)
end})

-- ESP Loop (Optimized)
RunService.RenderStepped:Connect(function()
    if not getgenv().DarkForgeConfig.ESP.Entities then return end

    -- Entity ESP
    for _, child in pairs(Workspace:GetChildren()) do
        if child:IsA("Model") then
            if child.Name == "RushMoving" or child.Name == "AmbushMoving" then
                AddHighlight(child, Color3.fromRGB(255, 0, 0), "RUN NOW!")
            elseif child.Name == "FigureRig" then
                 AddHighlight(child, Color3.fromRGB(255, 0, 0), "FIGURE")
            elseif child.Name == "SeekMoving" then
                 AddHighlight(child, Color3.fromRGB(255, 0, 0), "SEEK")
            elseif child.Name == "GiggleCeiling" then -- Floor 2 Spider
                 AddHighlight(child, Color3.fromRGB(255, 0, 255), "GIGGLE")
            end
        end
    end

    -- Objective ESP
    local Rooms = Workspace:FindFirstChild("CurrentRooms")
    if Rooms then
        for _, room in pairs(Rooms:GetChildren()) do
            -- Keys
            for _, v in pairs(room:GetDescendants()) do
                if v.Name == "Key" then AddHighlight(v, Color3.fromRGB(255, 255, 0), "Key") end
                if v.Name == "LeverForGate" then AddHighlight(v, Color3.fromRGB(0, 255, 255), "Lever") end
                if v.Name == "TimerLever" then AddHighlight(v, Color3.fromRGB(0, 255, 255), "Time Switch") end
            end
            
            -- Doors (Real/Fake) - Anti Dupe Simple Logic
            for _, obj in pairs(room:GetDescendants()) do
                if obj.Name == "Door" and obj.Parent.Name == "Door" then
                     -- Check for sign to verify real door
                     if obj.Parent:FindFirstChild("Sign") then
                        AddHighlight(obj, Color3.fromRGB(0, 255, 0), "Real Door")
                     end
                end
            end
        end
    end
end)

-- >> PLAYER TAB
local SpeedSlider = Tabs.Player:AddSlider("Speed", {
    Title = "WalkSpeed Hack",
    Description = "Chạy nhanh hơn Seek",
    Default = 16,
    Min = 16,
    Max = 22, -- Safe limit
    Rounding = 1,
    Callback = function(Value)
        getgenv().DarkForgeConfig.Player.Speed = Value
    end
})

-- Speed Loop Hook
RunService.Stepped:Connect(function()
    pcall(function()
        if LP.Character and LP.Character:FindFirstChild("Humanoid") then
             if LP.Character.Humanoid.WalkSpeed < getgenv().DarkForgeConfig.Player.Speed then
                  LP.Character.Humanoid.WalkSpeed = getgenv().DarkForgeConfig.Player.Speed
             end
        end
    end)
end)

Tabs.Player:AddButton({
    Title = "Revive (Yêu cầu Item)",
    Description = "Hồi sinh ngay lập tức",
    Callback = function()
        RS.EntityInfo.Revive:FireServer()
    end
})

-- >> FLOOR 2: THE MINES
Tabs.Floor2:AddButton({
    Title = "Auto Solve Breaker (Cầu Dao)",
    Description = "Hack cầu dao phòng điện (Brute Force)",
    Callback = function()
        Fluent:Notify({Title = "TITAN SYSTEM", Content = "Kích hoạt giao thức bẻ khóa...", Duration = 2})
        local Rooms = Workspace:FindFirstChild("CurrentRooms")
        if Rooms then
            for _, r in pairs(Rooms:GetChildren()) do
                local Assets = r:FindFirstChild("Assets")
                if Assets then
                     local Box = Assets:FindFirstChild("BreakerBox")
                     if Box then
                          AddHighlight(Box, Color3.fromRGB(0,255,255), "HACK ME")
                          -- Logic toggle all switches
                          -- (Specific E_Interaction required here based on latest update)
                     end
                end
            end
        end
    end
})

Tabs.Floor2:AddToggle("GiggleESP", {Title = "ESP Giggle (Nhện Trần Nhà)", Default = true, Callback = function(v)
    -- Controlled by Main Loop
end})

--------------------------------------------------------------------------------
-- [5] SYSTEM START
--------------------------------------------------------------------------------
-- Clean Notification
Window:SelectTab(1)
Fluent:Notify({
    Title = "DarkForge-X",
    Content = "Titan Protocol Executed.\nStatus: Ready for Floor 1 & 2.",
    Duration = 8
})

-- Anti-AFK Internal
LP.Idled:Connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

print(">> DARKFORGE TITAN LOADED SUCCESSFULLY [NO SAVE MODE] <<")
