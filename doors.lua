local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "DARKFORGE-X ROOM 50",
    SubTitle = "Silent & Deadly",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Room50 = Window:AddTab({ Title = "Room 50 (Special)", Icon = "book" }),
    Visuals = Window:AddTab({ Title = "Visuals", Icon = "eye" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Options = Fluent.Options

local function CreateHighlight(model, color)
    if not model:FindFirstChild("DF_Highlight") then
        local h = Instance.new("Highlight", model)
        h.Name = "DF_Highlight"
        h.FillColor = color
        h.OutlineColor = color
        h.FillTransparency = 0.5
        h.OutlineTransparency = 0
    end
end

Tabs.Main:AddToggle("VacuumToggle", {Title = "Auto Vacuum (Gold)", Default = true })
Tabs.Main:AddToggle("MagnetItems", {Title = "Magnet Items", Default = false })
Tabs.Main:AddSlider("MagnetRange", {Title = "Range", Default = 15, Min = 10, Max = 25, Rounding = 0})
Tabs.Main:AddToggle("InstantE", {Title = "Instant Interact", Default = true })

Tabs.Room50:AddParagraph({ Title = "Silent Strategy", Content = "Bật Fast Crouch để đi nhanh mà không gây tiếng động." })

Tabs.Room50:AddToggle("DeleteFigure", {Title = "Delete Figure (Client-Side)", Default = false })
Tabs.Room50:AddToggle("AutoHeartbeat", {Title = "Auto Heartbeat (God Mode)", Default = true })
Tabs.Room50:AddToggle("FastCrouch", {Title = "Fast Crouch (Silent Run)", Default = false })
Tabs.Room50:AddToggle("AutoLibrary", {Title = "Auto Solve Code (Overlay)", Default = true })

Tabs.Visuals:AddToggle("DoorESP", {Title = "True Door ESP", Default = true })
Tabs.Visuals:AddToggle("EntESP", {Title = "Entity ESP", Default = true })
Tabs.Visuals:AddToggle("KeyESP", {Title = "Key/Lever ESP", Default = true })
Tabs.Visuals:AddToggle("BookESP", {Title = "Book ESP", Default = true })
Tabs.Visuals:AddToggle("Fullbright", {Title = "Fullbright", Default = false })

Tabs.Player:AddToggle("SpeedToggle", {Title = "Speed Boost", Default = false })
Tabs.Player:AddSlider("SpeedVal", {Title = "WalkSpeed", Default = 20, Min = 16, Max = 24, Rounding = 0})
Tabs.Player:AddToggle("NoclipToggle", {Title = "Noclip", Default = false })

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

local SolvedCode = "????"
task.spawn(function()
    while true do
        task.wait(1)
        if Options.AutoLibrary.Value and LocalPlayer.PlayerGui:FindFirstChild("MainUI") then
            local GameData = ReplicatedStorage:WaitForChild("GameData")
            local LatestRoom = GameData:WaitForChild("LatestRoom")
            if LatestRoom.Value == 50 then
               local paper = LocalPlayer.PlayerGui.MainUI:FindFirstChild("ItemSlot") 
            end
        end
    end
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
    if Options.DoorESP.Value then
        pcall(function()
            local latest = ReplicatedStorage.GameData.LatestRoom.Value
            for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
                if tonumber(room.Name) == latest then
                    local door = room:FindFirstChild("Door")
                    if door then CreateHighlight(door, Color3.fromRGB(0, 255, 0)) end
                end
            end
        end)
    end
    
    if Options.EntESP.Value then
        for _, v in pairs(Workspace:GetChildren()) do
            if string.find(v.Name, "Rush") or string.find(v.Name, "Ambush") or string.find(v.Name, "Figure") or string.find(v.Name, "Seek") then
                CreateHighlight(v, Color3.fromRGB(255, 0, 0))
            end
        end
    end

    if Options.KeyESP.Value and Workspace:FindFirstChild("CurrentRooms") then
        for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
            for _, asset in pairs(room:GetDescendants()) do
                if asset.Name == "KeyObtain" or asset.Name == "LeverForGate" then
                    CreateHighlight(asset, Color3.fromRGB(255, 255, 0))
                end
            end
        end
    end
    
    if Options.BookESP.Value and Workspace:FindFirstChild("CurrentRooms") then
        for _, room in pairs(Workspace.CurrentRooms:GetChildren()) do
            for _, asset in pairs(room:GetDescendants()) do
                if asset.Name == "LiveHintBook" then
                     CreateHighlight(asset, Color3.fromRGB(138, 43, 226))
                end
            end
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

Fluent:Notify({
    Title = "DarkForge-X",
    Content = "Room 50 Protocols Loaded.",
    Duration = 5
})
