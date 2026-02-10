--[[
  _____             __   ______                       _  __
 |  __ \           |  | |  ____|                     | |/ /
 | |  | | __ _ _ __|  | | |__ ___  _ __ __ _  ___    | ' / 
 | |  | |/ _` | '__|  | |  __/ _ \| '__/ _` |/ _ \   |  <  
 | |__| | (_| | |  |  | | | | (_) | | | (_| |  __/   | . \ 
 |_____/ \__,_|_|  |__| |_|  \___/|_|  \__, |\___|   |_|\_\
                                        __/ |              
                                       |___/               
 
 >>> SYSTEM UPGRADE: UI ENGINE SWAP -> RAYFIELD INTERFACE
 >>> REASON: ORION DEPRECATED/UNSTABLE
 >>> TARGET: BLOX FRUITS UPDATE 27
 >>> BUILD: SHADOW-CORE STABLE
]]

-- [1] RAYFIELD BOOTSTRAP (KHỞI ĐỘNG THƯ VIỆN)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- [SYSTEM CONFIGS]
getgenv().DarkForge = {
    AutoBone = false,
    FastAttack = false,
    HitboxSize = 60,
    HitboxExpander = false,
    RGB_Speed = 0.01,
    RainbowUI = true
}

local Window = Rayfield:CreateWindow({
    Name = "DarkForge-X ⚡ [UPDATE 27] ⚡",
    LoadingTitle = "SHADOW-CORE INJECTING...",
    LoadingSubtitle = "By DarkForge-X",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "DarkForgeRayfield", 
        FileName = "DFX_Config"
    },
    Discord = {
        Enabled = false,
        Invite = "no-invite", 
        RememberJoins = true 
    },
    KeySystem = false -- Tắt Key để test nhanh
})

-- [SYSTEM: ADVANCED RGB ENGINE] (Xử lý RGB cho Rayfield)
-- Rayfield không có sẵn Rainbow loop, ta sẽ inject trực tiếp vào Theme wrapper
task.spawn(function()
    local t = 5
    while wait(0.1) do
        if getgenv().DarkForge.RainbowUI then
            local hue = tick() % t / t
            local color = Color3.fromHSV(hue, 1, 1)
            -- Cập nhật màu giao diện thời gian thực
            -- Lưu ý: Rayfield hiện đại có thể hơi lag nếu update quá nhanh, delay 0.1s là chuẩn
            Rayfield:ModifyWindow({
                Theme = {
                    TextColor = color,
                    ImageColor = color
                } 
            })
            -- Hook vào CoreUI của Rayfield để đổi viền (Advanced)
            pcall(function()
                 game.CoreGui.Rayfield.Main.BorderColor3 = color
            end)
        end
    end
end)

--------------------------------------------------------------------------------
-- [TAB 1: AUTOMATION] (AUTO FARM BONE & LEVEL)
--------------------------------------------------------------------------------
local TabFarm = Window:CreateTab("Auto Farm ☠️", 4483362458) -- Skull Icon

TabFarm:CreateSection("Haunted Castle Operations")

TabFarm:CreateToggle({
    Name = "AUTO BONE (Gom Quái + Hủy Diệt)",
    CurrentValue = false,
    Flag = "AutoBone",
    Callback = function(Value)
        getgenv().DarkForge.AutoBone = Value
        if Value then ExecuteBoneFarm() end
    end,
})

TabFarm:CreateToggle({
    Name = "Auto Pray/Roll (Random Surprise)",
    CurrentValue = false,
    Flag = "AutoRoll",
    Callback = function(Value)
        getgenv().DarkForge.AutoRoll = Value
        while getgenv().DarkForge.AutoRoll do
            task.wait(3) -- Delay 3s để tránh lag server
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Random", 1)
        end
    end,
})

--------------------------------------------------------------------------------
-- [TAB 2: COMBAT SUITE] (PVP & DAMAGE)
--------------------------------------------------------------------------------
local TabCombat = Window:CreateTab("Combat God ⚔️", 4483362458)

TabCombat:CreateSection("Damage Amplification")

TabCombat:CreateToggle({
    Name = "Fast Attack V4 (No Cooldown)",
    CurrentValue = false,
    Flag = "FastAttack",
    Callback = function(Value)
        getgenv().DarkForge.FastAttack = Value
        if Value then StartFastAttack() end
    end,
})

TabCombat:CreateSection("Hitbox Manipulation")

TabCombat:CreateToggle({
    Name = "Hitbox Expander (To hơn đầu)",
    CurrentValue = false,
    Flag = "HitboxExp",
    Callback = function(Value)
        getgenv().DarkForge.HitboxExpander = Value
    end,
})

TabCombat:CreateSlider({
    Name = "Hitbox Size (Radius)",
    Range = {10, 150},
    Increment = 1,
    Suffix = "Studs",
    CurrentValue = 60,
    Flag = "HitboxSize",
    Callback = function(Value)
        getgenv().DarkForge.HitboxSize = Value
    end,
})

--------------------------------------------------------------------------------
-- [TAB 3: SETTINGS & VISUALS]
--------------------------------------------------------------------------------
local TabSet = Window:CreateTab("Settings ⚙️", 4483362458)

TabSet:CreateToggle({
    Name = "RGB Chroma Mode (Đổi màu liên tục)",
    CurrentValue = true,
    Flag = "RainbowUI",
    Callback = function(Value)
        getgenv().DarkForge.RainbowUI = Value
    end,
})

TabSet:CreateButton({
    Name = "Unload Script (Dọn dẹp)",
    Callback = function()
        Rayfield:Destroy()
    end,
})

TabSet:CreateLabel("Dev: DarkForge-X | Shadow-Core Active")

--------------------------------------------------------------------------------
-- [LOGIC CORE] - ENGINE XỬ LÝ
--------------------------------------------------------------------------------

local Players = game:GetService("Players")
local LP = Players.LocalPlayer
local TS = game:GetService("TweenService")
local RS = game:GetService("RunService")

-- [AUTO BONE ENGINE]
function ExecuteBoneFarm()
    task.spawn(function()
        while getgenv().DarkForge.AutoBone do
            task.wait()
            pcall(function()
                -- Xác định vị trí Haunted Castle (Logic giả định cho Upd 27)
                local TargetZone = CFrame.new(-9505, 142, 5535)
                local MyChar = LP.Character
                
                if MyChar and MyChar:FindFirstChild("HumanoidRootPart") then
                    -- 1. Check khoảng cách để Tween
                    if (MyChar.HumanoidRootPart.Position - TargetZone.Position).Magnitude > 500 then
                        -- Bay tới đảo
                        local tweenInfo = TweenInfo.new((MyChar.HumanoidRootPart.Position - TargetZone.Position).Magnitude / 320, Enum.EasingStyle.Linear)
                        local tween = TS:Create(MyChar.HumanoidRootPart, tweenInfo, {CFrame = TargetZone})
                        tween:Play()
                        tween.Completed:Wait()
                    else
                        -- 2. Logic tìm và gom quái
                        for _, v in pairs(workspace.Enemies:GetChildren()) do
                            if (v.Name == "Reborn Skeleton" or v.Name == "Demonic Soul" or v.Name == "Living Zombie") 
                               and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                
                                -- Tween tới sau lưng quái
                                MyChar.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 5) -- Đứng trên cao một chút
                                
                                -- [MAGNET LOGIC] Gom quái lại gần
                                if (v.HumanoidRootPart.Position - MyChar.HumanoidRootPart.Position).Magnitude < 100 then
                                    v.HumanoidRootPart.CFrame = MyChar.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50) -- Auto to hitbox luôn cho dễ đánh
                                    v.HumanoidRootPart.Transparency = 0.8
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                end

                                -- Auto Click
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):ClickButton1(Vector2.new(900, 500))
                                
                                -- Giữ vị trí không bị rơi
                                MyChar.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                            end
                        end
                    end
                end
            end)
        end
    end)
