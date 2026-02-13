local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local ValidKey = "DARKFORGE-2025"

local function LoadMainScript()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "DARKFORGE-X COMPLETE",
        SubTitle = "Entity Notify & Solver",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, 
        Theme = "Amethyst",
        MinimizeKey = Enum.KeyCode.RightControl
    })

    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Lighting = game:GetService("Lighting")
    local LocalPlayer = Players.LocalPlayer
    local Options = Fluent.Options

    local Tabs = {
        Main = Window:AddTab({ Title = "Main", Icon = "home" }),
        Room50 = Window:AddTab({ Title = "Room 50", Icon = "book" }),
        Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
        Player = Window:AddTab({ Title = "Player", Icon = "user" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    -- [SYSTEM 1: ENTITY NOTIFICATION - ĐÃ KHÔI PHỤC]
    local function PlayAlertSound()
        local sound = Instance.new("Sound", Workspace)
        sound.SoundId = "rbxassetid://4590657391" -- Âm thanh báo động
        sound.Volume = 2
        sound:Play()
        game:GetService("Debris"):AddItem(sound, 3)
    end

    task.spawn(function()
        Workspace.ChildAdded:Connect(function(child)
            local EntityNames = {
                ["RushMoving"] = "RUSH ĐANG TỚI!",
                ["AmbushMoving"] = "AMBUSH! (TRỐN NHIỀU LẦN)",
                ["FigureRagdoll"] = "FIGURE ĐÃ XUẤT HIỆN",
                ["SeekMoving"] = "CHUẨN BỊ CHẠY (SEEK)",
                ["A60"] = "A-60 TỚI!",
                ["A120"] = "A-120 TỚI!"
            }
            
            if EntityNames[child.Name] then
                Fluent:Notify({
                    Title = "CẢNH BÁO NGUY HIỂM",
                    Content = EntityNames[child.Name],
                    SubContent = "Tìm chỗ trốn ngay!",
                    Duration = 8
                })
                PlayAlertSound()
            end
        end)
    end)

    -- [SYSTEM 2: LIBRARY SOLVER UI - ĐÃ KHÔI PHỤC]
    local LibraryGUI = Instance.new("ScreenGui")
    LibraryGUI.Name = "DarkForgeLib"
    LibraryGUI.Parent = CoreGui
    LibraryGUI.Enabled = false
    
    local LibFrame = Instance.new("Frame", LibraryGUI)
    LibFrame.Size = UDim2.fromOffset(200, 100)
    LibFrame.Position = UDim2.new(0.8, 0, 0.2, 0)
    LibFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    LibFrame.BackgroundTransparency = 0.5
    Instance.new("UICorner", LibFrame)
    
    local LibText = Instance.new("TextLabel", LibFrame)
    LibText.Size = UDim2.fromScale(1,1)
    LibText.BackgroundTransparency = 1
    LibText.TextColor3 = Color3.fromRGB(255, 255, 0)
    LibText.Text = "ROOM 50 SOLVER\nThu thập sách để giải mã..."
    LibText.TextSize = 14
    LibText.Font = Enum.Font.Code

    -- [HELPER FUNCTIONS]
    local function CreateESPObj(model, name, color)
        if not model then return end
        if not model:FindFirstChild("DF_Highlight") then
            local h = Instance.new("Highlight", model)
            h.Name = "DF_Highlight"
            h.FillColor = color
            h.OutlineColor = color
            h.FillTransparency = 0.5
            h.OutlineTransparency = 0
        end
        if not model:FindFirstChild("DF_Info") then
            local bg = Instance.new("BillboardGui", model)
            bg.Name = "DF_Info"
            bg.Size = UDim2.new(0, 200, 0, 50)
            bg.AlwaysOnTop = true
            bg.StudsOffset = Vector3.new(0, 2, 0)
            if model:IsA("Model") and model.PrimaryPart then bg.Adornee = model.PrimaryPart
            elseif model:FindFirstChild("HumanoidRootPart") then bg.Adornee = model.HumanoidRootPart end
            local lbl = Instance.new("TextLabel", bg)
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.BackgroundTransparency = 1
            lbl.TextColor3 = color
            lbl.TextStrokeTransparency = 0
            lbl.Font = Enum.Font.Code
            lbl.TextSize = 14
            lbl.Text = name
        end
    end

    local function UpdateESPText(model, baseText)
        if model:FindFirstChild("DF_Info") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local targetPos = Vector3.new(0,0,0)
            if model:IsA("Model") and model.PrimaryPart then targetPos = model.PrimaryPart.Position
            elseif model:IsA("BasePart") then targetPos = model.Position end
            local dist = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - targetPos).Magnitude)
            model.DF_Info.TextLabel.Text = string.format("%s [%dm]", baseText, dist)
        end
    end

    -- [UI TABS]
    Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Gold)", Default = true })
    Tabs.Main:AddToggle("MagnetItems", {Title = "Magnet Items", Default = false })
    Tabs.Main:AddSlider("MagnetRange", {Title = "Range", Default = 15, Min = 10, Max = 25, Rounding = 0})
    Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact", Default = true })

    Tabs.Room50:AddParagraph({Title = "Solver Tool", Content = "Bật Auto Solve để hiện vị trí sách và mã."})
    Tabs.Room50:AddToggle("AutoLibrary", {Title = "Auto Solve (ESP Books + GUI)", Default = true })
    Tabs.Room50:AddToggle("DeleteFigure", {Title = "Delete Figure (Client)", Default = false })
    Tabs.Room50:AddToggle("AutoHeartbeat", {Title = "Auto Heartbeat", Default = true })
    Tabs.Room50:AddToggle("FastCrouch", {Title = "Fast Crouch", Default = false })

    Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP", Default = true })
    Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP + Notify", Default = true })
    Tabs.Visuals:AddToggle("KeyESP", {Title = "Key/Lever ESP", Default = true })
    Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP", Default = true })
    Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright", Default = false })

    Tabs.Player:AddToggle("SpeedToggle", {Title = "Speed Boost", Default = false })
    Tabs.Player:AddSlider("SpeedVal", {Title = "WalkSpeed", Default = 20, Min = 16, Max = 24, Rounding = 0})
    Tabs.Player:AddToggle("NoclipToggle", {Title = "Noclip", Default = false })

    -- [LOGIC LOOPS]
    
    -- Library Logic
    task.spawn(function()
        while true do
            task.wait(1)
            if Options.AutoLibrary.Value then
                local GameData = ReplicatedStorage:WaitForChild("GameData")
                local LatestRoom = GameData:WaitForChild("LatestRoom")
                
                if LatestRoom.Value == 50 then
                    LibraryGUI.Enabled = true
                    -- Tăng cường ESP cho sách ở Room 50
                    if Workspace:FindFirstChild("CurrentRooms") then
                        for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                            if room.Name == "50" then
                                for _, asset in pairs(room:GetDescendants()) do
                                    if asset.Name == "LiveHintBook" then
                                        CreateESPObj(asset, "BOOK", Color3.fromRGB(255, 0, 255))
                                    end
                                    if asset.Name == "LibraryHintPaper" then
                                        CreateESPObj(asset, "PAPER", Color3.fromRGB(0, 255, 255))
                                    end
                                end
                            end
                        end
                    end
                else
                    LibraryGUI.Enabled = false
                end
            else
                LibraryGUI.Enabled = false
            end
        end
    end)

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
                                if asset.Name == "GoldPile" and asset.PrimaryPart then
                                    if (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                        local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                        if prompt then
                                            fireproximityprompt(prompt)
                                            local tween = TweenService:Create(asset.PrimaryPart, TweenInfo.new(0.15), {CFrame = Root.CFrame})
                                            tween:Play()
                                            prompt.Enabled = false
                                        end
                                    end
                                end
                                if Options.MagnetItems.Value and asset:IsA("Model") and asset.PrimaryPart then
                                    local Items = {"Lighter", "Lockpick", "Vitamins", "Bandage", "Battery", "Flashlight"}
                                    for _, item in ipairs(Items) do
                                        if asset.Name == item and (Root.Position - asset.PrimaryPart.Position).Magnitude <= Options.MagnetRange.Value then
                                            local prompt = asset:FindFirstChildWhichIsA("ProximityPrompt", true)
                                            if prompt then fireproximityprompt(prompt) end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    task.spawn(function()
        while true do
            task.wait(0.5)
            if Options.InstantE.Value then
                for _, p in pairs(Workspace:GetDescendants()) do
                    if p:IsA("ProximityPrompt") then p.HoldDuration = 0 end
                end
            end
        end
    end)

    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if Options.AutoHeartbeat.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
            if args[1] == false then return nil end
        end
        return oldNamecall(self, ...)
    end)

    task.spawn(function()
        while true do
            task.wait(1)
            if Options.DeleteFigure.Value then
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Name == "FigureRagdoll" then v:Destroy() end
                end
            end
        end
    end)

    RunService.RenderStepped:Connect(function()
        pcall(function()
            if Options.DoorESP.Value then
                local latest = ReplicatedStorage.GameData.LatestRoom.Value
                for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                    if tonumber(room.Name) == latest then
                        local door = room:FindFirstChild("Door")
                        if door then 
                            CreateESPObj(door, "DOOR", Color3.fromRGB(0, 255, 0)) 
                            UpdateESPText(door, "DOOR")
                        end
                    end
                end
            end
            if Options.EntESP.Value then
                for _, v in pairs(Workspace:GetChildren()) do
                    if string.find(v.Name, "Rush") or string.find(v.Name, "Ambush") or string.find(v.Name, "Figure") or string.find(v.Name, "Seek") then
                        CreateESPObj(v, v.Name, Color3.fromRGB(255, 0, 0))
                        UpdateESPText(v, v.Name)
                    end
                end
            end
            if Options.KeyESP.Value and Workspace:FindFirstChild("CurrentRooms") then
                for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                    for _, asset in pairs(room:GetDescendants()) do
                        if asset.Name == "KeyObtain" then 
                            CreateESPObj(asset, "KEY", Color3.fromRGB(255, 255, 0))
                            UpdateESPText(asset, "KEY")
                        elseif asset.Name == "LeverForGate" then 
                            CreateESPObj(asset, "LEVER", Color3.fromRGB(255, 255, 0))
                            UpdateESPText(asset, "LEVER")
                        end
                    end
                end
            end
            if Options.BookESP.Value and Workspace:FindFirstChild("CurrentRooms") then
                for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                    for _, asset in pairs(room:GetDescendants()) do
                        if asset.Name == "LiveHintBook" then
                             CreateESPObj(asset, "BOOK", Color3.fromRGB(138, 43, 226))
                             UpdateESPText(asset, "BOOK")
                        end
                    end
                end
            end
        end)

        if Options.Fullbright.Value then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.Brightness = 2
            Lighting.FogEnd = 10000
        else
            Lighting.Ambient = Color3.new(0, 0, 0)
            Lighting.Brightness = 1
        end
        if Options.SpeedToggle.Value and LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
            if hum then hum.WalkSpeed = Options.SpeedVal.Value end
        end
        if Options.FastCrouch.Value and LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
            if hum then 
                if hum.MoveDirection.Magnitude > 0 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.C) then
                        hum.WalkSpeed = 20 
                    end
                end
            end
        end
        if Options.NoclipToggle.Value and LocalPlayer.Character then
            for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
        end
    end)

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    Window:SelectTab(1)
    Fluent:Notify({Title = "DARKFORGE-X", Content = "ALL SYSTEMS RESTORED.", Duration = 5})
