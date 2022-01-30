repeat wait() until game:IsLoaded()
wait(9)
if _G.Team == "Pirate" then
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
elseif _G.Team == "Marine" then
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
else
	for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
		v.Function()
	end
end

wait(1)

local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SINBAHUB1/2qasdfzsdf/main/README.md"))()

local win = SolarisLib:New({
   Name = "Repeat Hub | Kaitan",
   FolderToSave = "SolarisLibStuff"
})

Old_World = false
New_World = false
Three_World = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    Old_World = true
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    Three_World = true
end
local tab = win:Tab("Misc")
local Menu = win:Tab("Menu")
local Stats = win:Tab("AutoStats")

local MenuV1 = Menu:Section("Menu")

local sec = tab:Section("Start !!")
local talk = tab:Section("Link Discord")
local StatsC = Stats:Section("Auto Stats")

sec:Toggle("Start",def,false, function(vu)
    _G.Auto_Farm = vu
    _G.FastAttack1 = vu
end)

sec:Toggle("Star888t",def,false, function(vu)
    _G.AutoSaber = vu
end)


talk:Button("Copy Discord ", function()
    SolarisLib:Notification("Copy Link Discord", "")
    setclipboard("https://discord.gg/J6QtBaDBnN")
end)

_G.SelectWeapon = "Death Step"
--------------------------------------------------------------------------------------------------------------------------------------------------
-- รายละเอียดกาฟาม
--1.ฟามเวลถึง200ไห้ไปตี แชงคูส
--2.เมื่อถึงเวล 600 ไห้ซื้อฮาคิสังเกต
--3.เวลถึง 700 ไห้ทำเควสไปโลก2
--4.เวล 850 ไห้ไช้ โค้ดเลเวล x2
--5.ฟามเวลถึง ตัน ที่โลก2 + จะได้ซื้อดาบโซโลไปด้วย
--6.เมื่อได้ดาบโซโลแล้ว + เวลมากกว่า 1530 ไห้ทำเควสไปโลก 3
--7.ฟามเวลตัน ถึงจะไปทำ คลาสหมัด

--รายละเอียดการฟาม คลาสหมัด
--ฟามหมัด วี1 ไห้มาสพร้อม
--ถ้าเงินม่วงไม่พอ ไห้ดึงผล+ลงดัน แบบ Hop
--เมื่อได้หมัด จะฟามมาสไห้ทุกสกิล
--เมื่อมาสหมัดครบไห้ฟามรายการต่อไป หรือ ฟามคลาสดาบ

--รายละเอียดการฟาม คลาสดาบ
--1.หาดาบด้วยการไช้หมัดตี
--2.เมื่อได้ดาบไห้ไปที่เซิฟคนน้อย + ฟามมาส
--3.เมื่อมาสครบไห้ทำรายการต่อไป หรือ ทำคลาสผลปีศาจ

--รายละเอียดการฟาม คลาสผลปีศาจ
--1.ย้ายเซิฟดึงผล + เมื่อได้ผลแล้วก็กิน
--2.ถ้าผลตื่น + ลงดัน

