-- Tora UI Load
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lunqvex/Library-/refs/heads/main/Latest"))()
local window = library:CreateWindow("Codura Hub | Interaction Tools")
local folder = window:AddFolder("Interaction") 

local lp = game.Players.LocalPlayer 

-- 🔥 FUNCTION: Fire TouchInterest 

local function fireTouchInterest(part)
if part:IsA("BasePart") then
for _, d in ipairs(part:GetChildren()) do
if d:IsA("TouchTransmitter") or d.Name == "TouchInterest" then
firetouchinterest(lp.Character.HumanoidRootPart, part, 0)
firetouchinterest(lp.Character.HumanoidRootPart, part, 1)
end
end
end
end 

local function scanAndFireTouch()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("BasePart") then
for _, d in ipairs(obj:GetChildren()) do
if d:IsA("TouchTransmitter") or d.Name == "TouchInterest" then
fireTouchInterest(obj)
end
end
end
end
end 

-- 🔘 BUTTON 1: FIRE ALL TOUCH INTERESTS 

folder:AddButton({
text = "🔥 Fire ALL TouchInterest",
callback = function()
scanAndFireTouch()
print("All TouchInterest fired!")
end
}) 

-- 🔵 FUNCTION: Fire ProximityPrompt (Normal) 

local function firePrompt(prompt)
pcall(function()
fireproximityprompt(prompt)
end)
end 

-- 🔵 BUTTON 2: FIRE ALL PROXIMITY PROMPTS (Normal) 

folder:AddButton({
text = "🔵 Fire All Proximity Prompts",
callback = function()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("ProximityPrompt") then
firePrompt(obj)
end
end
print("All proximity prompts fired!")
end
}) 

-- ⚡ VERSION 2: INSTANT PROXIMITY PROMPT (No Hold Time) 

local function instantPrompt(prompt)
pcall(function()
local old = prompt.HoldDuration
prompt.HoldDuration = 0
fireproximityprompt(prompt)
prompt.HoldDuration = old
end)
end 

-- ⚡ BUTTON 3: FIRE ALL PROMPTS INSTANTLY 

folder:AddButton({
text = "⚡ Instant Proximity Fire (No Hold)",
callback = function()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("ProximityPrompt") then
instantPrompt(obj)
end
end
print("All prompts fired INSTANTLY!")
end
}) 

library:Init()


-- Tora UI Load
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/liebertsx/Tora-Library/main/src/librarynew"))()
local window = library:CreateWindow("Codura Hub | Interaction Tools")
local folder = window:AddFolder("Interaction") 

local lp = game.Players.LocalPlayer 

-- 🔥 FUNCTION: Fire TouchInterest 

local function fireTouchInterest(part)
if part:IsA("BasePart") then
for _, d in ipairs(part:GetChildren()) do
if d:IsA("TouchTransmitter") or d.Name == "TouchInterest" then
firetouchinterest(lp.Character.HumanoidRootPart, part, 0)
firetouchinterest(lp.Character.HumanoidRootPart, part, 1)
end
end
end
end 

local function scanAndFireTouch()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("BasePart") then
for _, d in ipairs(obj:GetChildren()) do
if d:IsA("TouchTransmitter") or d.Name == "TouchInterest" then
fireTouchInterest(obj)
end
end
end
end
end 

-- 🔘 BUTTON 1: FIRE ALL TOUCH INTERESTS 

folder:AddButton({
text = "🔥 Fire ALL TouchInterest",
callback = function()
scanAndFireTouch()
print("All TouchInterest fired!")
end
}) 

-- 🔵 FUNCTION: Fire ProximityPrompt (Normal) 

local function firePrompt(prompt)
pcall(function()
fireproximityprompt(prompt)
end)
end 

-- 🔵 BUTTON 2: FIRE ALL PROXIMITY PROMPTS (Normal) 

folder:AddButton({
text = "🔵 Fire All Proximity Prompts",
callback = function()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("ProximityPrompt") then
firePrompt(obj)
end
end
print("All proximity prompts fired!")
end
}) 

-- ⚡ VERSION 2: INSTANT PROXIMITY PROMPT (No Hold Time) 

local function instantPrompt(prompt)
pcall(function()
local old = prompt.HoldDuration
prompt.HoldDuration = 0
fireproximityprompt(prompt)
prompt.HoldDuration = old
end)
end 

-- ⚡ BUTTON 3: FIRE ALL PROMPTS INSTANTLY 

folder:AddButton({
text = "⚡ Instant Proximity Fire (No Hold)",
callback = function()
for _, obj in ipairs(workspace:GetDescendants()) do
if obj:IsA("ProximityPrompt") then
instantPrompt(obj)
end
end
print("All prompts fired INSTANTLY!")
end
}) 

library:Init()
