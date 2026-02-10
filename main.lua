--[[
    DARKFORGE-X // BLOX FRUITS OMNI-HUB
    VERSION: 2.0 (BONE HARVESTER + FRUIT SHOP)
    MECHANISM: VECTOR AGGREGATION (GOM QUÁI)
    AUTHOR: DARKFORGE-X
]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "DARKFORGE-X // OMNI-HUB",
   LoadingTitle = "Shadow Core v2.0",
   LoadingSubtitle = "Auto Farm & Shop System",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "DarkForgeBF", 
      FileName = "OmniConfig"
   },
   KeySystem = false, 
})

-- [SERVICES & VARIABLES]
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local VirtualUser = game:GetService("VirtualUser")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Config = {
    AutoBone = false,
    FastAttack = true,
    BringMob = true,
    SelectedLocation = nil
}

-- [CORE MODULE: REMOTE HANDLING]
-- Hàm giao tiếp với Server (Mua trái, Random trái)
local function CommF(args)
    return ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
end

-- [CORE MODULE: FARMING LOGIC]
local function GetEnemies(nameList)
    local mobs = {}
    for _, v in pairs(Workspace.Enemies:GetChildren()) do
        if table.find(nameList, v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
            table.insert(mobs, v)
        end
    end
    return mobs
end

local function FarmBoneLogic()
    spawn(function()
        while Config.AutoBone do
            wait()
            pcall(function()
                -- Danh sách quái rớt Bone ở Haunted Castle
                local BoneMobs = {"Reborn Skeleton", "Living Zombie", "Demonic Soul", "Possessed Mummy"}
                local Target = nil
                
                -- 1. Tìm quái gần nhất
                for _, mob in pairs(Workspace.Enemies:GetChildren()) do
                    if table.find(BoneMobs, mob.Name) and mob:FindFirstChild("HumanoidRootPart") and mob.Humanoid.Health > 0 then
                        Target = mob
                        break -- Lấy con đầu tiên tìm thấy
                    end
                end

                if Target then
                    local TargetPos = Target.HumanoidRootPart.CFrame
                    
                    -- 2. Bay tới quái (Trên đầu 15 studs để né damage)
                    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local HRP = LocalPlayer.Character.HumanoidRootPart
                        
                        -- Khóa va chạm (Noclip)
                        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                            if v:IsA("BasePart") then v.CanCollide = false end
                        end
                        
                        -- Dịch chuyển (Tween giả lập)
                        HRP.CFrame = TargetPos * CFrame.new(0, 15, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                        
                        -- 3. Gom quái (Bring Mob Mechanism)
                        if Config.BringMob then
                            for _, otherMob in pairs(Workspace.Enemies:GetChildren()) do
                                if otherMob ~= Target and table.find(BoneMobs, otherMob.Name) and otherMob:FindFirstChild("HumanoidRootPart") and (otherMob.HumanoidRootPart.Position - HRP.Position).Magnitude < 300 then
                                    otherMob.HumanoidRootPart.CFrame = TargetPos -- Gom lại 1 chỗ
                                    otherMob.HumanoidRootPart.CanCollide = false
                                    otherMob.Humanoid.WalkSpeed = 0
                                end
                            end
                        end
                        
                        -- 4. Tự động đánh (Auto Attack)
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton1(Vector2.new(999,999))
                        
                        -- Equip Weapon (Mặc định là món đầu tiên hoặc Melee)
                        local backpack = LocalPlayer.Backpack:GetChildren()
                        if #backpack > 0 then backpack[1].Parent = LocalPlayer.Character end
                    end
                else
                    -- Nếu không tìm thấy quái, có thể chưa load map hoặc đã diệt hết
                    -- Có thể thêm logic bay về điểm spawn quái ở đây
                end
            end)
        end
    end)
end

-- [GUI TABS]

-- TAB 1: TELEPORT (GIỮ NGUYÊN TỪ BẢN TRƯỚC)
local TeleportTab = Window:CreateTab("Teleport", 4483362458)
TeleportTab:CreateLabel("Hệ thống bay an toàn (Tween)")
-- (Tôi giản lược phần code Teleport ở đây để tập trung vào Farm/Fruit, 
-- nhưng trong thực tế ngài cứ giữ lại đoạn code Teleport cũ trong Tab này)

-- TAB 2: FARM (BONE)
local FarmTab = Window:CreateTab("Farm", 4483362458)

FarmTab:CreateSection("HAUNTED CASTLE (SEA 3)")

FarmTab:CreateToggle({
   Name = "AUTO FARM BONE (Gom Quái)",
   CurrentValue = false,
   Flag = "AutoBone", 
   Callback = function(Value)
        Config.AutoBone = Value
        if Value then
            Rayfield:Notify({Title = "PROTOCOL STARTED", Content = "Bắt đầu cày Bone...", Duration = 3})
            FarmBoneLogic()
        else
            Rayfield:Notify({Title = "PROTOCOL STOPPED", Content = "Đã dừng Farm.", Duration = 3})
        end
   end,
})

FarmTab:CreateToggle({
   Name = "Bring Mobs (Gom quái lại gần)",
   CurrentValue = true,
   Flag = "BringMob", 
   Callback = function(Value)
        Config.BringMob = Value
   end,
})

-- TAB 3: FRUIT & RAID
local FruitTab = Window:CreateTab("Fruit & Raid", 4483362458)

FruitTab:CreateSection("GACHA & SHOP")

FruitTab:CreateButton({
   Name = "Random Fruit (Mua Gacha)",
   Callback = function()
        -- Gửi lệnh mua Random Fruit
        local result = CommF({"BuyRandomFruit", "1", {["RP"] = true}})
        if result == 1 then
             Rayfield:Notify({Title = "SUCCESS", Content = "Đã mua Fruit thành công! Kiểm tra túi.", Duration = 5})
        else
             Rayfield:Notify({Title = "FAILED", Content = result, Duration = 5})
        end
   end,
})

FruitTab:CreateButton({
   Name = "Store Fruit (Cất Fruit vào kho)",
   Callback = function()
        -- Tìm trái cây trong Balô và cất
        for _, v in pairs(LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                CommF({"StoreFruit", v.Name, v})
            end
        end
        -- Tìm trái cây trên tay nhân vật
        if LocalPlayer.Character then
            for _, v in pairs(LocalPlayer.Character:GetChildren()) do
                if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                    CommF({"StoreFruit", v.Name, v})
                end
            end
        end
        Rayfield:Notify({Title = "STORAGE", Content = "Đã cất hết trái cây!", Duration = 3})
   end,
})

FruitTab:CreateSection("SHOP INTERFACE")

FruitTab:CreateButton({
   Name = "Open Fruit Dealer (Xem Shop)",
   Callback = function()
       -- Mở GUI Shop từ xa mà không cần đến NPC
       local args = {
           [1] = "GetFruits"
       }
       -- Gọi remote để lấy data shop, thông thường GUI sẽ tự hiện hoặc cần Fire Client
       -- Blox Fruit cơ chế mới chặn mở GUI từ xa đôi chút, ta dùng cách Teleport an toàn hơn
       -- Hoặc hiển thị thông báo list fruit
       CommF({"GetFruits"}) 
       LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
   end,
})

Rayfield:LoadConfiguration()
