--[[
    DARKFORGE-X // DOORS OMEGA (PATCHED)
    STATUS: SYNTAX FIXED
    LIBRARY: FLUENT UI
    AUTHOR: DARKFORGE-X
]]

-- [1] KHỞI TẠO FLUENT UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "DARKFORGE-X // OMEGA",
    SubTitle = "Shadow Core Patched",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- [2] DỊCH VỤ
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Options = Fluent.Options

-- [3] XÂY DỰNG GIAO DIỆN (UI CONSTRUCTION)
-- Tôi tách biệt phần UI ra khỏi Logic để tránh lỗi cú pháp

local Tabs = {
    Main = Window:AddTab({ Title = "Automation", Icon = "bot" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- >> TAB MAIN
Tabs.Main:AddParagraph({
    Title = "Loot System",
    Content = "Hệ thống tự động hút tài nguyên."
})

Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Hút Vàng)", Default = false })
Tabs.Main:AddToggle("MagnetItems", {Title = "Hút Vật Phẩm (Items)", Default = false })

Tabs.Main:AddSlider("MagnetRange", {
    Title = "Phạm vi hút (Studs)",
    Description = "An toàn: 15-20",
    Default = 15,
    Min = 10,
    Max = 25,
    Rounding = 0,
})

Tabs.Main:AddParagraph({
    Title = "Survival",
    Content = "Hỗ trợ sinh tồn (Room 50/100)."
})

Tabs.Main:AddToggle("HeartbeatToggle", {Title = "Auto Heartbeat (Bất Tử Tủ)", Default = false })
Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact (Không giữ E)", Default = false })

-- >> TAB VISUALS
Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP (Cửa Đúng)", Default = true })
Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP + Notify (Quái)", Default = true })
Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP (Room 50)", Default = false })
Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright (Sáng)", Default = false })

-- >> TAB PLAYER
Tabs.Player:AddToggle("SpeedToggle", {Title = "Enable Speed Boost", Default = false })
Tabs.Player:AddSlider("SpeedVal", {
    Title = "WalkSpeed Value",
    Default = 20,
    Min = 16,
    Max = 24,
    Rounding = 0,
})

Tabs.Player:AddToggle("NoclipToggle", {Title = "Noclip (Xuyên Tường)", Default = false })

Tabs.Player:AddButton({
    Title = "God Reach (Gia tăng tầm với)",
    Description = "Tăng tầm nhặt đồ lên 25 studs.",
    Callback = function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.MaxActivationDistance = 25
                v.RequiresLineOfSight = false
            end
        end
        Fluent:Notify({Title = "Success", Content = "God Reach Active!", Duration = 3})
    end
})

-- [4] LOGIC LOOPS (VÒNG LẶP XỬ LÝ)
-- Logic được tách riêng để đảm bảo an toàn

-- >> VACUUM LOGIC
task.spawn(function()
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
                            -- Hút Vàng
                            if asset.Name == "GoldPile" and asset.PrimaryPart then
                                if (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                    local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                    if prompt then
                                        fireproximityprompt(prompt)
                                        -- Visual Effect
                                        local tween = TweenService:Create(asset.PrimaryPart, TweenInfo.new(0.15), {CFrame = Root.CFrame})
                                        tween:Play()
                                        prompt.Enabled = false
                                    end
                                end
                            end
                            -- Hút Item
                            if Options.MagnetItems.Value and asset:IsA("Model") and (asset.Name == "Lighter" or asset.Name == "Lockpick" or asset.Name == "Vitamins" or asset.Name == "Bandage") then
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

-- >> INSTANT INTERACT LOGIC
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

-- >> HEARTBEAT LOGIC
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if Options.HeartbeatToggle.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
        if args[1] == false then return nil end
    end
    return oldNamecall(self, ...)
end)

-- >> VISUALS & PLAYER LOGIC
RunService.RenderStepped:Connect(function()
    -- True Door
    if Options.DoorESP.Value then
        pcall(function()
            local latest = ReplicatedStorage.GameData.LatestRoom.Value
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                if tonumber(room.Name) == latest then
                    local door = room:FindFirstChild("Door")
                    if door and not door:FindFirstChild("DF_Door") then
                        local h = Instance.new("Highlight", door)
                        h.Name = "DF_Door"
                        h.FillColor = Color3.fromRGB(0, 255, 0)
                        h.OutlineColor = Color3.fromRGB(255, 255, 255)
                    end
                end
            end
        end)
    end

    -- Entity ESP
    if Options.EntESP.Value then
        pcall(function()
            for _, v in pairs(Workspace:GetChildren()) do
                if (v.Name == "RushMoving" or v.Name == "AmbushMoving" or v.Name == "FigureRagdoll" or v.Name == "SeekMoving") and not v:FindFirstChild("DF_Ent") then
                    local h = Instance.new("Highlight", v)
                    h.Name = "DF_Ent"
                    h.FillColor = Color3.fromRGB(255, 0, 0)
                    h.OutlineColor = Color3.fromRGB(255, 0, 0)
                    Fluent:Notify({Title = "DANGER!", Content = v.Name .. " SPAWNED!", Duration = 5})
                end
            end
        end)
    end

    -- Book ESP
    if Options.BookESP.Value and Workspace:FindFirstChild("CurrentRooms") then
        for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
            for _, asset in pairs(room:GetDescendants()) do
                if asset.Name == "LiveHintBook" and not asset:FindFirstChild("DF_Book") then
                    local h = Instance.new("Highlight", asset)
                    h.Name = "DF_Book"
                    h.FillColor = Color3.fromRGB(255, 0, 255)
                end
            end
        end
    end

    -- Speed
    if Options.SpeedToggle.Value and LocalPlayer.Character then
        local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
        if hum then hum.WalkSpeed = Options.SpeedVal.Value end
    end

    -- Noclip
    if Options.NoclipToggle.Value and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
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
end)

-- [5] SETTINGS
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:BuildInterfaceSection(Tabs.Settings)

Window:SelectTab(1)
Fluent:Notify({Title = "DARKFORGE-X", Content = "SYSTEM PATCHED & READY.", Duration = 5})
