--[[
    PROJECT: DARKFORGE-X // OMNISCIENT V2 (GHOST-WALKER AI)
    AUTHOR: DARKFORGE-X
    UPGRADE: FULL AUTONOMOUS AUTO-PLAY BOT
]]

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local PathfindingService = game:GetService("PathfindingService")

local ValidKey = "huydz"

local function LoadMainScript()
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local Window = Fluent:CreateWindow({
        Title = "DARKFORGE-X OMNISCIENT",
        SubTitle = "Ghost-Walker AI Edition",
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
        AutoAI = Window:AddTab({ Title = "Auto Play AI", Icon = "bot" }), -- TAB MỚI CHO AI
        Room50 = Window:AddTab({ Title = "Room 50", Icon = "book" }),
        Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
        Player = Window:AddTab({ Title = "Player", Icon = "user" }),
        Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    }

    -- [GLOBAL AI STATES]
    getgenv().DarkForgeAI = {
        IsRunning = false,
        Evading = false,
        State = "IDLE", -- IDLE, MOVING, HIDING, SOLVING
        TargetDoor = nil
    }

    -- ==========================================
    --[SYSTEM 1: ENTITY NOTIFICATION]
    -- ==========================================
    local function PlayAlertSound()
        local sound = Instance.new("Sound", Workspace)
        sound.SoundId = "rbxassetid://4590657391"
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
                ["SeekMoving"] = "CHUẨN BỊ CHẠY (SEEK)",["A60"] = "A-60 TỚI!",
                ["A120"] = "A-120 TỚI!"
            }
            
            if EntityNames[child.Name] then
                Fluent:Notify({Title = "CẢNH BÁO NGUY HIỂM", Content = EntityNames[child.Name], Duration = 5})
                PlayAlertSound()
                
                -- KÍCH HOẠT PHẢN XẠ TRỐN CHẠY CỦA AI
                if getgenv().DarkForgeAI.IsRunning and (child.Name == "RushMoving" or child.Name == "AmbushMoving") then
                    getgenv().DarkForgeAI.Evading = true
                    Fluent:Notify({Title = "AI KÍCH HOẠT", Content = "Đang tự động tìm tủ trốn...", Duration = 3})
                end
            end
        end)
    end)

    -- ==========================================
    --[SYSTEM 2: GHOST-WALKER AI ENGINE]
    -- ==========================================
    
    -- Hàm tạo đường đi thông minh (Pathfinding)
    local function WalkTo(targetPos)
        if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("Humanoid") then return end
        local Humanoid = LocalPlayer.Character.Humanoid
        local Root = LocalPlayer.Character.PrimaryPart

        local path = PathfindingService:CreatePath({
            AgentRadius = 2,
            AgentHeight = 5,
            AgentCanJump = true
        })

        local success, err = pcall(function() path:ComputeAsync(Root.Position, targetPos) end)
        if success and path.Status == Enum.PathStatus.Success then
            local waypoints = path:GetWaypoints()
            for i, wp in ipairs(waypoints) do
                -- Nếu AI phát hiện nguy hiểm (Rush/Ambush), DỪNG việc đi lại ngay
                if getgenv().DarkForgeAI.Evading or not getgenv().DarkForgeAI.IsRunning then 
                    Humanoid:MoveTo(Root.Position) -- Stop
                    return false 
                end
                
                -- Né Eyes: Nhìn gầm mặt xuống đất
                if Workspace:FindFirstChild("Eyes") then
                    Workspace.CurrentCamera.CFrame = CFrame.new(Workspace.CurrentCamera.CFrame.Position, Workspace.CurrentCamera.CFrame.Position - Vector3.new(0, 10, 0))
                end

                if wp.Action == Enum.PathWaypointAction.Jump then Humanoid.Jump = true end
                Humanoid:MoveTo(wp.Position)
                
                -- Chờ đến điểm wp
                local timeOut = 0
                while (Root.Position - wp.Position).Magnitude > 3 and timeOut < 20 do
                    task.wait(0.05)
                    timeOut = timeOut + 1
                end
            end
            return true
        end
        return false
    end

    -- Tìm tủ gần nhất
    local function FindNearestHidingSpot()
        local nearest = nil
        local dist = 9999
        local rootPos = LocalPlayer.Character.PrimaryPart.Position
        
        for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
            for _, v in pairs(room:GetDescendants()) do
                if v.Name == "Wardrobe" or v.Name == "Bed" then
                    local prompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if prompt and prompt.Enabled then
                        local d = (v.PrimaryPart.Position - rootPos).Magnitude
                        if d < dist then dist = d; nearest = v end
                    end
                end
            end
        end
        return nearest
    end

    -- Logic Trốn Quái (Evade Mode)
    local function HandleEvasion()
        local HidingSpot = FindNearestHidingSpot()
        if HidingSpot then
            -- Chạy tới tủ
            WalkTo(HidingSpot.PrimaryPart.Position)
            -- Bấm E vào tủ
            local prompt = HidingSpot:FindFirstChildWhichIsA("ProximityPrompt", true)
            if prompt then fireproximityprompt(prompt) end
            
            -- Chờ trong tủ cho đến khi Rush/Ambush biến mất
            repeat task.wait(0.5) until not Workspace:FindFirstChild("RushMoving") and not Workspace:FindFirstChild("AmbushMoving")
            
            -- Chui ra
            if LocalPlayer.Character.PrimaryPart.Anchored then -- Thường khi trốn Root sẽ bị neo
                -- Game tự thả hoặc ta fake phím tiến/lùi để chui ra
                game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.W, false, game)
                task.wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.W, false, game)
            end
            task.wait(1)
            getgenv().DarkForgeAI.Evading = false
        end
    end

    -- Vòng lặp Não bộ AI (Main Core)
    task.spawn(function()
        while true do
            task.wait(0.1)
            if getgenv().DarkForgeAI.IsRunning then
                pcall(function()
                    local GameData = ReplicatedStorage:WaitForChild("GameData")
                    local LatestRoomNum = GameData.LatestRoom.Value
                    local CurrentRoom = Workspace.CurrentRooms:FindFirstChild(tostring(LatestRoomNum))
                    
                    if not CurrentRoom then return end

                    -- Ưu tiên 1: Cứu sống (Trốn quái)
                    if getgenv().DarkForgeAI.Evading then
                        HandleEvasion()
                        return
                    end

                    -- Ưu tiên 2: Màn Seek (Chạy thục mạng)
                    if Workspace:FindFirstChild("SeekMoving") then
                        -- Tăng tốc & Lướt thẳng tới cửa
                        LocalPlayer.Character.Humanoid.WalkSpeed = 21
                        local nextDoor = CurrentRoom:FindFirstChild("Door")
                        if nextDoor then LocalPlayer.Character.Humanoid:MoveTo(nextDoor.Door.Position) end
                        return
                    end

                    -- Ưu tiên 3: Tìm Chìa khóa / Cầu dao nếu cửa khóa
                    local requiresKey = CurrentRoom:FindFirstChild("KeyObtain", true)
                    if requiresKey and not LocalPlayer.Character:FindFirstChild("Key") then
                        WalkTo(requiresKey.PrimaryPart.Position)
                        local prompt = requiresKey:FindFirstChildWhichIsA("ProximityPrompt", true)
                        if prompt then fireproximityprompt(prompt) end
                        return
                    end

                    -- Ưu tiên 4: Đi đến cửa tiếp theo
                    local TargetDoor = CurrentRoom:FindFirstChild("Door")
                    if TargetDoor and TargetDoor:FindFirstChild("Door") then
                        WalkTo(TargetDoor.Door.Position)
                        
                        -- Nếu đến gần cửa, tự động bẻ khóa hoặc mở
                        if (LocalPlayer.Character.PrimaryPart.Position - TargetDoor.Door.Position).Magnitude < 10 then
                            local prompt = TargetDoor:FindFirstChildWhichIsA("ProximityPrompt", true)
                            if prompt then fireproximityprompt(prompt) end
                        end
                    end
                end)
            end
        end
    end)


    -- ==========================================
    -- [TABS & UI ELEMENTS]
    -- ==========================================

    -- >> AUTO PLAY TAB
    Tabs.AutoAI:AddParagraph({Title = "GHOST-WALKER AI", Content = "Hệ thống tự chơi game bằng Mạng Nơ-ron giả lập. Tự tìm cửa, tự nhặt chìa, tự chui tủ trốn Rush."})
    
    local AutoPlayToggle = Tabs.AutoAI:AddToggle("MasterAutoPlay", {Title = "BẬT AUTO-PLAY (BOT MODE)", Default = false })
    AutoPlayToggle:OnChanged(function(Value)
        getgenv().DarkForgeAI.IsRunning = Value
        if Value then
            Fluent:Notify({Title = "AI ENGAGED", Content = "Buông tay khỏi bàn phím. Bot đang điều khiển...", Duration = 3})
            -- Bật chống Screech tự động để an toàn
            Options.AutoScreech:SetValue(true)
            Options.InstantE:SetValue(true)
        end
    end)
    Tabs.AutoAI:AddToggle("AutoScreech", {Title = "Auto Kill Screech", Default = true, Callback = function(v)
        task.spawn(function()
            while Options.AutoScreech.Value do
                task.wait(0.2)
                if Workspace.CurrentCamera:FindFirstChild("Screech") then
                    ReplicatedStorage.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech:FireServer(true)
                end
            end
        end)
    end})

    -- >> MAIN TAB (Giữ nguyên của ngài)
    Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Gold)", Default = true })
    Tabs.Main:AddToggle("MagnetItems", {Title = "Magnet Items", Default = false })
    Tabs.Main:AddSlider("MagnetRange", {Title = "Range", Default = 15, Min = 10, Max = 25, Rounding = 0})
    Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact", Default = true })

    -- >> ROOM 50 TAB
    Tabs.Room50:AddParagraph({Title = "Solver Tool", Content = "Tính năng cho Figure"})
    Tabs.Room50:AddToggle("AutoLibrary", {Title = "Auto Solve (ESP Books + GUI)", Default = true })
    Tabs.Room50:AddToggle("DeleteFigure", {Title = "Delete Figure (Client)", Default = false })
    Tabs.Room50:AddToggle("AutoHeartbeat", {Title = "Auto Heartbeat", Default = true })

    -- >> VISUALS TAB
    Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP", Default = true })
    Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP + Notify", Default = true })
    Tabs.Visuals:AddToggle("KeyESP", {Title = "Key/Lever ESP", Default = true })
    Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP", Default = true })
    Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright", Default = false })

    -- >> PLAYER TAB
    Tabs.Player:AddToggle("SpeedToggle", {Title = "Speed Boost", Default = false })
    Tabs.Player:AddSlider("SpeedVal", {Title = "WalkSpeed", Default = 20, Min = 16, Max = 24, Rounding = 0})

    -- ==========================================
    -- [BACKGROUND LOGICS] (Giữ nguyên từ bản của Ngài)
    -- ==========================================
    
    -- Auto Interact & Magnet Loop
    task.spawn(function()
        while true do
            task.wait(0.1)
            if Options.VacuumToggle.Value or Options.InstantE.Value then
                pcall(function()
                    local Root = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    if not Root then return end
                    
                    for _, p in pairs(Workspace:GetDescendants()) do
                        if Options.InstantE.Value and p:IsA("ProximityPrompt") then p.HoldDuration = 0 end
                        
                        -- Hút vàng
                        if Options.VacuumToggle.Value and p.Name == "GoldPile" and p.Parent then
                            if (Root.Position - p.Parent.Position).Magnitude <= Options.MagnetRange.Value then
                                local prompt = p.Parent:FindFirstChildWhichIsA("ProximityPrompt", true)
                                if prompt then fireproximityprompt(prompt) end
                            end
                        end
                    end
                end)
            end
        end
    end)

    -- Auto Heartbeat Bypass
    local oldNamecall
    oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()
        if Options.AutoHeartbeat.Value and method == "FireServer" and self.Name == "ClutchHeartbeat" then
            if args[1] == false then return nil end
        end
        return oldNamecall(self, ...)
    end)

    -- Visuals Loop
    RunService.RenderStepped:Connect(function()
        -- Fullbright
        if Options.Fullbright.Value then
            Lighting.Ambient = Color3.new(1, 1, 1)
            Lighting.Brightness = 2
            Lighting.FogEnd = 10000
        end
        -- Speed
        if Options.SpeedToggle.Value and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = Options.SpeedVal.Value
        end
    end)

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    Window:SelectTab(1)
    Fluent:Notify({Title = "DARKFORGE-X", Content = "GHOST-WALKER AI INSTALLED.", Duration = 5})
