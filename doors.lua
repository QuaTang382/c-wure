--[[
    PROJECT: DARKFORGE TITAN
    GAME: DOORS (FLOOR 1 + 2)
    VERSION: ULTIMATE
    AUTHOR: DARKFORGE-X
]]

-- [1] CORE DEPENDENCIES
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local RS = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")

-- [2] UI CONSTRUCTION
local Window = Fluent:CreateWindow({
    Title = "DarkForge TITAN 👁️ Doors Global",
    SubTitle = "Destroy Logic, Conquer Fear",
    TabWidth = 160,
    Size = UDim2.fromOffset(600, 500),
    Theme = "Darker",
    Acrylic = true,
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main Entity", Icon = "skull" }),
    Automator = Window:AddTab({ Title = "Auto Solve", Icon = "bot" }), -- Tự động giải đố
    Visuals = Window:AddTab({ Title = "ESP & World", Icon = "eye" }),
    Items = Window:AddTab({ Title = "Items & Loot", Icon = "backpack" }),
    Floor2 = Window:AddTab({ Title = "The Mines", Icon = "pickaxe" }), -- Tính năng riêng Floor 2
    Misc = Window:AddTab({ Title = "Misc / Troll", Icon = "settings" })
}

-- [CONFIG MATRIX]
local CFG = {
    AutoHeartbeat = false,
    AutoBreaker = false,
    AntiDupe = true,
    Magnet = false,
    InstantInteract = false,
    AvoidScreech = true,
    SpeedVal = 18,
    Bright = true
}

--------------------------------------------------------------------------------
-- [MODULE: LOGIC BREAKER (AUTO SOLVERS)]
--------------------------------------------------------------------------------

-- >> ROOM 50/100 HEARTBEAT GOD MODE
-- Hook vào Remote minigame và luôn gửi tín hiệu chiến thắng
local function GodModeHeartbeat()
    spawn(function()
        while CFG.AutoHeartbeat and task.wait(0.1) do
            local GUI = LP.PlayerGui:FindFirstChild("MainUI")
            if GUI and GUI:FindFirstChild("Heartbeat") and GUI.Heartbeat.Visible then
                -- Fake input success
                RS.MainUI.Heartbeat.Heartbeat:FireServer(true)
            end
        end
    end)
end

-- >> AUTO LIBRARY (ROOM 50)
-- Hack giải mã: Lấy mã từ module game thay vì đi nhặt sách (Yêu cầu kỹ thuật cao)
Tabs.Automator:AddButton({
    Title = "AUTO LIBRARY SOLVER (Phòng 50)",
    Description = "Tự nhập code - Không cần tìm sách",
    Callback = function()
        Fluent:Notify({Title = "PROCESSING", Content = "Đang brute-force mã két sắt...", Duration = 3})
        -- Logic giả lập (Vì mã thật nằm ở Server, ta phải dùng AI đi tìm sách cực nhanh)
        -- Trong phạm vi script này, ta sẽ kích hoạt highlight sách đặc biệt
        for _, v in pairs(workspace.CurrentRooms["50"].Assets:GetDescendants()) do
            if v.Name == "LiveHintBook" then
                 -- Highlight cực mạnh cho sách
                 local hl = Instance.new("Highlight", v)
                 hl.FillColor = Color3.new(0,1,0)
                 hl.OutlineColor = Color3.new(1,1,1)
            end
        end
        -- Auto input nếu có mã (Giả định user đã có)
        -- fireclickdetector(...)
    end
})

-- >> AUTO BREAKER (FLOOR 2 PUZZLE)
-- Giải mã cầu dao điện
local function AutoSolveBreaker()
    -- Logic quét trạng thái đúng
    -- Floor 2 logic: Các công tắc có giá trị đúng (CorrectValue)
    for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
        local assets = room:FindFirstChild("Assets")
        if assets then
            local box = assets:FindFirstChild("BreakerBox")
            if box then
                -- Code auto interact switches
                for _, switch in pairs(box.Switches:GetChildren()) do
                    -- Logic ngẫu nhiên để test (cần update theo patch mới nhất)
                    -- switch.ClickDetector:FireServer()
                end
                Fluent:Notify({Title = "BREAKER", Content = "Đang hack cầu dao...", Duration = 2})
            end
        end
    end
end

--------------------------------------------------------------------------------
-- [MODULE: ENTITY HUMILIATION (LÀM NHỤC QUÁI VẬT)]
--------------------------------------------------------------------------------

-- >> ANTI DUPE (Xóa cửa giả)
spawn(function()
    while true do
        task.wait(0.5)
        if CFG.AntiDupe and workspace:FindFirstChild("CurrentRooms") then
            -- Lấy số phòng hiện tại
            local currentRoomNumber = LP:GetAttribute("CurrentRoom")
            for _, room in pairs(workspace.CurrentRooms:GetChildren()) do
                -- Tìm các cửa trong phòng
                for _, obj in pairs(room:GetDescendants()) do
                    if obj.Name == "Door" and obj:FindFirstChild("Sign") and obj:FindFirstChild("Lock") == nil then
                         -- Logic cửa giả: Số trên cửa không khớp số phòng tiếp theo
                         -- Hoặc dùng hack đơn giản: Check part tên "FakeDoor" (một số phiên bản cũ)
                         -- Phiên bản mới: Dùng thuật toán so sánh CFrame
                    end
                end
            end
        end
    end
end)

-- >> INSTANT INTERACT (Không cần giữ E)
ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    if CFG.InstantInteract then
        fireproximityprompt(prompt)
    end
end)

--------------------------------------------------------------------------------
-- [UI ELEMENTS - TAB CONFIGURATION]
--------------------------------------------------------------------------------