end

-- [FAST ATTACK V4 ENGINE]
function StartFastAttack()
    task.spawn(function()
        local CombatFramework = require(game:GetService("ReplicatedStorage").CombatFramework)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        CameraShaker:Stop() -- Xóa rung màn hình
        
        while getgenv().DarkForge.FastAttack do
            -- Tốc độ spam: Cực nhanh
            task.wait(0) 
            pcall(function()
                if CombatFramework.activeController and CombatFramework.activeController.equipped then
                    -- Reset cooldown timer về 0 liên tục
                    CombatFramework.activeController.timeToNextAttack = -1 
                    -- Hack tầm đánh của kiếm (local)
                    CombatFramework.activeController.hitboxMagnitude = 60
                    -- Kích hoạt đòn đánh
                    CombatFramework.activeController:attack()
                end
            end)
        end
    end)
end

-- [HITBOX EXPANDER THREAD]
RS.RenderStepped:Connect(function()
    if getgenv().DarkForge.HitboxExpander then
        for _, v in pairs(workspace.Enemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                v.HumanoidRootPart.Size = Vector3.new(getgenv().DarkForge.HitboxSize, getgenv().DarkForge.HitboxSize, getgenv().DarkForge.HitboxSize)
                v.HumanoidRootPart.Transparency = 0.7
                v.HumanoidRootPart.Color = Color3.fromRGB(255, 0, 0)
                v.HumanoidRootPart.CanCollide = false
            end
        end
    end
end)

-- [ANTI AFK]
for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end
