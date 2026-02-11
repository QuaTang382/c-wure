--[[
    DARKFORGE-X // DOORS OMEGA (FINAL)
    UI LIBRARY: FLUENT (MODERN & SMOOTH)
    FEATURES: FULL AUTO-PILOT SUITE
    AUTHOR: DARKFORGE-X
]]

-- [1] KHỞI TẠO FLUENT UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "DARKFORGE-X // DOORS OMEGA",
    SubTitle = "Shadow Core Active",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- Hiệu ứng mờ nền (Blur)
    Theme = "Dark", -- Chủ đề tối
    MinimizeKey = Enum.KeyCode.RightControl
})

-- [2] DỊCH VỤ & BIẾN
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local Options = Fluent.Options

-- State Variables
local State = {
    Vacuum = false,
    Heartbeat = false,
    Speed = false,
    Noclip = false,
    ESP = {
        Door = false,
        Entity = false,
        Item = false,
        Book = false
    }
}

-- [3] CORE FUNCTIONS (LOGIC HẠT NHÂN)

-- >> VACUUM ENGINE (HÚT VÀNG & ĐỒ)
local function ActivateVacuum()
    spawn(function()
        while State.Vacuum do
            task.wait(0.1)
            pcall(function()
                if not LocalPlayer.Character then return end
                local Root = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if not Root then return end

                if Workspace:FindFirstChild("CurrentRooms") then
                    for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                        for _, asset in pairs(room:GetDescendants()) do
                            -- Hút Vàng
                            if asset.Name == "GoldPile" then
                                if asset.PrimaryPart and (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
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
                            -- Hút Item (Thuốc, Bật lửa)
                            if Options.MagnetItems.Value and asset:IsA("Model") and (asset.Name == "Lighter" or asset.Name == "Lockpick" or asset.Name == "Vitamins" or asset.Name == "Bandage" or asset.Name == "Battery") then
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
    end)
end

-- >> AUTO HEARTBEAT (BẤT TỬ MINIGAME)
local function ActivateHeartbeat()
    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        
        if State.Heartbeat and method == "FireServer" and self.Name == "ClutchHeartbeat" then
            -- Chặn tín hiệu thua (args[1] == false)
            if args[1] == false then
                return nil 
            end
        end
        return oldNamecall(self, ...)
    end)
end

-- >> ESP SYSTEM (HỆ THỐNG THỊ GIÁC)
local function UpdateESP()
    -- True Door
    if State.ESP.Door then
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
    end

    -- Entity
    if State.ESP.Entity then
        for _, v in pairs(Workspace:GetChildren()) do
            if (v.Name == "RushMoving" or v.Name == "AmbushMoving" or v.Name == "FigureRagdoll" or v.Name == "SeekMoving") and not v:FindFirstChild("DF_Ent") then
                local h = Instance.new("Highlight", v)
                h.Name = "DF_Ent"
                h.FillColor = Color3.fromRGB(255, 0, 0)
                h.OutlineColor = Color3.fromRGB(255, 0, 0)
                
                -- Thông báo
                Fluent:Notify({
                    Title = "CẢNH BÁO!",
                    Content = v.Name .. " ĐANG XUẤT HIỆN!",
                    Duration = 5
                })
            end
        end
    end
end

RunService.RenderStepped:Connect(function()
    pcall(UpdateESP)
    -- Speed Override
    if State.Speed and LocalPlayer.Character then
        LocalPlayer.Character.Humanoid.WalkSpeed = Options.SpeedVal.Value
    end
    -- Noclip
    if State.Noclip and LocalPlayer.Character then
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

-- [4] XÂY DỰNG GIAO DIỆN (TABS & FEATURES)

local Tabs = {
    Main = Window:AddTab({ Title = "Automation", Icon = "bot" }),
    Visuals = Window:AddTab({ Title = "Visuals (ESP)", Icon = "eye" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- >> TAB MAIN
Tabs.Main:AddParagraph({
    Title = "Ultimate Looting",
    Content = "Hệ thống tự động hút tài nguyên và giải đố."
})

local ToggleVacuum = Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Hút Vàng)", Default = false })
ToggleVacuum:OnChanged(function()
    State.Vacuum = Options.VacuumToggle.Value
    if State.Vacuum then ActivateVacuum() end
end)

Tabs.Main:AddToggle("MagnetItems", {Title = "Hút cả Vật Phẩm (Items)", Default = false })

Tabs.Main:AddSlider("MagnetRange", {
    Title = "Phạm vi hút (Studs)",
    Description = "An toàn nhất ở mức 15-20.",
    Default = 15,
    Min = 10,
    Max = 25,
    Rounding = 0,
})

Tabs.Main:AddParagraph({ Title = "Survival", Content = "Hỗ trợ sinh tồn trong tủ và phòng 50." })

local ToggleHeart = Tabs.Main:AddToggle("HeartbeatToggle", {Title = "Auto Heartbeat (Bất Tử Tủ)", Default = false })
ToggleHeart:OnChanged(function()
    State.Heartbeat = Options.HeartbeatToggle.Value
    if State.Heartbeat then ActivateHeartbeat() end
end)

local ToggleInstant = Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact (Không giữ E)", Default = false })
ToggleInstant:OnChanged(function()
    spawn(function()
        while Options.InstantE.Value do
            wait(0.5)
            for _, p in pairs(Workspace:GetDescendants()) do
                if p:IsA("ProximityPrompt") then p.HoldDuration = 0 end
            end
        end
    end)
end

-- >> TAB VISUALS
local ToggleDoor = Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP (Cửa Đúng)", Default = true })
ToggleDoor:OnChanged(function() State.ESP.Door = Options.DoorESP.Value end)

local ToggleEnt = Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP + Notify (Quái)", Default = true })
ToggleEnt:OnChanged(function() State.ESP.Entity = Options.EntESP.Value end)

local ToggleBook = Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP (Room 50)", Default = false })
ToggleBook:OnChanged(function() 
    spawn(function()
        while Options.BookESP.Value do
            wait(1)
            if Workspace:FindFirstChild("CurrentRooms") then
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
            if not Options.BookESP.Value then break end
        end
    end)
end)

local ToggleBright = Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright (Sáng)", Default = false })
ToggleBright:OnChanged(function()
    if Options.Fullbright.Value then
        Lighting.Ambient = Color3.new(1, 1, 1)
        Lighting.Brightness = 2
        Lighting.FogEnd = 10000
    else
        Lighting.Ambient = Color3.new(0, 0, 0)
        Lighting.Brightness = 1
    end
end)

-- >> TAB PLAYER
local ToggleSpeed = Tabs.Player:AddToggle("SpeedToggle", {Title = "Enable Speed Boost", Default = false })
ToggleSpeed:OnChanged(function() State.Speed = Options.SpeedToggle.Value end)

Tabs.Player:AddSlider("SpeedVal", {
    Title = "WalkSpeed Value",
    Default = 20,
    Min = 16,
    Max = 24,
    Rounding = 0,
})

local ToggleNoclip = Tabs.Player:AddToggle("NoclipToggle", {Title = "Noclip (Xuyên Tường)", Default = false })
ToggleNoclip:OnChanged(function() State.Noclip = Options.NoclipToggle.Value end)

Tabs.Player:AddButton({
    Title = "God Reach (Gia tăng tầm với)",
    Description = "Tăng khoảng cách nhặt đồ lên 25 studs.",
    Callback = function()
        for _, v in pairs(Workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                v.MaxActivationDistance = 25
                v.RequiresLineOfSight = false
            end
        end
        Fluent:Notify({Title = "Success", Content = "Đã kích hoạt God Reach!", Duration = 3})
    end
})

-- >> SETTINGS
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:BuildInterfaceSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "DARKFORGE-X",
    Content = "OMEGA SYSTEM LOADED.\nSHADOW CORE ONLINE.",
    Duration = 8
})

-- Kết thúc
print("DARKFORGE-X // OMEGA LOADED")