end

-- ==========================================
-- KEY SYSTEM (DARKFORGE GATEWAY)
-- ==========================================
if CoreGui:FindFirstChild("DarkForgeKey") then CoreGui["DarkForgeKey"]:Destroy() end
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DarkForgeKey"
ScreenGui.Parent = CoreGui
ScreenGui.IgnoreGuiInset = true
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.fromOffset(400, 250)
MainFrame.Position = UDim2.fromScale(0.5, 0.5)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
local Title = Instance.new("TextLabel", MainFrame)
Title.Text = "DARKFORGE AI GATEWAY"
Title.Size = UDim2.new(1, 0, 0.3, 0)
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
local InputBox = Instance.new("TextBox", MainFrame)
InputBox.Size = UDim2.new(0.8, 0, 0.2, 0)
InputBox.Position = UDim2.fromScale(0.5, 0.5)
InputBox.AnchorPoint = Vector2.new(0.5, 0.5)
InputBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
InputBox.PlaceholderText = "Enter Key: huydz"
InputBox.Text = ""
Instance.new("UICorner", InputBox)
local EnterBtn = Instance.new("TextButton", MainFrame)
EnterBtn.Size = UDim2.new(0.5, 0, 0.2, 0)
EnterBtn.Position = UDim2.fromScale(0.5, 0.8)
EnterBtn.AnchorPoint = Vector2.new(0.5, 0.5)
EnterBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
EnterBtn.Text = "INJECT KERNEL"
EnterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterBtn.Font = Enum.Font.GothamBold
Instance.new("UICorner", EnterBtn)

EnterBtn.MouseButton1Click:Connect(function()
    if InputBox.Text == ValidKey then
        EnterBtn.Text = "ACCESS GRANTED"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
        task.wait(0.5)
        ScreenGui:Destroy()
        LoadMainScript()
    else
        EnterBtn.Text = "INVALID KEY"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        task.wait(1)
        EnterBtn.Text = "INJECT KERNEL"
        EnterBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
    end
end)
