-- thx kinlei for material xoxo
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
    Title = "Local"
})

local Z = X.New({
    Title = "Server Crasher"
})

local Z = X.New({
    Title = "Combat"
})

local Z = X.New({
    Title = "Radar"
})

local Z = X.New({
    Title = "FE scripts"
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
                Text = "Infinite Jump"
            })
        end
    }
})

local A = Z.Button({
    Text = "Unlock workspace For Btools",
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
                Text = "Infinite Jump"
            })
        end
    }
})
