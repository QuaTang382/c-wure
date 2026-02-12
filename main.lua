--[[
    PROJECT: ALO DUC À DUC
    GAME: BLOX FRUITS
    VERSION: UPDATE 27 
    AUTHOR: Gia Huy X Độ MIXI
]]

N)
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

if CoreGui:FindFirstChild("OiiLoading") then CoreGui["OiiLoading"]:Destroy() end

local LoadScreen = Instance.new("ScreenGui")
LoadScreen.Name = "OiiLoading"
LoadScreen.Parent = CoreGui
LoadScreen.IgnoreGuiInset = true

local BG = Instance.new("Frame", LoadScreen)
BG.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
BG.Size = UDim2.fromScale(1, 1)
BG.ZIndex = 9999

local TextLabel = Instance.new("TextLabel", BG)
TextLabel.Size = UDim2.fromScale(1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Ộ i i đang load..."
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 255) 
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.TextSize = 40

task.spawn(function()
    local t = 0
    while LoadScreen.Parent do
        t = t + 0.1
        TextLabel.TextTransparency = 0.5 + 0.5 * math.sin(t * 5)
        task.wait(0.03)
    end
end)

task.wait(3)
BG:TweenPosition(UDim2.new(0, 0, -1, 0), "In", "Quad", 1)
task.wait(1)
LoadScreen:Destroy()


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "ALO DUC À DUC",
    SubTitle = "Blox Fruits Tween & ESP",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})


local PlaceID = game.PlaceId
local SeaMap = {}
local SeaName = ""


if PlaceID == 2753915549 then
    SeaName = "Sea 1 (Old World)"
    SeaMap = {
        ["Starter Pirate"] = CFrame.new(973, 16, 1413),
        ["Starter Marine"] = CFrame.new(-2572, 6, 2043),
        ["Jungle"] = CFrame.new(-1611, 36, 154),
        ["Pirate Village"] = CFrame.new(-1136, 4, 3824),
        ["Desert"] = CFrame.new(905, 6, 4376),
        ["Middle Town"] = CFrame.new(-650, 7, 1445),
        ["Frozen Village"] = CFrame.new(1155, 27, -1193),
        ["Marine Fortress"] = CFrame.new(-4809, 20, 4359),
        ["Skylands"] = CFrame.new(-4867, 717, -2621),
        ["Prison"] = CFrame.new(4853, 5, 718),
        ["Colosseum"] = CFrame.new(-1430, 7, -2813),
        ["Magma Village"] = CFrame.new(-5245, 8, 8564),
        ["Underwater City"] = CFrame.new(61163, 11, 1819),
        ["Fountain City"] = CFrame.new(5129, 4, 4046),
    }

elseif PlaceID == 4442272183 then
    SeaName = "Sea 2 (New World)"
    SeaMap = {
        ["Cafe"] = CFrame.new(-380, 73, 296),
        ["Kingdom of Rose"] = CFrame.new(-433, 73, 1378),
        ["Green Zone"] = CFrame.new(-2384, 73, -3194),
        ["Graveyard"] = CFrame.new(-5363, 8, -528),
        ["Snow Mountain"] = CFrame.new(469, 401, -5098),
        ["Hot and Cold"] = CFrame.new(-5772, 7, -10710),
        ["Cursed Ship"] = CFrame.new(923, 126, 32902),
        ["Ice Castle"] = CFrame.new(6136, 25, -6060),
        ["Forgotten Island"] = CFrame.new(-3054, 236, -10148),
        ["Dark Arena"] = CFrame.new(3790, 14, -3450),
    }

elseif PlaceID == 7449423635 then
    SeaName = "Sea 3 (Third Sea)"
    SeaMap = {
        ["Mansion"] = CFrame.new(-12463, 374, -7549),
        ["Castle on the Sea"] = CFrame.new(-5043, 314, -3153),
        ["Port Town"] = CFrame.new(-1575, 6, -2984),
        ["Hydra Island"] = CFrame.new(5747, 610, -267),
        ["Great Tree"] = CFrame.new(2285, 25, -6687),
        ["Floating Turtle"] = CFrame.new(-13274, 531, -7611),
        ["Haunted Castle"] = CFrame.new(-9505, 142, 5539),
        ["Sea of Treats"] = CFrame.new(-2089, 39, -10185),
        ["Tiki Outpost"] = CFrame.new(-16234, 9, 442),
    }
end

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local TweenSpeed = 300
local IsTweening = false