--รายละเอียดการฟาม ทุกเวลา
--1.ดึงผล แล้วเก็บไว้ในกระเป๋า
--2.ถ้าได้ ผลที่ต้องการไห้กินทันที
--3.ซื้อดาบโซโล
--------------------------------------------------------------------------------------------------------------------------------------------------
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Old_World then
        if Lv == 1 or Lv <= 9 or SelectMonster == "Bandit [Lv. 5]" then -- Bandit
            Ms = "Bandit [Lv. 5]"
            NameQuest = "BanditQuest1"
            QuestLv = 1
            NameMon = "Bandit"
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875)
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953)
        elseif Lv == 10 or Lv <= 14 or SelectMonster == "Monkey [Lv. 14]" then -- Monkey
            Ms = "Monkey [Lv. 14]"
            NameQuest = "JungleQuest"
            QuestLv = 1
            NameMon = "Monkey"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1448.1446533203, 50.851993560791, 63.60718536377)
        elseif Lv == 15 or Lv <= 29 or SelectMonster == "Gorilla [Lv. 20]" then -- Gorilla
            Ms = "Gorilla [Lv. 20]"
            NameQuest = "JungleQuest"
            QuestLv = 2
            NameMon = "Gorilla"
            CFrameQ = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameMon = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif Lv == 30 or Lv <= 39 or SelectMonster == "Pirate [Lv. 35]" then -- Pirate
            Ms = "Pirate [Lv. 35]"
            NameQuest = "BuggyQuest1"
            QuestLv = 1
            NameMon = "Pirate"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1201.0881347656, 40.628940582275, 3857.5966796875)
        elseif Lv == 40 or Lv <= 59 or SelectMonster == "Brute [Lv. 45]" then -- Brute
            Ms = "Brute [Lv. 45]"
            NameQuest = "BuggyQuest1"
            QuestLv = 2
            NameMon = "Brute"
            CFrameQ = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameMon = CFrame.new(-1387.5324707031, 24.592035293579, 4100.9575195313)
        elseif Lv == 60 or Lv <= 74 or SelectMonster == "Desert Bandit [Lv. 60]" then -- Desert Bandit
            Ms = "Desert Bandit [Lv. 60]"
            NameQuest = "DesertQuest"
            QuestLv = 1
            NameMon = "Desert Bandit"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625)
        elseif Lv == 75 or Lv <= 89 or SelectMonster == "Desert Officer [Lv. 70]" then -- Desert Officer
            Ms = "Desert Officer [Lv. 70]"
            NameQuest = "DesertQuest"
            QuestLv = 2
            NameMon = "Desert Officer"
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625)
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688)
        elseif Lv == 90 or Lv <= 99 or SelectMonster == "Snow Bandit [Lv. 90]" then -- Snow Bandit
            Ms = "Snow Bandit [Lv. 90]"
            NameQuest = "SnowQuest"
            QuestLv = 1
            NameMon = "Snow Bandit"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, -1328.2418212891)
        elseif Lv == 100 or Lv <= 119 or SelectMonster == "Snowman [Lv. 100]" then -- Snowman
            Ms = "Snowman [Lv. 100]"
            NameQuest = "SnowQuest"
            QuestLv = 2
            NameMon = "Snowman"
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif Lv == 120 or Lv <= 149 or SelectMonster == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
            Ms = "Chief Petty Officer [Lv. 120]"
            NameQuest = "MarineQuest2"
            QuestLv = 1
            NameMon = "Chief Petty Officer"
            CFrameQ = CFrame.new(-5035.49609375, 28.677835464478, 4324.1840820313)
            CFrameMon = CFrame.new(-4931.1552734375, 65.793113708496, 4121.8393554688)
        elseif Lv == 150 or Lv <= 174 or SelectMonster == "Sky Bandit [Lv. 150]" then -- Sky Bandit
            Ms = "Sky Bandit [Lv. 150]"
            NameQuest = "SkyQuest"
            QuestLv = 1
            NameMon = "Sky Bandit"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-4955.6411132813, 365.46365356445, -2908.1865234375)
        elseif Lv == 175 or Lv <= 224 or SelectMonster == "Dark Master [Lv. 175]" then -- Dark Master
            Ms = "Dark Master [Lv. 175]"
            NameQuest = "SkyQuest"
            QuestLv = 2
            NameMon = "Dark Master"
            CFrameQ = CFrame.new(-4842.1372070313, 717.69543457031, -2623.0483398438)
            CFrameMon = CFrame.new(-5148.1650390625, 439.04571533203, -2332.9611816406)
        elseif Lv == 225 or Lv <= 274 or SelectMonster == "Toga Warrior [Lv. 225]" then -- Toga Warrior
            Ms = "Toga Warrior [Lv. 225]"
            NameQuest = "ColosseumQuest"
            QuestLv = 1
            NameMon = "Toga Warrior"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1872.5166015625, 49.080215454102, -2913.810546875)
        elseif Lv == 275 or Lv <= 299 or SelectMonster == "Gladiator [Lv. 275]" then -- Gladiator
            Ms = "Gladiator [Lv. 275]"
            NameQuest = "ColosseumQuest"
            QuestLv = 2
            NameMon = "Gladiator"
            CFrameQ = CFrame.new(-1577.7890625, 7.4151420593262, -2984.4838867188)
            CFrameMon = CFrame.new(-1521.3740234375, 81.203170776367, -3066.3139648438)
        elseif Lv == 300 or Lv <= 329 or SelectMonster == "Military Soldier [Lv. 300]" then -- Military Soldier
            Ms = "Military Soldier [Lv. 300]"
            NameQuest = "MagmaQuest"
            QuestLv = 1
            NameMon = "Military Soldier"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5369.0004882813, 61.24352645874, 8556.4921875)
        elseif Lv == 330 or Lv <= 374 or SelectMonster == "Military Spy [Lv. 330]" then -- Military Spy
            Ms = "Military Spy [Lv. 330]"
            NameQuest = "MagmaQuest"
            QuestLv = 2
            NameMon = "Military Spy"
            CFrameQ = CFrame.new(-5316.1157226563, 12.262831687927, 8517.00390625)
            CFrameMon = CFrame.new(-5984.0532226563, 82.14656829834, 8753.326171875)
        elseif Lv == 375 or Lv <= 399 or SelectMonster == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior 
            Ms = "Fishman Warrior [Lv. 375]"
            NameQuest = "FishmanQuest"
            QuestLv = 1
            NameMon = "Fishman Warrior"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif Lv == 400 or Lv <= 449 or SelectMonster == "Fishman Commando [Lv. 400]" then -- Fishman Commando
            Ms = "Fishman Commando [Lv. 400]"
            NameQuest = "FishmanQuest"
            QuestLv = 2
            NameMon = "Fishman Commando"
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
        elseif Lv == 450 or Lv <= 474 or SelectMonster == "God's Guard [Lv. 450]" then -- God's Guard
            Ms = "God's Guard [Lv. 450]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 1
            NameMon = "God's Guard"
            CFrameQ = CFrame.new(-4721.8603515625, 845.30297851563, -1953.8489990234)
            CFrameMon = CFrame.new(-4628.0498046875, 866.92877197266, -1931.2352294922)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
        elseif Lv == 475 or Lv <= 524 or SelectMonster == "Shanda [Lv. 475]" then -- Shanda
            Ms = "Shanda [Lv. 475]"
            NameQuest = "SkyExp1Quest"
            QuestLv = 2
            NameMon = "Shanda"
            CFrameQ = CFrame.new(-7863.1596679688, 5545.5190429688, -378.42266845703)
            CFrameMon = CFrame.new(-7685.1474609375, 5601.0751953125, -441.38876342773)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
        elseif Lv == 525 or Lv <= 549 or SelectMonster == "Royal Squad [Lv. 525]" then -- Royal Squad
            Ms = "Royal Squad [Lv. 525]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 1
            NameMon = "Royal Squad"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7654.2514648438, 5637.1079101563, -1407.7550048828)
        elseif Lv == 550 or Lv <= 624 or SelectMonster == "Royal Soldier [Lv. 550]" then -- Royal Soldier
            Ms = "Royal Soldier [Lv. 550]"
            NameQuest = "SkyExp2Quest"
            QuestLv = 2
            NameMon = "Royal Soldier"
            CFrameQ = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameMon = CFrame.new(-7760.4106445313, 5679.9077148438, -1884.8112792969)
        elseif Lv == 625 or Lv <= 649 or SelectMonster == "Galley Pirate [Lv. 625]" then -- Galley Pirate
            Ms = "Galley Pirate [Lv. 625]"
            NameQuest = "FountainQuest"
            QuestLv = 1
            NameMon = "Galley Pirate"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063)
        elseif Lv >= 650 or SelectMonster == "Galley Captain [Lv. 650]" then -- Galley Captain
            Ms = "Galley Captain [Lv. 650]"
            NameQuest = "FountainQuest"
            QuestLv = 2
            NameMon = "Galley Captain"
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188)
        end
    end
    if New_World then
        if Lv == 700 or Lv <= 724 or SelectMonster == "Raider [Lv. 700]" then -- Raider
            Ms = "Raider [Lv. 700]"
            NameQuest = "Area1Quest"
            QuestLv = 1
            NameMon = "Raider"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688)
        elseif Lv == 725 or Lv <= 774 or SelectMonster == "Mercenary [Lv. 725]" then -- Mercenary
            Ms = "Mercenary [Lv. 725]"
            NameQuest = "Area1Quest"
            QuestLv = 2
            NameMon = "Mercenary"
            CFrameQ = CFrame.new(-427.72567749023, 72.99634552002, 1835.9426269531)
            CFrameMon = CFrame.new(-864.85009765625, 122.47104644775, 1453.1505126953)
        elseif Lv == 775 or Lv <= 799 or SelectMonster == "Swan Pirate [Lv. 775]" then -- Swan Pirate
            Ms = "Swan Pirate [Lv. 775]"
            NameQuest = "Area2Quest"
            QuestLv = 1
            NameMon = "Swan Pirate"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125)
        elseif Lv == 800 or Lv <= 874 or SelectMonster == "Factory Staff [Lv. 800]" then -- Factory Staff
            Ms = "Factory Staff [Lv. 800]"
            NameQuest = "Area2Quest"
            QuestLv = 2
            NameMon = "Factory Staff"
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125)
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797)
        elseif Lv == 875 or Lv <= 899 or SelectMonster == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant
            Ms = "Marine Lieutenant [Lv. 875]"
            NameQuest = "MarineQuest3"
            QuestLv = 1
            NameMon = "Marine Lieutenant"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2489.2622070313, 84.613594055176, -3151.8830566406)
        elseif Lv == 900 or Lv <= 949 or SelectMonster == "Marine Captain [Lv. 900]" then -- Marine Captain
            Ms = "Marine Captain [Lv. 900]"
            NameQuest = "MarineQuest3"
            QuestLv = 2
            NameMon = "Marine Captain"
            CFrameQ = CFrame.new(-2440.9934082031, 73.04190826416, -3217.7082519531)
            CFrameMon = CFrame.new(-2335.2026367188, 79.786659240723, -3245.8674316406)
        elseif Lv == 950 or Lv <= 974 or SelectMonster == "Zombie [Lv. 950]" then -- Zombie
            Ms = "Zombie [Lv. 950]"
            NameQuest = "ZombieQuest"
            QuestLv = 1
            NameMon = "Zombie"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5536.4970703125, 101.08577728271, -835.59075927734)
        elseif Lv == 975 or Lv <= 999 or SelectMonster == "Vampire [Lv. 975]" then -- Vampire
            Ms = "Vampire [Lv. 975]"
            NameQuest = "ZombieQuest"
            QuestLv = 2
            NameMon = "Vampire"
            CFrameQ = CFrame.new(-5494.3413085938, 48.505931854248, -794.59094238281)
            CFrameMon = CFrame.new(-5806.1098632813, 16.722528457642, -1164.4384765625)
        elseif Lv == 1000 or Lv <= 1049 or SelectMonster == "Snow Trooper [Lv. 1000]" then -- Snow Trooper
            Ms = "Snow Trooper [Lv. 1000]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 1
            NameMon = "Snow Trooper"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, -5484.9165039063)
        elseif Lv == 1050 or Lv <= 1099 or SelectMonster == "Winter Warrior [Lv. 1050]" then -- Winter Warrior
            Ms = "Winter Warrior [Lv. 1050]"
            NameQuest = "SnowMountainQuest"
            QuestLv = 2
            NameMon = "Winter Warrior"
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, -5370.5546875)
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, -5174.130859375)
        elseif Lv == 1100 or Lv <= 1124 or SelectMonster == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate
            Ms = "Lab Subordinate [Lv. 1100]"
            NameQuest = "IceSideQuest"
            QuestLv = 1
            NameMon = "Lab Subordinate"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-5720.5576171875, 63.309471130371, -4784.6103515625)
        elseif Lv == 1125 or Lv <= 1174 or SelectMonster == "Horned Warrior [Lv. 1125]" then -- Horned Warrior
            Ms = "Horned Warrior [Lv. 1125]"
            NameQuest = "IceSideQuest"
            QuestLv = 2
            NameMon = "Horned Warrior"
            CFrameQ = CFrame.new(-6061.841796875, 15.926671981812, -4902.0385742188)
            CFrameMon = CFrame.new(-6292.751953125, 91.181983947754, -5502.6499023438)
        elseif Lv == 1175 or Lv <= 1199 or SelectMonster == "Magma Ninja [Lv. 1175]" then -- Magma Ninja
            Ms = "Magma Ninja [Lv. 1175]"
            NameQuest = "FireSideQuest"
            QuestLv = 1
            NameMon = "Magma Ninja"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5461.8388671875, 130.36347961426, -5836.4702148438)
        elseif Lv == 1200 or Lv <= 1249 or SelectMonster == "Lava Pirate [Lv. 1200]" then -- Lava Pirate
            Ms = "Lava Pirate [Lv. 1200]"
            NameQuest = "FireSideQuest"
            QuestLv = 2
            NameMon = "Lava Pirate"
            CFrameQ = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameMon = CFrame.new(-5251.1889648438, 55.164535522461, -4774.4096679688)
        elseif Lv == 1250 or Lv <= 1274 or SelectMonster == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand
            Ms = "Ship Deckhand [Lv. 1250]"
            NameQuest = "ShipQuest1"
            QuestLv = 1
            NameMon = "Ship Deckhand"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1275 or Lv <= 1299 or SelectMonster == "Ship Engineer [Lv. 1275]" then -- Ship Engineer
            Ms = "Ship Engineer [Lv. 1275]"
            NameQuest = "ShipQuest1"
            QuestLv = 2
            NameMon = "Ship Engineer"
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625)
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1300 or Lv <= 1324 or SelectMonster == "Ship Steward [Lv. 1300]" then -- Ship Steward
            Ms = "Ship Steward [Lv. 1300]"
            NameQuest = "ShipQuest2"
            QuestLv = 1
            NameMon = "Ship Steward"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1325 or Lv <= 1349 or SelectMonster == "Ship Officer [Lv. 1325]" then -- Ship Officer
            Ms = "Ship Officer [Lv. 1325]"
            NameQuest = "ShipQuest2"
            QuestLv = 2
            NameMon = "Ship Officer"
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875)
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
        elseif Lv == 1350 or Lv <= 1374 or SelectMonster == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior
            Ms = "Arctic Warrior [Lv. 1350]"
            NameQuest = "FrostQuest"
            QuestLv = 1
            NameMon = "Arctic Warrior"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, -6472.7568359375)
			if _G.Auto_Farm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			end
        elseif Lv == 1375 or Lv <= 1424 or SelectMonster == "Snow Lurker [Lv. 1375]" then -- Snow Lurker
            Ms = "Snow Lurker [Lv. 1375]"
            NameQuest = "FrostQuest"
            QuestLv = 2
            NameMon = "Snow Lurker"
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, -6484.6005859375)
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, -6618.3481445313)
        elseif Lv == 1425 or Lv <= 1449 or SelectMonster == "Sea Soldier [Lv. 1425]" then -- Sea Soldier
            Ms = "Sea Soldier [Lv. 1425]"
            NameQuest = "ForgottenQuest"
            QuestLv = 1
            NameMon = "Sea Soldier"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3185.0153808594, 58.789089202881, -9663.6064453125)
        elseif Lv >= 1450 or SelectMonster == "Water Fighter [Lv. 1450]" then -- Water Fighter
            Ms = "Water Fighter [Lv. 1450]"
            NameQuest = "ForgottenQuest"
            QuestLv = 2
            NameMon = "Water Fighter"
            CFrameQ = CFrame.new(-3054.5827636719, 236.87213134766, -10147.790039063)
            CFrameMon = CFrame.new(-3262.9301757813, 298.69036865234, -10552.529296875)
		end
	end
	if Three_World then
		if Lv == 1500 or Lv <= 1524 or SelectMonster == "Pirate Millionaire [Lv. 1500]" then -- Pirate Millionaire
			Ms = "Pirate Millionaire [Lv. 1500]"
			NameQuest = "PiratePortQuest"
			QuestLv = 1
			NameMon = "Pirate Millionaire"
			CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
			CFrameMon = CFrame.new(-435.68109130859, 189.69866943359, 5551.0756835938)
		elseif Lv == 1525 or Lv <= 1574 or SelectMonster == "Pistol Billionaire [Lv. 1525]" then -- Pistol Billoonaire
			Ms = "Pistol Billionaire [Lv. 1525]"
			NameQuest = "PiratePortQuest"
			QuestLv = 2
			NameMon = "Pistol Billionaire"
			CFrameQ = CFrame.new(-289.61752319336, 43.819011688232, 5580.0903320313)
			CFrameMon = CFrame.new(-236.53652954102, 217.46676635742, 6006.0883789063)
		elseif Lv == 1575 or Lv <= 1599 or SelectMonster == "Dragon Crew Warrior [Lv. 1575]" then -- Dragon Crew Warrior
			Ms = "Dragon Crew Warrior [Lv. 1575]"
			NameQuest = "AmazonQuest"
			QuestLv = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
			CFrameMon = CFrame.new(6301.9975585938, 104.77153015137, -1082.6075439453)
		elseif Lv == 1600 or Lv <= 1624 or SelectMonster == "Dragon Crew Archer [Lv. 1600]" then -- Dragon Crew Archer
			Ms = "Dragon Crew Archer [Lv. 1600]"
			NameQuest = "AmazonQuest"
			QuestLv = 2
			NameMon = "Dragon Crew Archer"
			CFrameQ = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
			CFrameMon = CFrame.new(6831.1171875, 441.76708984375, 446.58615112305)
		elseif Lv == 1625 or Lv <= 1649 or SelectMonster == "Female Islander [Lv. 1625]" then -- Female Islander
			Ms = "Female Islander [Lv. 1625]"
			NameQuest = "AmazonQuest2"
			QuestLv = 1
			NameMon = "Female Islander"
			CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(5792.5166015625, 848.14392089844, 1084.1818847656)
		elseif Lv == 1650 or Lv <= 1699 or SelectMonster == "Giant Islander [Lv. 1650]" then -- Giant Islander
			Ms = "Giant Islander [Lv. 1650]"
			NameQuest = "AmazonQuest2"
			QuestLv = 2
			NameMon = "Giant Islander"
			CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(5009.5068359375, 664.11071777344, -40.960144042969)
		elseif Lv == 1700 or Lv <= 1724 or SelectMonster == "Marine Commodore [Lv. 1700]" then -- Marine Commodore
			Ms = "Marine Commodore [Lv. 1700]"
			NameQuest = "MarineTreeIsland"
			QuestLv = 1
			NameMon = "Marine Commodore"
			CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, -7109.5043945313)
		elseif Lv == 1725 or Lv <= 1774 or SelectMonster == "Marine Rear Admiral [Lv. 1725]" then -- Marine Rear Admiral
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NameQuest = "MarineTreeIsland"
			QuestLv = 2
			NameMon = "Marine Rear Admiral"
			CFrameQ = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, -7048.6342773438)
		elseif Lv == 1775 or Lv <= 1799 or SelectMonster == "Fishman Raider [Lv. 1775]" then -- Fishman Raide
			Ms = "Fishman Raider [Lv. 1775]"
			NameQuest = "DeepForestIsland3"
			QuestLv = 1
			NameMon = "Fishman Raider"
			CFrameQ = CFrame.new(-10582.759765625, 331.78845214844, -8757.666015625)
			CFrameMon = CFrame.new(-10553.268554688, 521.38439941406, -8176.9458007813)
		elseif Lv == 1800 or Lv <= 1824 or SelectMonster == "Fishman Captain [Lv. 1800]" then -- Fishman Captain
			Ms = "Fishman Captain [Lv. 1800]"
			NameQuest = "DeepForestIsland3"
			QuestLv = 2
			NameMon = "Fishman Captain"
			CFrameQ = CFrame.new(-10583.099609375, 331.78845214844, -8759.4638671875)
			CFrameMon = CFrame.new(-10789.401367188, 427.18637084961, -9131.4423828125)
		elseif Lv == 1825 or Lv <= 1849 or SelectMonster == "Forest Pirate [Lv. 1825]" then -- Forest Pirate
			Ms = "Forest Pirate [Lv. 1825]"
			NameQuest = "DeepForestIsland"
			QuestLv = 1
			NameMon = "Forest Pirate"
			CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
			CFrameMon = CFrame.new(-13489.397460938, 400.30349731445, -7770.251953125)
		elseif Lv == 1850 or Lv <= 1899 or SelectMonster == "Mythological Pirate [Lv. 1850]" then -- Mythological Pirate
			Ms = "Mythological Pirate [Lv. 1850]"
			NameQuest = "DeepForestIsland"
			QuestLv = 2
			NameMon = "Mythological Pirate"
			CFrameQ = CFrame.new(-13232.662109375, 332.40396118164, -7626.4819335938)
			CFrameMon = CFrame.new(-13508.616210938, 582.46228027344, -6985.3037109375)
		elseif Lv == 1900 or Lv <= 1924 or SelectMonster == "Jungle Pirate [Lv. 1900]" then -- Jungle Pirate
			Ms = "Jungle Pirate [Lv. 1900]"
			NameQuest = "DeepForestIsland2"
			QuestLv = 1
			NameMon = "Jungle Pirate"
			CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
			CFrameMon = CFrame.new(-12267.103515625, 459.75262451172, -10277.200195313)
		elseif Lv == 1925 or Lv <= 1974 or SelectMonster == "Musketeer Pirate [Lv. 1925]" then -- Musketeer Pirate
			Ms = "Musketeer Pirate [Lv. 1925]"
			NameQuest = "DeepForestIsland2"
			QuestLv = 2
			NameMon = "Musketeer Pirate"
			CFrameQ = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
			CFrameMon = CFrame.new(-13291.5078125, 520.47338867188, -9904.638671875)
		elseif Lv == 1975 or Lv <= 1999 or SelectMonster == "Reborn Skeleton [Lv. 1975]" then -- Reborn Skeleton
			Ms = "Reborn Skeleton [Lv. 1975]"
			NameQuest = "HauntedQuest1"
			QuestLv = 1
			NameMon = "Reborn Skeleton"
			CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
			CFrameMon = CFrame.new(-8761.77148, 183.431747, 6168.33301, 0.978073597, -1.3950732e-05, -0.208259016, -1.08073925e-06, 1, -7.20630269e-05, 0.208259016, 7.07080399e-05, 0.978073597)
		elseif Lv == 2000 or Lv <= 2024 or SelectMonster == "Living Zombie [Lv. 2000]" then -- Living Zombie
			Ms = "Living Zombie [Lv. 2000]"
			NameQuest = "HauntedQuest1"
			QuestLv = 2
			NameMon = "Living Zombie"
			CFrameQ = CFrame.new(-9480.80762, 142.130661, 5566.37305, -0.00655503059, 4.52954225e-08, -0.999978542, 2.04920472e-08, 1, 4.51620679e-08, 0.999978542, -2.01955679e-08, -0.00655503059)
			CFrameMon = CFrame.new(-10103.7529, 238.565979, 6179.75977, 0.999474227, 2.77547141e-08, 0.0324240364, -2.58006327e-08, 1, -6.06848474e-08, -0.0324240364, 5.98163865e-08, 0.999474227)
		elseif Lv == 2025 or Lv <= 2049 or SelectMonster == "Demonic Soul [Lv. 2025]" then -- Demonic Soul
			Ms = "Demonic Soul [Lv. 2025]"
			NameQuest = "HauntedQuest1"
			QuestLv = 1
			NameMon = "Demonic Soul"
			CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
			CFrameMon = CFrame.new(-9709.30762, 204.695892, 6044.04688, -0.845798075, -3.4587876e-07, -0.533503294, -4.46235369e-08, 1, -5.77571257e-07, 0.533503294, -4.64701827e-07, -0.845798075)
		elseif Lv >= 2050 or Lv <= 2074 or SelectMonster == "Posessed Mummy [Lv. 2050]" then -- Posessed Mummy
			Ms = "Posessed Mummy [Lv. 2050]"
			NameQuest = "HauntedQuest2"
			QuestLv = 2
			NameMon = "Posessed Mummy"
			CFrameQ = CFrame.new(-9515.39551, 172.266037, 6078.89746, 0.0121199936, -9.78649624e-08, 0.999926567, 2.30358754e-08, 1, 9.75929382e-08, -0.999926567, 2.18513581e-08, 0.0121199936)
			CFrameMon = CFrame.new(-9554.11035, 65.6141663, 6041.73584, -0.877069294, 5.33355795e-08, -0.480364174, 2.06420765e-08, 1, 7.33423562e-08, 0.480364174, 5.44105987e-08, -0.877069294)
		elseif Lv >= 2075 or Lv <= 2099 or SelectMonster == "Peanut Scout [Lv. 2075]" then -- Peanut Scout
			Ms = "Peanut Scout [Lv. 2075]"
			NameQuest = "PeanutQuest1"
			QuestLv = 1
			NameMon = "Peanut Scout"
			CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
			CFrameMon = CFrame.new(-2068.0949707031, 76.512603759766, -10117.150390625)
		elseif Lv >= 2100 or Lv <= 2124 or SelectMonster == "Peanut President [Lv. 2100]" then -- Peanut President
			Ms = "Peanut President [Lv. 2100]"
			NameQuest = "PeanutQuest2"
			QuestLv = 2
			NameMon = "Peanut President"
			CFrameQ = CFrame.new(-2104.453125, 38.129974365234, -10194.0078125)
			CFrameMon = CFrame.new(-2067.33203125, 90.557350158691, -10552.051757812)
		elseif Lv >= 2125 or Lv <= 2149 or SelectMonster == "Ice Cream Chef [Lv. 2125]" then --Ice Cream Chef
			Ms = "Ice Cream Chef [Lv. 2125]"
			NameQuest = "IceCreamQuest1"
			QuestLv = 1
			NameMon = "	Ice Cream Chef"
			CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
			CFrameMon = CFrame.new(-796.37261962891, 110.95275878906, -10847.473632812)
		elseif Lv >= 2150 or SelectMonster == "Ice Cream Commander [Lv. 2150]" then -- Ice Cream Commander
			Ms = "Ice Cream Commander [Lv. 2150]"
			NameQuest = "IceCreamQuest2"
			QuestLv = 2
			NameMon = "Ice Cream Commander"
			CFrameQ = CFrame.new(-821.35913085938, 65.845329284668, -10965.2578125)
			CFrameMon = CFrame.new(-697.65338134766, 174.48368835449, -11218.38671875)
        end
	end
