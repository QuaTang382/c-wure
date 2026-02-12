--[[
    DARKFORGE HUB // GLOBAL EDITION
    GAME: DOORS (ROBLOX)
    VERSION: 1.0.0 (PUBLIC RELEASE)
    AUTHOR: DARKFORGE-X
    FRAMEWORK: FLUENT UI
]]

-- [1] ANTI-ERROR SYSTEM (CHỐNG CRASH)
local function SafeCall(func)
    local success, result = pcall(func)
    if not success then warn("[DARKFORGE DEBUG]: " .. tostring(result)) end
    return success, result
end

-- [2] LOADING UI LIBRARY
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- [3] CREATE WINDOW
local Window = Fluent:CreateWindow({
    Title = "DarkForge Hub " .. Fluent.Version,
    SubTitle = "Doors Global Edition",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Darker", -- Theme tối chuyên nghiệp
    MinimizeKey = Enum.KeyCode.RightControl
})

-- [4] SERVICES & VARIABLES
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local ProximityPromptService = game:GetService("ProximityPromptService")

local LocalPlayer = Players.LocalPlayer
local Options = Fluent.Options

-- Notification Sound
local function PlaySound(id)
    local sound = Instance.new("Sound", Workspace)
    sound.SoundId = "rbxassetid://" .. tostring(id)
    sound.PlayOnRemove = true
    sound:Destroy()
end

-- [5] CORE FEATURES (LOGIC)

-- >> ENTITY NOTIFICATION (BÁO QUÁI CHUYÊN NGHIỆP)
task.spawn(function()
    Workspace.ChildAdded:Connect(function(child)
        local DangerList = {
            ["RushMoving"] = "RUSH IS COMING!",
            ["AmbushMoving"] = "AMBUSH IS COMING! (HIDE MULTIPLE TIMES)",
            ["FigureRagdoll"] = "FIGURE DETECTED!",
            ["SeekMoving"] = "PREPARE TO RUN (SEEK)!",
            ["A60"] = "A-60 IS COMING!",
            ["A120"] = "A-120 IS COMING!"
        }
        
        if DangerList[child.Name] then
            Fluent:Notify({
                Title = "ENTITY ALERT",
                Content = DangerList[child.Name],
                SubContent = "Hide immediately!",
                Duration = 5
            })
            PlaySound(4590657391) -- Âm thanh cảnh báo
        end
    end)
end)

