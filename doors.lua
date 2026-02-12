--[[
    DARKFORGE-X // GATEKEEPER SYSTEM
    PROTECTION LEVEL: SIMPLE KEY AUTH
    TARGET SCRIPT: NEON-GOD V11 (DISTANCE ESP ADDED)
]]

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- [1] CẤU HÌNH KEY (SỬA KEY Ở ĐÂY)
local ValidKey = "DARKFORGE-2025" 

-- [2] HÀM CHẠY SCRIPT CHÍNH (UPDATE V11)
local function LoadMainScript()
    -- !!! BẮT ĐẦU CODE NEON-GOD V11 !!! --
    
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "DARKFORGE-X // NEON GOD V11",
        SubTitle = "Distance ESP Active",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true, 
        Theme = "Amethyst", 
        MinimizeKey = Enum.KeyCode.RightControl
    })

    -- DỊCH VỤ
    local Workspace = game:GetService("Workspace")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Lighting = game:GetService("Lighting")
    local TweenService = game:GetService("TweenService")

    local LocalPlayer = Players.LocalPlayer
    local Options = Fluent.Options

    -- HÀM HỖ TRỢ TẠO ESP (HIGHLIGHT + TEXT)
    local function CreateESPObj(model, name, color, showDist)
        if not model then return end
        
        -- 1. Highlight (Viền sáng)
        if not model:FindFirstChild("DF_Highlight") then
            local h = Instance.new("Highlight", model)
            h.Name = "DF_Highlight"
            h.FillColor = color
            h.OutlineColor = color
            h.FillTransparency = 0.5
            h.OutlineTransparency = 0
        end

        -- 2. BillboardGui (Chữ hiện tên + khoảng cách)
        if not model:FindFirstChild("DF_Info") then
            local bg = Instance.new("BillboardGui", model)
            bg.Name = "DF_Info"
            bg.Size = UDim2.new(0, 200, 0, 50)
            bg.AlwaysOnTop = true
            bg.StudsOffset = Vector3.new(0, 2, 0)
            
            -- Gắn vào phần chính của Model để chữ không bị lệch
            if model:IsA("Model") and model.PrimaryPart then
                bg.Adornee = model.PrimaryPart
            elseif model:FindFirstChild("HumanoidRootPart") then
                bg.Adornee = model.HumanoidRootPart
            end

            local lbl = Instance.new("TextLabel", bg)
            lbl.Name = "TextLabel"
            lbl.Size = UDim2.new(1, 0, 1, 0)
            lbl.BackgroundTransparency = 1
            lbl.TextColor3 = color
            lbl.TextStrokeTransparency = 0
            lbl.Font = Enum.Font.Code
            lbl.TextSize = 14
            lbl.Text = name
        end
    end

    -- UI CONSTRUCTION
    local Tabs = {
        Main = Window:AddTab({ Title = "Automation", Icon = "bot" }),
        Visuals = Window:AddTab({ Title = "Visuals (ESP)", Icon = "eye" }),
        Player = Window:AddTab({ Title = "Player", Icon = "user" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    -- >> TAB MAIN
    Tabs.Main:AddParagraph({ Title = "Loot & Survival", Content = "Tự động hóa mọi thứ." })
    Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Hút Vàng)", Default = false })
    Tabs.Main:AddToggle("MagnetItems", {Title = "Hút Vật Phẩm (Items)", Default = false })
    Tabs.Main:AddSlider("MagnetRange", { Title = "Phạm vi hút", Default = 15, Min = 10, Max = 25, Rounding = 0 })
    Tabs.Main:AddToggle("HeartbeatToggle", {Title = "Auto Heartbeat (Bất Tử Tủ)", Default = false })
    Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact (Không giữ E)", Default = false })

    -- >> TAB VISUALS
    Tabs.Visuals:AddParagraph({ Title = "Enhanced ESP", Content = "ESP hiển thị Tên và Khoảng Cách." })
    Tabs.Visuals:AddToggle("RGB_ESP", {Title = "RGB Mode (Màu Cầu Vồng)", Default = false })
    Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP", Default = true })
    Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP (Quái Vật)", Default = true })
    Tabs.Visuals:AddToggle("KeyESP", {Title = "Key & Lever ESP", Default = true })
    Tabs.Visuals:AddToggle("ItemESP", {Title = "Item ESP (Dụng Cụ)", Default = false })
    Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP (Room 50)", Default = false })
    Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright (Sáng)", Default = false })

    -- >> TAB PLAYER
    Tabs.Player:AddToggle("SpeedToggle", {Title = "Enable Speed Boost", Default = false })
    Tabs.Player:AddSlider("SpeedVal", { Title = "WalkSpeed Value", Default = 20, Min = 16, Max = 24, Rounding = 0 })
    Tabs.Player:AddToggle("NoclipToggle", {Title = "Noclip (Xuyên Tường)", Default = false })
    Tabs.Player:AddButton({
        Title = "God Reach (Gia tăng tầm với)",
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

    -- LOGIC LOOPS
    local RGBColor = Color3.new(1,1,1)
    task.spawn(function()
        local hue = 0
        while true do
            task.wait()
            hue = hue + 0.005 
            if hue > 1 then hue = 0 end
            RGBColor = Color3.fromHSV(hue, 1, 1)
        end
    end)

    -- VACUUM LOOP
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
        end
    end)

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

    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if Options.HeartbeatToggle.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
            if args[1] == false then return nil end
        end
        return oldNamecall(self, ...)
    end)

    -- RENDER STEPPED (ESP & UPDATES)
    RunService.RenderStepped:Connect(function()
        local CurrentColor = Options.RGB_ESP.Value and RGBColor or nil
        
        -- HÀM CẬP NHẬT TEXT DISTANCE
        local function UpdateESPText(model, baseText)
            if model:FindFirstChild("DF_Info") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetPos = Vector3.new(0,0,0)
                if model:IsA("Model") and model.PrimaryPart then targetPos = model.PrimaryPart.Position
                elseif model:IsA("BasePart") then targetPos = model.Position end
                
                local dist = math.floor((LocalPlayer.Character.HumanoidRootPart.Position - targetPos).Magnitude)
                model.DF_Info.TextLabel.Text = string.format("%s [%dm]", baseText, dist)
                
                if CurrentColor then
                    model.DF_Info.TextLabel.TextColor3 = CurrentColor
                    if model:FindFirstChild("DF_Highlight") then model.DF_Highlight.FillColor = CurrentColor end
                end
            end
        end

        pcall(function()
            -- 1. TRUE DOOR ESP
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

            -- 2. ENTITY ESP (QUÁI VẬT)
            if Options.EntESP.Value then
                for _, v in pairs(Workspace:GetChildren()) do
                    if (v.Name == "RushMoving" or v.Name == "AmbushMoving" or v.Name == "FigureRagdoll" or v.Name == "SeekMoving") then
                        local entName = v.Name
                        if v.Name == "FigureRagdoll" then entName = "FIGURE" end
                        if v.Name == "RushMoving" then entName = "RUSH" end
                        if v.Name == "AmbushMoving" then entName = "AMBUSH" end
                        
                        CreateESPObj(v, entName, Color3.fromRGB(255, 0, 0))
                        UpdateESPText(v, entName)
                    end
                end
            end

            -- 3. KEY & LEVER ESP
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

            -- 4. ITEM ESP
            if Options.ItemESP.Value and Workspace:FindFirstChild("CurrentRooms") then
                for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                    for _, asset in pairs(room:GetDescendants()) do
                        if asset:IsA("Model") then
                             if asset.Name == "Lighter" then CreateESPObj(asset, "LIGHTER", Color3.fromRGB(0, 255, 255)); UpdateESPText(asset, "LIGHTER") end
                             if asset.Name == "Lockpick" then CreateESPObj(asset, "LOCKPICK", Color3.fromRGB(0, 255, 255)); UpdateESPText(asset, "LOCKPICK") end
                             if asset.Name == "Vitamins" then CreateESPObj(asset, "VITAMINS", Color3.fromRGB(0, 255, 255)); UpdateESPText(asset, "VITAMINS") end
                             if asset.Name == "Crucifix" then CreateESPObj(asset, "CRUCIFIX", Color3.fromRGB(0, 255, 255)); UpdateESPText(asset, "CRUCIFIX") end
                             if asset.Name == "SkeletonKey" then CreateESPObj(asset, "SKELETON KEY", Color3.fromRGB(0, 255, 255)); UpdateESPText(asset, "SKEL KEY") end
                        end
                    end
                end
            end

            -- 5. BOOK ESP
            if Options.BookESP.Value and Workspace:FindFirstChild("CurrentRooms") then
                for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                    for _, asset in pairs(room:GetDescendants()) do
                        if asset.Name == "LiveHintBook" then
                             CreateESPObj(asset, "BOOK", Color3.fromRGB(255, 0, 255))
                             UpdateESPText(asset, "BOOK")
                        end
                    end
                end
            end
        end)

        if Options.SpeedToggle.Value and LocalPlayer.Character then
            local hum = LocalPlayer.Character:FindFirstChild("Humanoid")
            if hum then hum.WalkSpeed = Options.SpeedVal.Value end
        end
        if Options.NoclipToggle.Value and LocalPlayer.Character then
            for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
        end
        if Options.Fullbright.Value then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.Brightness = 2
            Lighting.FogEnd = 10000
        else
            Lighting.Ambient = Color3.new(0, 0, 0)
            Lighting.Brightness = 1
        end
    end)
    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    Window:SelectTab(1)
    Fluent:Notify({Title = "DARKFORGE-X", Content = "NEON GOD V11 ACTIVE.\nDISTANCE TRACKING ON.", Duration = 5})
    
    -- !!! KẾT THÚC CODE GỐC !!! --
end

-- [3] GIAO DIỆN KEY SYSTEM (GUI)
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
Stroke.Color = Color3.fromRGB(150, 0, 255) -- Màu tím Neon
Stroke.Thickness = 2
Stroke.Transparency = 0

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

-- LOGIC KIỂM TRA KEY
EnterBtn.MouseButton1Click:Connect(function()
    if InputBox.Text == ValidKey then
        EnterBtn.Text = "ACCESS GRANTED"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
        wait(1)
        ScreenGui:Destroy()
        LoadMainScript() -- CHẠY SCRIPT GỐC
    else
        EnterBtn.Text = "INVALID KEY"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        wait(1)
        EnterBtn.Text = "UNLOCK"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
    end
end)

print("DARKFORGE-X // KEY SYSTEM LOADED")
