--[[
  _____             __   ______                       _  __
 |  __ \           |  | |  ____|                     | |/ /
 | |  | | __ _ _ __|  | | |__ ___  _ __ __ _  ___    | ' / 
 | |  | |/ _` | '__|  | |  __/ _ \| '__/ _` |/ _ \   |  <  
 | |__| | (_| | |  |  | | | | (_) | | | (_| |  __/   | . \ 
 |_____/ \__,_|_|  |__| |_|  \___/|_|  \__, |\___|   |_|\_\
                                        __/ |              
                                       |___/               
 
 >>> PROJECT: OMEGA-HUB V.27
 >>> TARGET: BLOX FRUITS (Update 27 Future-Proof)
 >>> AUTHOR: DARKFORGE-X
 >>> BUILD TYPE: MODULAR TABBED SYSTEM
]]

-- [1] CORE: SYSTEM INITIALIZATION (KHỞI TẠO HỆ THỐNG)
local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local TS = game:GetService("TweenService")
local LP = Players.LocalPlayer

-- [GLOBAL SETTINGS MATRIX] - Bảng điều khiển biến toàn cục
getgenv().DarkForgeSettings = {
    AutoBone = false,
    FastAttack = false,
    HitboxExpander = false,
    HitboxSize = 60,
    RGB_UI = true,
    WalkSpeed = 16,
    AutoClick = false
}

-- [LOADING LIBRARY] - Sử dụng OrionLib làm khung giao diện (UI Framework)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

-- [UI CONFIGURATION]
local Window = OrionLib:MakeWindow({
    Name = "DarkForge-X || UPD 27 || OVERLORD EDITION",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "DarkForgeOmega",
    IntroEnabled = true,
    IntroText = "SHADOW-CORE INITIALIZED"
})

-- [SYSTEM: RGB DYNAMIC ENGINE] - Hệ thống màu RGB động
task.spawn(function()
    local t = 5; -- Thời gian một chu kỳ màu
    while wait() do
        if getgenv().DarkForgeSettings.RGB_UI then
            local hue = tick() % t / t
            local color = Color3.fromHSV(hue, 1, 1)
            -- Can thiệp vào core của OrionLib để đổi màu theme
            pcall(function()
                OrionLib.Flags["RainbowBorder"].Color = color
            end)
        end
    end
end)

--------------------------------------------------------------------------------
-- [TAB 1: FARMING AUTOMATION] - TỰ ĐỘNG FARM
--------------------------------------------------------------------------------
local FarmTab = Window:MakeTab({
    Name = "Farming & Bone",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

FarmTab:AddSection({ Name = "Haunted Castle Protocol (Bone Farm)" })

FarmTab:AddToggle({
    Name = "AUTO BONE (Gom quái + Đánh)",
    Default = false,
    Callback = function(Value)
        getgenv().DarkForgeSettings.AutoBone = Value
        if Value then ExecuteBoneFarm() end
    end
})

FarmTab:AddToggle({
    Name = "Auto Random Surprise (Roll Bone)",
    Default = false,
    Callback = function(Value)
        getgenv().DarkForgeSettings.AutoClick = Value
        while getgenv().DarkForgeSettings.AutoClick do
            task.wait(2) -- Tránh spam gói tin gây crash
            local args = {[1] = "Random", [2] = 1}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", unpack(args))
        end
    end
})

--------------------------------------------------------------------------------
-- [TAB 2: COMBAT ENHANCEMENT] - HỖ TRỢ CHIẾN ĐẤU (PVP/PVE)
--------------------------------------------------------------------------------
local CombatTab = Window:MakeTab({
    Name = "Combat Mods",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

CombatTab:AddSection({ Name = "Fast Attack Matrix" })

CombatTab:AddToggle({
    Name = "Fast Attack (Bypass Cooldown)",
    Default = false,
    Callback = function(Value)
        getgenv().DarkForgeSettings.FastAttack = Value
        if Value then InitializeFastAttack() end
    end
})

CombatTab:AddSection({ Name = "Hitbox Manipulation" })

CombatTab:AddToggle({
    Name = "Hitbox Expander (Mở rộng tầm đánh)",
    Default = false,
    Callback = function(Value)
        getgenv().DarkForgeSettings.HitboxExpander = Value
    end
})

CombatTab:AddSlider({
    Name = "Hitbox Size (Radius)",
    Min = 10,
    Max = 100,
    Default = 60,
    Color = Color3.fromRGB(255,0,0),
    Increment = 1,
    ValueName = "Studs",
    Callback = function(Value)
        getgenv().DarkForgeSettings.HitboxSize = Value
    end
})

--------------------------------------------------------------------------------
-- [TAB 3: PLAYER & VISUALS] - NGƯỜI CHƠI & HIỂN THỊ
--------------------------------------------------------------------------------
local PlayerTab = Window:MakeTab({
    Name = "Player & Visuals",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

PlayerTab:AddToggle({
    Name = "RGB UI Mode",
    Default = true,
    Callback = function(Value)
        getgenv().DarkForgeSettings.RGB_UI = Value
    end
})

PlayerTab:AddSlider({
    Name = "Walk Speed (Tốc độ chạy)",
    Min = 16,
    Max = 300,
    Default = 16,
    Color = Color3.fromRGB(0,255,0),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        LP.Character.Humanoid.WalkSpeed = Value
    end
})

PlayerTab:AddButton({
    Name = "Anti-AFK (Treo máy không bị kick)",
    Callback = function()
        local vu = game:GetService("VirtualUser")
        LP.Idled:connect(function()
            vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        OrionLib:MakeNotification({
            Name = "DarkForge-X",
            Content = "Anti-AFK Enabled Successfully!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

--------------------------------------------------------------------------------
-- [INTERNAL LOGIC] - MÃ XỬ LÝ LÕI (ẨN)
--------------------------------------------------------------------------------

-- [[ 1. AUTO BONE LOGIC ]]
function ExecuteBoneFarm()
    task.spawn(function()
        while getgenv().DarkForgeSettings.AutoBone do
            task.wait()
            pcall(function()
                -- Target: Skeleton Reborn Area (Haunted Castle)
                -- Tọa độ giả định update map
                local TargetPos = CFrame.new(-9505, 142, 5535) 
                
                -- Check khoảng cách & Tween
                if (LP.Character.HumanoidRootPart.Position - TargetPos.Position).Magnitude > 500 then
                    local info = TweenInfo.new((LP.Character.HumanoidRootPart.Position - TargetPos.Position).Magnitude/300, Enum.EasingStyle.Linear)
                    TS:Create(LP.Character.HumanoidRootPart, info, {CFrame = TargetPos}):Play()
                    task.wait(1)
                else
                    -- Loop Enemies
                    for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                        if (enemy.Name == "Reborn Skeleton" or enemy.Name == "Demonic Soul") and enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 then
                            
                            -- Logic Gom quái & Đánh
                            LP.Character.HumanoidRootPart.CFrame = enemy.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
                            
                            -- Auto Click Trigger
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):ClickButton1(Vector2.new(900, 500))
                            
                            -- Reset fall dmg
                            if LP.Character:FindFirstChild("HumanoidRootPart") then
                                LP.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            end
                        end
                    end
                end
            end)
        end
    end)
end

-- [[ 2. HITBOX EXPANDER LOGIC ]]
RS.RenderStepped:Connect(function()
    if getgenv().DarkForgeSettings.HitboxExpander then
        for _, enemy in pairs(workspace.Enemies:GetChildren()) do
            if enemy:FindFirstChild("HumanoidRootPart") and enemy.Humanoid.Health > 0 then
                enemy.HumanoidRootPart.Size = Vector3.new(getgenv().DarkForgeSettings.HitboxSize, getgenv().DarkForgeSettings.HitboxSize, getgenv().DarkForgeSettings.HitboxSize)
                enemy.HumanoidRootPart.Transparency = 0.5
                enemy.HumanoidRootPart.CanCollide = false
            end
        end
    end
end)

-- [[ 3. FAST ATTACK LOGIC (Advanced Hook) ]]
function InitializeFastAttack()
    task.spawn(function()
        local CombatFramework = require(game:GetService("ReplicatedStorage").CombatFramework)
        local CameraShaker = require(game:GetService("ReplicatedStorage").Util.CameraShaker)
        CameraShaker:Stop() -- Fix camera shake
        
        while getgenv().DarkForgeSettings.FastAttack do
            task.wait(0.1) -- An toàn: 0.1s
            pcall(function()
                if CombatFramework.activeController and CombatFramework.activeController.equipped then
                    -- Reset attack cooldown to 0 immediately
                    CombatFramework.activeController.timeToNextAttack = 0
                    CombatFramework.activeController.hitboxMagnitude = 55 -- Bonus range
                    CombatFramework.activeController:attack()
                end
            end)
        end
    end)
end

--------------------------------------------------------------------------------
-- [INITIALIZATION]
--------------------------------------------------------------------------------
OrionLib:Init()
print(">> DARKFORGE-X: ALL MODULES LOADED SUCCESSFULLY <<")
