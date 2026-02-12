--[[
    DARKFORGE HUB // UNIVERSAL EDITION
    SUPPORT: HOTEL, THE MINES (FLOOR 2), THE ROOMS
    VERSION: 2.0.0 (WORLD CLASS)
    AUTHOR: DARKFORGE-X
]]

-- [1] SERVICES & UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "DarkForge Hub: Universal",
    SubTitle = "Hotel | Mines | Rooms",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Floor2 = Window:AddTab({ Title = "The Mines", Icon = "pickaxe" }), -- TAB MỚI
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Exploits = Window:AddTab({ Title = "Exploits", Icon = "swords" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local ProximityPromptService = game:GetService("ProximityPromptService")
local LocalPlayer = Players.LocalPlayer
local Options = Fluent.Options

-- [2] FLOOR 2 SPECIFIC LOGIC (HẦM MỎ)
local function UpdateFloor2ESP()
    pcall(function()
        for _, v in pairs(Workspace:GetDescendants()) do
            -- Giggle (Quái cười trên trần)
            if v.Name == "GiggleCeiling" then
                if not v:FindFirstChild("DF_Giggle") then
                    local h = Instance.new("Highlight", v)
                    h.Name = "DF_Giggle"; h.FillColor = Color3.fromRGB(255, 0, 0); h.OutlineColor = Color3.fromRGB(255,255,255)
                    Fluent:Notify({Title = "WARNING", Content = "Giggle Above!", Duration = 3})
                end
            end
            -- Glowstick (Que phát sáng)
            if v.Name == "Glowstick" then
                 if not v:FindFirstChild("DF_Glow") then
                    local h = Instance.new("Highlight", v)
                    h.Name = "DF_Glow"; h.FillColor = Color3.fromRGB(0, 255, 255)
                end
            end
            -- Grumble (Boss Mê Cung)
            if v.Name == "GrumbleRig" then
                if not v:FindFirstChild("DF_Boss") then
                    local h = Instance.new("Highlight", v)
                    h.Name = "DF_Boss"; h.FillColor = Color3.fromRGB(139, 0, 0) -- Đỏ đậm
                end
            end
            -- Breaker Switches (Cầu dao điện)
            if v.Name == "BreakerSwitch" then
                if not v:FindFirstChild("DF_Switch") then
                    local h = Instance.new("Highlight", v)
                    h.Name = "DF_Switch"; h.FillColor = Color3.fromRGB(255, 255, 0)
                end
            end
        end
    end)
end

-- [3] THE ROOMS LOGIC (A-1000)
local function AntiA90Logic()
    -- Logic: Khi A-90 xuất hiện (GUI đỏ hoặc âm thanh), dừng nhân vật ngay lập tức
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
    if PlayerGui:FindFirstChild("MainUI") and PlayerGui.MainUI:FindFirstChild("Initiator") then
        if PlayerGui.MainUI.Initiator.Visible then
            -- A-90 Detected!
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.Anchored = true -- Khóa cứng nhân vật
                task.wait(3) -- Đợi nó đi qua
                LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end
        end
    end
end

-- [4] GENERAL LOGIC (HOTEL + SHARED)
-- (Tái sử dụng logic ổn định từ bản V10)

-- Vacuum
task.spawn(function()
    while true do
        task.wait(0.1)
        if Options.VacuumToggle.Value then
            pcall(function()
                if not LocalPlayer.Character then return end
                local Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if Workspace:FindFirstChild("CurrentRooms") then
                    for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                        for _, asset in pairs(room:GetDescendants()) do
                            if (asset.Name == "GoldPile" or (Options.MagnetItems.Value and asset:IsA("Model") and asset:FindFirstChild("Handle"))) then
                                if asset.PrimaryPart and (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                    local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                    if prompt then fireproximityprompt(prompt) end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

-- Heartbeat Bypass
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if Options.HeartbeatToggle.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
        if args[1] == false then return nil end
    end
    return oldNamecall(self, ...)
end)

-- No Jumpscare Logic
task.spawn(function()
    while true do
        task.wait(1)
        if Options.NoJumpscare.Value then
            pcall(function()
                local gui = LocalPlayer.PlayerGui:FindFirstChild("MainUI")
                if gui and gui:FindFirstChild("Jumpscare") then
                    gui.Jumpscare:Destroy() -- Xóa GUI hù dọa
                end
            end)
        end
    end
end)

-- Render Loop
RunService.RenderStepped:Connect(function()
    -- Floor 2 Check
    if Options.Floor2ESP.Value then UpdateFloor2ESP() end
    
    -- A-90 Check
    if Options.AntiA90.Value then AntiA90Logic() end

    -- Normal ESP
    if Options.DoorESP.Value then
        pcall(function()
            local latest = ReplicatedStorage.GameData.LatestRoom.Value
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                if tonumber(room.Name) == latest then
                    local door = room:FindFirstChild("Door")
                    if door and not door:FindFirstChild("DF_Door") then
                        local h = Instance.new("Highlight", door)
                        h.Name = "DF_Door"; h.FillColor = Color3.fromRGB(0, 255, 0)
                    end
                end
            end
        end)
    end
    
    -- Entity ESP (Shared)
    if Options.EntESP.Value then
        for _, v in pairs(Workspace:GetChildren()) do
            if (string.find(v.Name, "Rush") or string.find(v.Name, "Ambush") or string.find(v.Name, "Figure") or string.find(v.Name, "Seek") or string.find(v.Name, "A60") or string.find(v.Name, "A120")) and not v:FindFirstChild("DF_Ent") then
                local h = Instance.new("Highlight", v)
                h.Name = "DF_Ent"; h.FillColor = Color3.fromRGB(255, 0, 0)
                Fluent:Notify({Title = "ENTITY DETECTED", Content = v.Name, Duration = 5})
            end
        end
    end

    -- Fullbright
    if Options.Fullbright.Value then
        Lighting.Ambient = Color3.new(1,1,1); Lighting.Brightness = 2
    else
        Lighting.Ambient = Color3.new(0,0,0); Lighting.Brightness = 1
    end
    
    -- Speed
    if Options.SpeedToggle.Value and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = Options.SpeedVal.Value end
    end
end)

-- [5] UI SETUP

-- TAB: MAIN
Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Gold)", Default = true })
Tabs.Main:AddToggle("MagnetItems", {Title = "Magnet Items", Default = false })
Tabs.Main:AddSlider("MagnetRange", {Title = "Range", Default = 15, Min = 10, Max = 25, Rounding = 0})
Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact", Default = false })
task.spawn(function()
    while true do
        task.wait(1)
        if Options.InstantE.Value then
            for _, p in pairs(Workspace:GetDescendants()) do
                if p:IsA("ProximityPrompt") then p.HoldDuration = 0 end
            end
        end
    end
end)

-- TAB: THE MINES (NEW)
Tabs.Floor2:AddParagraph({Title = "The Mines Support", Content = "Features for Floor 2."})
Tabs.Floor2:AddToggle("Floor2ESP", {Title = "Mines ESP (Giggles, Glowsticks)", Default = false })
Tabs.Floor2:AddButton({
    Title = "Pack of Bandages (Hồi Máu)",
    Description = "Spam mua hồi máu (cần ở gần Shop Jeff).",
    Callback = function()
        ReplicatedStorage.Bricks.Shop:FireServer("BandagePack")
    end
})

-- TAB: VISUALS
Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP", Default = true })
Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP (All Floors)", Default = true })
Tabs.Visuals:AddToggle("KeyESP", {Title = "Key/Lever ESP", Default = true })
Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP", Default = false })
Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright", Default = false })
Tabs.Visuals:AddToggle("NoJumpscare", {Title = "Remove Jumpscares", Default = false })

-- TAB: EXPLOITS
Tabs.Exploits:AddToggle("HeartbeatToggle", {Title = "Auto Heartbeat (God Mode)", Default = false })
Tabs.Exploits:AddToggle("AntiA90", {Title = "Anti-A90 (Auto Stop)", Default = false, Description = "For The Rooms." })
Tabs.Exploits:AddToggle("SpeedToggle", {Title = "Speed Boost", Default = false })
Tabs.Exploits:AddSlider("SpeedVal", {Title = "WalkSpeed", Default = 20, Min = 16, Max = 24, Rounding = 0})
Tabs.Exploits:AddToggle("NoclipToggle", {Title = "Noclip", Default = false })
RunService.Stepped:Connect(function()
    if Options.NoclipToggle.Value and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

Window:SelectTab(1)
Fluent:Notify({Title = "DarkForge Hub", Content = "Universal Edition Loaded.\nReady for Floor 1, 2 & Rooms.", Duration = 5})