end

-- KEY SYSTEM
if CoreGui:FindFirstChild("DarkForgeKey") then CoreGui["DarkForgeKey"]:Destroy() end
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DarkForgeKey"
ScreenGui.Parent = CoreGui
ScreenGui.IgnoreGuiInset = true
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.fromOffset(400, 250)
MainFrame.Position = UDim2.fromScale(0.5, 0.5)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 25)
MainFrame.BorderSizePixel = 0
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(150, 0, 255)
Stroke.Thickness = 2
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "DARKFORGE GATEWAY"
Title.Size = UDim2.new(1, 0, 0.3, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
local InputBox = Instance.new("TextBox", MainFrame)
InputBox.Size = UDim2.new(0.8, 0, 0.2, 0)
InputBox.Position = UDim2.fromScale(0.5, 0.45)
InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.PlaceholderText = "Enter Key Here..."
InputBox.Text = ""
InputBox.Font = Enum.Font.Code
InputBox.TextSize = 16
Instance.new("UICorner", InputBox).CornerRadius = UDim.new(0, 6)
local EnterBtn = Instance.new("TextButton", MainFrame)
EnterBtn.Size = UDim2.new(0.5, 0, 0.2, 0)
EnterBtn.Position = UDim2.fromScale(0.5, 0.75)
EnterBtn.AnchorPoint = Vector2.new(0.5, 0.5)
EnterBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
EnterBtn.Text = "UNLOCK"
EnterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterBtn.Font = Enum.Font.GothamBold
EnterBtn.TextSize = 18
Instance.new("UICorner", EnterBtn).CornerRadius = UDim.new(0, 6)
EnterBtn.MouseButton1Click:Connect(function()
    if InputBox.Text == ValidKey then
        EnterBtn.Text = "ACCESS GRANTED"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
        task.wait(1)
        ScreenGui:Destroy()
        LoadMainScript()
    else
        EnterBtn.Text = "INVALID KEY"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        task.wait(1)
        EnterBtn.Text = "UNLOCK"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
    end
end)
