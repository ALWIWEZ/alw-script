local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local player = game:GetService("Players").LocalPlayer
local Input = game:GetService("UserInputService")

local Window = Rayfield:CreateWindow({
   Name = "ALWIWEZ script hub🐉",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "   ALWIWEZ SCRIPTS",
   LoadingSubtitle = "by AZIZXD",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "alw script key",
      Subtitle = "Key System",
      Note = "you need aziz to give you a key", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"nanai"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Player", nil) -- Title, Image


local MainSection = MainTab:CreateSection("🚅Speed")

local ButtonS = MainTab:CreateButton({
   Name = "Normal speed",
   Callback = function()
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.WalkSpeed = 16
   end,
})

local SliderS = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {10, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "SpeedSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.WalkSpeed = (Value)
   end,
})


local MainSection = MainTab:CreateSection("🦘Jump")

local ButtonJ = MainTab:CreateButton({
   Name = "Normal JumpPower",
   Callback = function()
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.JumpPower = 50
   end,
})

local SliderJ = MainTab:CreateSlider({
   Name = "JumpPower",
   Range = {50, 300},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "JumpSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.JumpPower = (Value)
   end,
})


local MainSection = MainTab:CreateSection("💖Health")

local SliderH = MainTab:CreateSlider({
   Name = "health",
   Range = {100, 50000},
   Increment = 100,
   Suffix = "Speed",
   CurrentValue = 100,
   Flag = "HealthSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local humanoid = character:WaitForChild("Humanoid")
      humanoid.Health = (Value)
   end,
})




local BloxFuits = Window:CreateTab("🐉BloxFuits🐉",nil)

local Slider = BloxFuits:CreateSlider({
   Name = "SpeedMultipliyer",
   Range = {1, 200},
   Increment = 1,
   Suffix = "SpeedMultipliyer",
   CurrentValue = 1,
   Flag = "SpeedMultipliyerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
         game.Players.LocalPlayer.Character:SetAttribute("SpeedMultiplier", Value)
   end,
})