end
-------------------------------------------------------------------------------------------------------------------------------------------------- Boss
function CheckBossQuest()
    if Old_World then
        if SelectBoss == "The Gorilla King [Lv. 25] [Boss]" then
            BossMon = "The Gorilla King [Lv. 25] [Boss]"
            NameQuestBoss = "JungleQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$2,000\n7,000 Exp."
            CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
            CFrameBoss = CFrame.new(-1142.6488037109, 40.462348937988, -515.39227294922)
        elseif SelectBoss == "Bobby [Lv. 55] [Boss]" then
            BossMon = "Bobby [Lv. 55] [Boss]"
            NameQuestBoss = "BuggyQuest1"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$8,000\n35,000 Exp."
            CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
            CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
        elseif SelectBoss == "The Saw [Lv. 100] [Boss]" then
            BossMon = "The Saw [Lv. 100] [Boss]"
            CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
        elseif SelectBoss == "Yeti [Lv. 110] [Boss]" then
            BossMon = "Yeti [Lv. 110] [Boss]"
            NameQuestBoss = "SnowQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
        elseif SelectBoss == "Mob Leader [Lv. 120] [Boss]" then
            BossMon = "Mob Leader [Lv. 120] [Boss]"
            CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
        elseif SelectBoss == "Vice Admiral [Lv. 130] [Boss]" then
            BossMon = "Vice Admiral [Lv. 130] [Boss]"
            NameQuestBoss = "MarineQuest2"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n180,000 Exp."
            CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
            CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
        elseif SelectBoss == "Warden [Lv. 175] [Boss]" then
            BossMon = "Warden [Lv. 175] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 1
            RewardBoss = "Reward:\n$6,000\n600,000 Exp."
            CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
            CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
		elseif SelectBoss == "Saber Expert [Lv. 200] [Boss]" then
			BossMon = "Saber Expert [Lv. 200] [Boss]"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
        elseif SelectBoss == "Chief Warden [Lv. 200] [Boss]" then
            BossMon = "Chief Warden [Lv. 200] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 2
            RewardBoss = "Reward:\n$10,000\n700,000 Exp."
            CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
            CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
        elseif SelectBoss == "Flamingo [Lv. 225] [Boss]" then
            BossMon = "Flamingo [Lv. 225] [Boss]"
            NameQuestBoss = "ImpelQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n1,300,000 Exp."
            CFrameQBoss = CFrame.new(4853.283203125, 5.6783537864685, 745.13970947266)
            CFrameBoss = CFrame.new(5020.9438476563, 88.67887878418, 756.89392089844)
        elseif SelectBoss == "Magma Admiral [Lv. 350] [Boss]" then
            BossMon = "Magma Admiral [Lv. 350] [Boss]"
            NameQuestBoss = "MagmaQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
            CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
            CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
        elseif SelectBoss == "Fishman Lord [Lv. 425] [Boss]" then
            BossMon = "Fishman Lord [Lv. 425] [Boss]"
            NameQuestBoss = "FishmanQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
        elseif SelectBoss == "Wysper [Lv. 500] [Boss]" then
            BossMon = "Wysper [Lv. 500] [Boss]"
            NameQuestBoss = "SkyExp1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
            CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
            CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
        elseif SelectBoss == "Thunder God [Lv. 575] [Boss]" then
            BossMon = "Thunder God [Lv. 575] [Boss]"
            NameQuestBoss = "SkyExp2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
            CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
            CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
        elseif SelectBoss == "Cyborg [Lv. 675] [Boss]" then
            BossMon = "Cyborg [Lv. 675] [Boss]"
            NameQuestBoss = "FountainQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
            CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
        elseif SelectBoss == "Greybeard [Lv. 750] [Raid Boss]" then
            BossMon = "Greybeard [Lv. 750] [Raid Boss]"
            CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
        end
    end
    if New_World then
        if SelectBoss == "Diamond [Lv. 750] [Boss]" then
            BossMon = "Diamond [Lv. 750] [Boss]"
            NameQuestBoss = "Area1Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
            CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
            CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
        elseif SelectBoss == "Jeremy [Lv. 850] [Boss]" then
            BossMon = "Jeremy [Lv. 850] [Boss]"
            NameQuestBoss = "Area2Quest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
            CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
        elseif SelectBoss == "Fajita [Lv. 925] [Boss]" then
            BossMon = "Fajita [Lv. 925] [Boss]"
            NameQuestBoss = "MarineQuest3"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
            CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
            CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
        elseif SelectBoss == "Don Swan [Lv. 1000] [Boss]" then
            BossMon = "Don Swan [Lv. 1000] [Boss]"
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
        elseif SelectBoss == "Smoke Admiral [Lv. 1150] [Boss]" then
            BossMon = "Smoke Admiral [Lv. 1150] [Boss]"
            NameQuestBoss = "IceSideQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
            CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
            CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
        elseif SelectBoss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
            BossMon = "Awakened Ice Admiral [Lv. 1400] [Boss]"
            NameQuestBoss = "FrostQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
            CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
        elseif SelectBoss == "Tide Keeper [Lv. 1475] [Boss]" then
            BossMon = "Tide Keeper [Lv. 1475] [Boss]"
            NameQuestBoss = "ForgottenQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
            CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
            CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
        elseif SelectBoss == "Darkbeard [Lv. 1000] [Raid Boss]" then
            BossMon = "Darkbeard [Lv. 1000] [Raid Boss]"
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
		elseif SelectBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
			BossMon = "Cursed Captain [Lv. 1325] [Raid Boss]"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
		elseif SelectBoss == "Order [Lv. 1250] [Raid Boss]" then
			BossMon = "Order [Lv. 1250] [Raid Boss]"
			CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
        end
    end
	if Three_World then
		if SelectBoss == "Stone [Lv. 1550] [Boss]" then
			BossMon = "Stone [Lv. 1550] [Boss]"
			NameQuestBoss = "PiratePortQuest"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
            CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
            CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
		elseif SelectBoss == "Island Empress [Lv. 1675] [Boss]" then
			BossMon = "Island Empress [Lv. 1675] [Boss]"
			NameQuestBoss = "AmazonQuest2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
            CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
            CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
		elseif SelectBoss == "Kilo Admiral [Lv. 1750] [Boss]" then
			BossMon = "Kilo Admiral [Lv. 1750] [Boss]"
			NameQuestBoss = "MarineTreeIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
            CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
            CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
		elseif SelectBoss == "Captain Elephant [Lv. 1875] [Boss]" then
			BossMon = "Captain Elephant [Lv. 1875] [Boss]"
			NameQuestBoss = "DeepForestIsland"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
            CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
            CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
		elseif SelectBoss == "Beautiful Pirate [Lv. 1950] [Boss]" then
			BossMon = "Beautiful Pirate [Lv. 1950] [Boss]"
            NameQuestBoss = "DeepForestIsland2"
            QuestLvBoss = 3
            RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
            CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
		elseif SelectBoss == "Longma [Lv. 2000] [Boss]" then
			BossMon = "Longma [Lv. 2000] [Boss]"
			CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
        elseif SelectBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
            BossMon = "Soul Reaper [Lv. 2100] [Raid Boss]"
            CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
		elseif SelectBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
			BossMon = "rip_indra True Form [Lv. 5000] [Raid Boss]"
			CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
		end
	end