-- >> VACUUM ENGINE (TỐI ƯU HÓA)
local function AutoVacuumLoop()
    while true do
        task.wait(0.1)
        if Options.VacuumToggle.Value then
            pcall(function()
                if not LocalPlayer.Character then return end
                local Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not Root then return end

                if Workspace:FindFirstChild("CurrentRooms") then
                    for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                        for _, asset in pairs(room:GetDescendants()) do
                            -- Xử lý Gold
                            if asset.Name == "GoldPile" and asset.PrimaryPart then
                                if (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                    local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                    if prompt and prompt.Enabled then
                                        fireproximityprompt(prompt)
                                        -- Visual: Hút vàng về người
                                        TweenService:Create(asset.PrimaryPart, TweenInfo.new(0.2), {CFrame = Root.CFrame}):Play()
                                        prompt.Enabled = false
                                    end
                                end
                            end
                            -- Xử lý Items
                            if Options.MagnetItems.Value and asset:IsA("Model") then
                                local Items = {"Lighter", "Lockpick", "Vitamins", "Bandage", "Battery", "Flashlight"}
                                if table.find(Items, asset.Name) and asset.PrimaryPart then
                                    if (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                        local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                        if prompt and prompt.Enabled then 
                                            fireproximityprompt(prompt) 
                                            prompt.Enabled = false
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end
task.spawn(AutoVacuumLoop)

-- >> HEARTBEAT BYPASS (BẤT TỬ MINIGAME)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if Options.HeartbeatToggle.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
        if args[1] == false then 
            return nil -- Chặn tín hiệu thua
        end
    end
    return oldNamecall(self, ...)
end)

-- >> VISUALS (ESP SYSTEM)
RunService.RenderStepped:Connect(function()
    -- True Door Logic
    if Options.DoorESP.Value then
        pcall(function()
            local latest = ReplicatedStorage.GameData.LatestRoom.Value
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                if tonumber(room.Name) == latest then
                    local door = room:FindFirstChild("Door")
                    if door then
                        if not door:FindFirstChild("DF_Highlight") then
                            local h = Instance.new("Highlight", door)
                            h.Name = "DF_Highlight"
                            h.FillColor = Color3.fromRGB(0, 255, 127) -- Spring Green
                            h.OutlineColor = Color3.fromRGB(255, 255, 255)
                            h.FillTransparency = 0.5
                        end
                    end
                end
            end
        end)
    end
    
    -- Entity ESP Logic
    if Options.EntESP.Value then
        pcall(function()
            for _, v in pairs(Workspace:GetChildren()) do
                if (v.Name == "RushMoving" or v.Name == "AmbushMoving" or v.Name == "FigureRagdoll" or v.Name == "SeekMoving") then
                    if not v:FindFirstChild("DF_EntHighlight") then
                        local h = Instance.new("Highlight", v)
                        h.Name = "DF_EntHighlight"
                        h.FillColor = Color3.fromRGB(255, 50, 50)
                        h.OutlineColor = Color3.fromRGB(255, 255, 255)
                    end
                end
            end
        end)
    end
    
    -- Key ESP Logic
    if Options.KeyESP.Value and Workspace:FindFirstChild("CurrentRooms") then
        pcall(function()
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                for _, asset in pairs(room:GetDescendants()) do
                    if asset.Name == "KeyObtain" or asset.Name == "LeverForGate" then
                        if not asset:FindFirstChild("DF_KeyHighlight") then
                            local h = Instance.new("Highlight", asset)
                            h.Name = "DF_KeyHighlight"
                            h.FillColor = Color3.fromRGB(255, 215, 0) -- Gold
                        end
                    end
                end
            end
        end)
    end
    
    -- Book ESP Logic
    if Options.BookESP.Value and Workspace:FindFirstChild("CurrentRooms") then
        pcall(function()
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                for _, asset in pairs(room:GetDescendants()) do
                    if asset.Name == "LiveHintBook" and not asset:FindFirstChild("DF_BookHighlight") then
                         local h = Instance.new("Highlight", asset)
                         h.Name = "DF_BookHighlight"
                         h.FillColor = Color3.fromRGB(138, 43, 226) -- Blue Violet
                    end
                end
            end
        end)
    end
    
    -- Fullbright
    if Options.Fullbright.Value then
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.Brightness = 2
        Lighting.FogEnd = 10000
    else
        Lighting.Ambient = Color3.new(0, 0, 0)
        Lighting.Brightness = 1
    end
    
    -- Speed Override
    if Options.SpeedToggle.Value and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = Options.SpeedVal.Value end
    end
end)

-- [6] UI TABS CONSTRUCTION

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Exploits = Window:AddTab({ Title = "Exploits", Icon = "swords" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- >> TAB: MAIN
Tabs.Main:AddParagraph({ Title = "Automation", Content = "Auto-collection & Survival tools" })

Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Magnet Gold)", Default = false })
Tabs.Main:AddToggle("MagnetItems", {Title = "Include Items (Lighter, etc.)", Default = false })
Tabs.Main:AddSlider("MagnetRange", {Title = "Magnet Range", Default = 15, Min = 5, Max = 25, Rounding = 0, Description = "Safe Limit: 15-20 Studs"})

Tabs.Main:AddParagraph({ Title = "Interact", Content = "Interaction Modifiers" })
Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact (No Hold)", Default = false })
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

-- >> TAB: VISUALS
Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP (Next Room)", Default = true })
Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP (Monsters)", Default = true })
Tabs.Visuals:AddToggle("KeyESP", {Title = "Key & Lever ESP", Default = true })
Tabs.Visuals:AddToggle("BookESP", {Title = "Library Book ESP (Room 50)", Default = false })
Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright (See in Dark)", Default = false })

-- >> TAB: EXPLOITS
Tabs.Exploits:AddParagraph({ Title = "Risk Zone", Content = "Powerful features. Use with caution." })

Tabs.Exploits:AddToggle("HeartbeatToggle", {Title = "Auto Heartbeat (God Mode in Closet)", Default = false, Description = "Impossible to die in minigame." })

Tabs.Exploits:AddToggle("SpeedToggle", {Title = "Speed Boost", Default = false })
Tabs.Exploits:AddSlider("SpeedVal", {Title = "WalkSpeed", Default = 20, Min = 16, Max = 24, Rounding = 0 })

Tabs.Exploits:AddButton({
    Title = "God Reach (Reach through walls)",
    Description = "Increases interaction range to 25 studs.",
    Callback = function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.MaxActivationDistance = 25
                v.RequiresLineOfSight = false
            end
        end
        Fluent:Notify({Title = "Success", Content = "God Reach Activated!", Duration = 3})
    end
})

Tabs.Exploits:AddToggle("NoclipToggle", {Title = "Noclip (Walk through doors)", Default = false })
RunService.Stepped:Connect(function()
    if Options.NoclipToggle.Value and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

-- [7] SETTINGS & INITIALIZATION
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
Window:SelectTab(1)

-- Intro
Fluent:Notify({
    Title = "DarkForge Hub",
    Content = "Global Protocol Initiated.\nWelcome, User.",
    Duration = 8
})