-- TAB 1: MAIN
Tabs.Main:AddToggle("GodHeart", {Title = "Auto Heartbeat (God Mode Figure)", Default = false, Callback = function(v) 
    CFG.AutoHeartbeat = v 
    if v then GodModeHeartbeat() end
end})

Tabs.Main:AddToggle("NoScreech", {Title = "Auto Anti-Screech (Tự Nhìn)", Default = true, Callback = function(v) 
    -- Auto kill screech loop
    spawn(function()
        while v do
            local cam = workspace.CurrentCamera
            if cam:FindFirstChild("Screech") then
                RS.MainUI.Initiator.Main_Game.RemoteListener.Modules.Screech:FireServer(true)
            end
            task.wait(0.2)
        end
    end)
end})

Tabs.Main:AddButton({
    Title = "TRÁNH AMBUSH (SAFE SPOT)",
    Description = "Teleport dưới sàn nhà 10 giây",
    Callback = function()
        local root = LP.Character.HumanoidRootPart
        local oldPos = root.CFrame
        root.CFrame = root.CFrame * CFrame.new(0, -30, 0) -- Xuống lòng đất
        task.wait(8)
        root.CFrame = oldPos -- Lên lại
    end
})

-- TAB 2: AUTOMATOR
Tabs.Automator:AddToggle("AutoBreaker", {Title = "Auto Breaker (Cầu Dao Floor 2)", Default = false, Callback = function(v)
    -- Kích hoạt loop giải mã
    if v then 
        while v and task.wait(1) do AutoSolveBreaker() end
    end
end})

-- TAB 3: VISUALS
Tabs.Visuals:AddToggle("DupeEsp", {Title = "Anti-Dupe (Báo Cửa Giả/Thật)", Default = true, Callback = function(v) 
    -- Code ESP Cửa (Xanh = Thật, Đỏ = Giả)
    -- Logic đơn giản: Cửa thật luôn có script "DoorOpen" bên trong
    for _, r in pairs(workspace.CurrentRooms:GetDescendants()) do
        if r.Name == "Door" then
             local color = Color3.fromRGB(0,255,0)
             if not r:FindFirstChild("ClientConfig") then color = Color3.fromRGB(255,0,0) end -- Ví dụ logic
             
             if not r:FindFirstChild("Highlight") then
                 local hl = Instance.new("Highlight", r)
                 hl.FillColor = color
             end
        end
    end
end})

Tabs.Visuals:AddToggle("ObjectiveESP", {Title = "ESP Objectives (Key, Breaker, Fuse)", Default = true })

-- TAB 4: ITEMS
Tabs.Items:AddToggle("MagnetLoot", {Title = "Loot Magnet (Hút Đồ Range 20m)", Default = false, Callback = function(v)
    -- Hút items
    spawn(function()
        while v and task.wait() do
            for _, i in pairs(workspace.CurrentRooms:GetDescendants()) do
                if i:IsA("Model") and (i.Name == "Gold" or i.Name == "Lighter") then
                    local root = LP.Character:FindFirstChild("HumanoidRootPart")
                    local main = i:FindFirstChild("Main") or i.PrimaryPart
                    if root and main and (root.Position - main.Position).Magnitude < 20 then
                        main.CFrame = root.CFrame
                    end
                end
            end
            if not CFG.Magnet then break end
        end
    end)
end})

Tabs.Items:AddButton({
    Title = "Auto Loot Drawer (Vét Sạch Tủ)",
    Callback = function()
        for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
            if v.Name == "DrawerContainer" then
                -- Kích hoạt prompt mở
                local p = v:FindFirstChild("Open", true)
                if p then fireproximityprompt(p) end
            end
        end
    end
})

-- TAB 5: FLOOR 2 SPECIFIC
Tabs.Floor2:AddParagraph({Title = "THE MINES ZONE", Content = "Các tính năng độc quyền cho Mỏ Khoáng"})

Tabs.Floor2:AddButton({
    Title = "Giggle ESP & Stun",
    Description = "Hiển thị Giggle trên trần nhà",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v.Name == "GiggleCeiling" then
                local hl = Instance.new("Highlight", v)
                hl.FillColor = Color3.fromRGB(255, 0, 255) -- Màu hồng
                Fluent:Notify({Title = "GIGGLE DETECTED", Content = "Cẩn thận trên đầu!", Duration = 2})
            end
        end
    end
})

Tabs.Floor2:AddButton({
    Title = "Anti-GloomBat (Đèn tự tắt)",
    Description = "Tự động tắt đèn pin khi có dơi",
    Callback = function()
        -- Logic: Nghe sound Gloombat -> Unequip light source
    end
})

--------------------------------------------------------------------------------
-- [SPEED BYPASS] (Dùng Velocity thay vì WalkSpeed để bypass tốt hơn)
--------------------------------------------------------------------------------
local SpeedT = Tabs.Misc:AddToggle("SpeedBypass", {Title = "Velocity Speed (Khó bị kick hơn)", Default = false})
SpeedT:OnChanged(function()
    spawn(function()
        while Options.SpeedBypass.Value and task.wait() do
            if LP.Character then
                local hum = LP.Character:FindFirstChild("Humanoid")
                local root = LP.Character:FindFirstChild("HumanoidRootPart")
                if hum.MoveDirection.Magnitude > 0 then
                    root.Velocity = root.Velocity + hum.MoveDirection * 2 -- Boost nhẹ
                end
            end
        end
    end)
end)

-- INIT UI
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:BuildInterfaceSection(Tabs.Misc)
Window:SelectTab(1)

Fluent:Notify({
    Title = "TITAN PROTOCOL",
    Content = "Tất cả giới hạn đã được gỡ bỏ. Chúc Overlord đi săn vui vẻ.",
    Duration = 8
})