end


function TP2(P1)
	Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 1000 then
		Speed = 500
	elseif Distance >= 1000 then
		Speed = 350
	end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
    Clip = true
    wait(Distance/Speed)
    Clip = false
end

function TP3(P1)
	Distance = (P1.CFrame - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame).Magnitude
	if Distance < 1000 then
		Speed = 500
	elseif Distance >= 1000 then
		Speed = 350
	end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
    Clip = true
    wait(Distance/Speed)
    Clip = false
end


spawn(function()
    while wait() do 
    pcall(function()
    if  _G.Auto_Farm == true or Clip == true or _G.FarmMasteryFruit == true or _G.BuddySword == true then
    local Xd = Instance.new("Part")
    Xd.Name = "xd"
    Xd.Parent = game.Workspace
    Xd.Anchored = true
    Xd.Transparency = 0
    Xd.Color = Color3.fromRGB(255, 155, 0)
    Xd.Size = Vector3.new(15,0.5,15)
    Xd.Material = "Neon"
    Xd.Transparency = 1


    game.Workspace["xd"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3.92,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)

else
    if game:GetService("Workspace").xd then
        game:GetService("Workspace").xd:Destroy()
    end
end
    end)
    end
    end)

function TP(P1)
    Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 100 then
        Speed = 500
    elseif Distance < 300 then
        Speed = 300
    elseif Distance < 1000 then
        Speed = 300
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P1}
    ):Play()