local function GetIslandNames()
    local names = {}
    for n, _ in pairs(SeaMap) do table.insert(names, n) end
    table.sort(names)
    return names
end


local function StartTween(targetCF)
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    
    local Root = LocalPlayer.Character.HumanoidRootPart
    local Dist = (Root.Position - targetCF.Position).Magnitude
    local Info = TweenInfo.new(Dist / TweenSpeed, Enum.EasingStyle.Linear)
    
    local Tween = TweenService:Create(Root, Info, {CFrame = targetCF})
    
    IsTweening = true

    local Noclip = RunService.Stepped:Connect(function()
        if IsTweening and LocalPlayer.Character then
            for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then v.CanCollide = false end
            end
            Root.Velocity = Vector3.new(0,0,0) -- Giữ ổn định
        end
    end)
    
    Tween:Play()
    Tween.Completed:Wait()
    
    IsTweening = false
    Noclip:Disconnect()
    Fluent:Notify({Title = "THÀNH CÔNG", Content = "Đã đến nơi!", Duration = 3})
end


local ESP_Folder = Instance.new("Folder", CoreGui)
ESP_Folder.Name = "DucESP"

local function ToggleESP(state)
    ESP_Folder:ClearAllChildren()
    if not state then return end
    
    for name, cf in pairs(SeaMap) do

        local Part = Instance.new("Part", ESP_Folder)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        Part.Position = cf.Position
        
   
        local BB = Instance.new("BillboardGui", Part)
        BB.Size = UDim2.new(0, 200, 0, 50)
        BB.AlwaysOnTop = true
        
        local Label = Instance.new("TextLabel", BB)
        Label.Size = UDim2.new(1, 0, 1, 0)
        Label.BackgroundTransparency = 1
        Label.TextColor3 = Color3.fromRGB(0, 255, 127) 
        Label.TextStrokeTransparency = 0
        Label.Font = Enum.Font.GothamBold
        Label.TextSize = 14
        
     
        task.spawn(function()
            while Part.Parent do
                if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    local dist = (LocalPlayer.Character.HumanoidRootPart.Position - cf.Position).Magnitude
                    Label.Text = string.format("%s\n[%d m]", name, dist)
                end
                task.wait(0.5)
            end
        end)
    end
end


local Tabs = {
    Teleport = Window:AddTab({ Title = "Teleport (Tween)", Icon = "map" }),
    ESP = Window:AddTab({ Title = "ESP Đảo", Icon = "eye" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options


Tabs.Teleport:AddParagraph({ Title = "Khu Vực Hiện Tại", Content = SeaName })

local IslandDropdown = Tabs.Teleport:AddDropdown("IslandSelect", {
    Title = "Chọn Đảo",
    Values = GetIslandNames(),
    Multi = false,
    Default = 1,
})

Tabs.Teleport:AddButton({
    Title = "BAY ĐẾN ĐẢO (Tween)",
    Description = "Bay ",
    Callback = function()
        local selected = Options.IslandSelect.Value
        if selected and SeaMap[selected] then
            StartTween(SeaMap[selected])
        else
            Fluent:Notify({Title = "Lỗi", Content = "Chưa chọn đảo!", Duration = 3})
        end
    end
})

Tabs.Teleport:AddButton({
    Title = "Dừng Bay",
    Callback = function()
        if IsTweening and LocalPlayer.Character then
            local Root = LocalPlayer.Character.HumanoidRootPart
            -- Hủy tween bằng cách teleport tại chỗ
            Root.CFrame = Root.CFrame
            IsTweening = false
            Fluent:Notify({Title = "Dừng", Content = "Đã dừng bay!", Duration = 3})
        end
    end
})

Tabs.Teleport:AddSlider("TweenSpeed", {
    Title = "Tốc độ bay",
    Default = 300,
    Min = 200,
    Max = 400,
    Rounding = 0,
    Description = "300-350 là an toàn nhất để không bị Kick.",
    Callback = function(Value)
        TweenSpeed = Value
    end
})

--
Tabs.ESP:AddToggle("ESPToggle", {Title = "Bật ESP Đảo", Default = false })
Options.ESPToggle:OnChanged(function()
    ToggleESP(Options.ESPToggle.Value)
end)

--
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
Window:SelectTab(1)

Fluent:Notify({
    Title = "Chào Đức!",
    Content = "Script ALO DUC À DUC đã kích hoạt thành công.",
    Duration = 5
})