end

function BringMon()
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        for i2,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do    
            if v.Name == Ms and (v.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).magnitude <= 150 then
                if v2.Name == Ms and (v.HumanoidRootPart.Position - v2.HumanoidRootPart.Position).magnitude <= 150 then
                                    --v.HumanoidRootPart.Anchored = true
                                    --_G.PosMon = v.HumanoidRootPart.CFrame
                                    v2.HumanoidRootPart.CFrame = _G.PosMon
                                   -- v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                    v2.HumanoidRootPart.Size = Vector3.new(1,1,1)
                                   -- v.HumanoidRootPart.Transparency = 1
                                    v2.HumanoidRootPart.Transparency = 1
                                   -- v.Humanoid:ChangeState(11)
                                    v2.Humanoid:ChangeState(11)
                                   -- v.HumanoidRootPart.CanCollide = false
                                    --v.Head.CanCollide = false
                                    v2.Head.CanCollide = false
                                    v2.HumanoidRootPart.CanCollide = false
                                  --  v.Humanoid.WalkSpeed = 0
                                    v2.Humanoid.WalkSpeed = 0
                                  --  v.HumanoidRootPart.Anchored = false
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end
    end

spawn(function()
    for i = 1,math.huge do game:GetService("RunService").RenderStepped:Wait()
        if _G.Hoi == true then
            for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
                if x.Name == Ms and x:FindFirstChild("HumanoidRootPart") and x:FindFirstChild("Humanoid") and x.Humanoid.Health > 0 and (x.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                    x.HumanoidRootPart.CanCollide = false
                    x.Head.CanCollide = false
                    x.HumanoidRootPart.CFrame = _G.PosMon
                    x.HumanoidRootPart.Size = Vector3.new(1,1,1)
                    x.HumanoidRootPart.Transparency = 1
                    x.Humanoid:ChangeState(11)
                    x.Humanoid.WalkSpeed = 0
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end 
            end
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
spawn(function()
        while wait() do
            pcall(function()
                if _G.Auto_Farm == true then
                    if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
        				CheckLevel()
        				TP(CFrameQ)
        				if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
        					wait(1.1)
        					CheckLevel()
        					if (CFrameQ.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
        						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv)
        					    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
        					else
        						TP(CFrameQ)
        					end
        				end
                    elseif game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        pcall(function()
                        CheckLevel()
                         for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                         if  v.Name == Ms then
                             _G.PosMon = v.HumanoidRootPart.CFrame
                             v.HumanoidRootPart.Size = Vector3.new(1,1,1)
                             v.Humanoid:ChangeState(11)
                             v.HumanoidRootPart.CanCollide = false
                             v.Head.CanCollide = false
                        repeat wait(0.1)
                            pcall(function()
                            if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
								if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        _G.Hoi = true
                                        BringMon()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                           local args = {
                                            [1] = "Buso"
                                            }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        TP(_G.PosMon * CFrame.new(0,25,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
                            end
                                        end)
                        until _G.Auto_Farm == false or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                                        end
                            end
                        end)
                end
                end
            end)
        end
end)



local CombatShaker = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
local CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework) 
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
spawn(function()
    for i = 1,math.huge do
        game:GetService("RunService").RenderStepped:wait()
            if _G.FastAttack1 then
                pcall(function()
                    maxincrement = i
                    CameraShakerR:Stop()
                    CombatShaker.CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut =  2,Sustained = 0,Inactive = 1} 
                    CombatFrameworkR.activeController.attacking = false
                    CombatFrameworkR.activeController.timeToNextAttack = 0
                    CombatFrameworkR.activeController.increment = 3
                    CombatFrameworkR.activeController.hitboxMagnitude = 100
                    CombatFrameworkR.activeController.blocking = false
                    CombatFrameworkR.activeController.timeToNextBlock = 0
                end)
            end
        game:GetService("RunService").RenderStepped:wait()
    end
end)


-------------------------------------------------------------------------------------------------------------------------------------------------- Stats
_G.Melee = false
_G.Sword = false
_G.Defense = false
_G.Gun = false
_G.DevilFruit = false
StatsC:Toggle("Melee",def,_G.Melee,function(vu)
    _G.Melee = vu
end)
StatsC:Toggle("Sword",def,_G.Sword,function(vu)
    _G.Sword = vu
end)
StatsC:Toggle("Defense",def,_G.Defense,function(vu)
    _G.Defense = vu
end)
StatsC:Toggle("Gun",def,_G.Gun,function(vu)
    _G.Gun = vu
end)
StatsC:Toggle("DevilFruit",def,_G.DevilFruit,function(vu)
    _G.DevilFruit = vu
end)

local Stats = StatsC:Slider("Point", 1,50,10,1,"Point", function(Point)
    _G.SelectPoint = Point
end)

spawn(function()
	while game:GetService("RunService").Heartbeat:wait() do
		Level:Refresh("Point : "..tostring(game:GetService("Players").LocalPlayer.Data.Points.Value))
	end
end)

spawn(function()
	while wait(.1) do
		if _G.Melee then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee", _G.SelectPoint)
		end
	end
end)

spawn(function()
	while wait(.1) do
		if _G.Defense then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense", _G.SelectPoint)
		end
	end
end)

spawn(function()
	while wait(.1) do
		if _G.Sword then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword", _G.SelectPoint)
		end
	end
end)

spawn(function()
	while wait(.1) do
		if _G.Gun then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun", _G.SelectPoint)
		end
	end
end)

spawn(function()
	while wait(.1) do
		if _G.DevilFruit then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Demon Fruit", _G.SelectPoint)
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------- Weapon
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end

_G.SelectWeapon = "Black Leg"
-------------------------------------------------------------------------------------------------------------------------------------------------- New_World

spawn(function()
    while wait(.1) do
        if Auto_Newworld then
            local Lv = game.Players.LocalPlayer.Data.Level.Value
            if Lv >= 700 and Old_World then
                _G.Auto_Farm = false
                if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                    TP2(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563))
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                    EquipWeapon("Key")
                    TP2(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                    wait(3)
                elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                repeat game:GetService("RunService").Heartbeat:wait()
                                    pcall(function()
                                        EquipWeapon(_G.SelectWeapon)
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0, 25, 25))
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = .8
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                    end)
                                until v.Humanoid.Health <= 0 or not v.Parent
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            end
                        end
                    else
                        TP2(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                end
            end
        end
    end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------- Redeem
spawn(function()
	pcall(function()
		while wait() do
			if _G.Redeem and game.Players.LocalPlayer.Data.Level.Value >= 850 then
				function UseCode(Text)
					game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
				end
                UseCode("UPD16")
                UseCode("2BILLION")
                UseCode("UPD15")
                UseCode("FUDD10")
                UseCode("BIGNEWS")
                UseCode("THEGREATACE")
                UseCode("SUB2GAMERROBOT_EXP1")
                UseCode("StrawHatMaine")
                UseCode("Sub2OfficialNoobie")
                UseCode("SUB2NOOBMASTER123")
                UseCode("Sub2Daigrock")
                UseCode("Axiore")
                UseCode("TantaiGaming")
                UseCode("STRAWHATMAINE")
			end
		end
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------------------------- Hop
spawn(function()
    while game:GetService("RunService").Heartbeat:wait() do
        pcall(function()
            if _G.BuddySword == true then
                SelectBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
                CheckBossQuest()
                if (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                    if game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
    					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    						if v.Name == BossMon then
    						    repeat wait()
        						    pcall(function()
        						        if v.Humanoid.Health <= 0 then
        						            Teleport()
        						        end
        						        _G.FastAttack1 = true
                                        EquipWeapon(_G.SelectWeapon)
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            local args = {
                                            [1] = "Buso"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                        TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        						    end)
                                 until v.Humanoid.Health <= 0
    						end
    					end
    				else
    				    wait(10)
    				    if not game:GetService("Workspace").Enemies:FindFirstChild(SelectBoss) then
    				        Teleport()
    				    end
                    end
                elseif (CFrameBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                    TP2(CFrameBoss)
                    wait(3)
                end
	       end
        end)
    end
end)

-------------------------------------------------------------------------------------------------------------------------------------------------- Teleport

local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
	AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
	table.insert(AllIDs, actualHour)
	writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
	local Site;
	if foundAnything == "" then
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
	else
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
	end
	local ID = ""
	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
		foundAnything = Site.nextPageCursor
	end
	local num = 0;
	for i,v in pairs(Site.data) do
		local Possible = true
		ID = tostring(v.id)
		if tonumber(v.maxPlayers) > tonumber(v.playing) then
			for _,Existing in pairs(AllIDs) do
				if num ~= 0 then
					if ID == tostring(Existing) then
						Possible = false
					end
				else
				if tonumber(actualHour) ~= tonumber(Existing) then
					local delFile = pcall(function()
						--delfile("NotSameServers.json")
						AllIDs = {}
						table.insert(AllIDs, actualHour)
					end)
				end
			end
			num = num + 1
		end
		if Possible == true then
			table.insert(AllIDs, ID)
			wait()
			pcall(function()
				--writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
				wait()
				game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
			end)
			end
		end
	end
end

function Teleport()
	while wait() do
		pcall(function()
			TPReturner()
			if foundAnything ~= "" then
				TPReturner()
			end
		end)
	end
end

function HopLowerServer()
	local maxplayers, gamelink, goodserver, data_table = math.huge, "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
	if not _G.FailedServerID then _G.FailedServerID = {} end
	local function serversearch()
		data_table = game:GetService"HttpService":JSONDecode(game:HttpGetAsync(gamelink))
		for _, v in pairs(data_table.data) do
			pcall(function()
				if type(v) == "table" and v.id and v.playing and tonumber(maxplayers) > tonumber(v.playing) and not table.find(_G.FailedServerID, v.id) then
					maxplayers = v.playing
					goodserver = v.id
				end
			end)
		end
	end
	function getservers()
		pcall(serversearch)
		for i, v in pairs(data_table) do
			if i == "nextPageCursor" then
				if gamelink:find"&cursor=" then
					local a = gamelink:find"&cursor="
					local b = gamelink:sub(a)
					gamelink = gamelink:gsub(b, "")
				end
				gamelink = gamelink .. "&cursor=" .. v
				pcall(getservers)
			end
		end
	end
	pcall(getservers)
	if goodserver == game.JobId or maxplayers == #game:GetService"Players":GetChildren() - 1 then
	end
	table.insert(_G.FailedServerID, goodserver)
	game:GetService"TeleportService":TeleportToPlaceInstance(game.PlaceId, goodserver)
end

-------------------------------------------------------------------------------------------------------------------------------------------------- Class
	
	
	-------------------------------------------------------------------------------------------------------------------------------------------------- Auto Buy
spawn(function()
    while wait(3) do
        local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
        if Lv >= 600 and not Ko == true then
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
             wait(1)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
             wait(1)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
             wait(1)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
             wait(3)
             Ko = true
        end
        if _G.AutoLegendarySword == true then
					local args = {
						[1] = "LegendarySwordDealer",
						[2] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
