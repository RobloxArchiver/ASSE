--> ASSE Data
getgenv().asse = { data = {}, version = "0.0.1", clonefunctions = {} } --> ASSE Global Table
local Data = asse.data
local clonefunctions = asse.clonefunctions

Data = {
    MainFolder = "ASSE",
    SoundFolder = "ASSE/Sounds",
    ImageFolder = "ASSE/Images"
}

--> Cloned Functions for reuse
local clonefunc = clonefunction
clonefunctions.print_c = clonefunc(print)
clonefunctions.error_c = clonefunc(error)
clonefunctions.pcall_c = clonefunc(pcall)

--> Variables
local Workspace = game.Workspace
local ReplicatedStorage = game.ReplicatedStorage
local Players = game.Players
local FindFirstChild = game.FindFirstChild
local GetChildren = game.GetChildren
local FindFirstChildWhichIsA = game.FindFirstChildWhichIsA
local IsA = game.IsA
local GetDescendants = game.GetDescendants
local PlaceId = game.PlaceId
local Kick = function(s) game.Players.LocalPlayer:Kick(s) end

--> Print and Error Functions are loaded first before ANYTHING else.
asse.print = function(...)
    clonefunctions.print_c("ASSE: " .. ...)
end

asse.error = function(...)
    clonefunctions.error_c("ASSE: " .. ...)
end

--[[

    Checks

]]

if PlaceId == 11558029992 then
    asse.print("Failed to Load")
    Kick("Sorry, this is the Multiplayer version.")
    return
end

if not isfolder(Data.MainFolder) then
    makefolder(Data.MainFolder) 
    asse.print("(FileSystem) Creating '" .. Data.MainFolder .. "'")
elseif isfolder(Data.MainFolder) then
    asse.print("(FileSystem) Found '" .. Data.MainFolder .. "'")
end

if not isfolder(Data.SoundFolder) then
    makefolder(Data.SoundFolder)
    asse.print("(FileSystem) Creating '" .. Data.SoundFolder .. "'")
elseif isfolder(Data.SoundFolder) then
    asse.print("(FileSystem) Found '" .. Data.SoundFolder .. "'")
end

if not isfolder(Data.ImageFolder) then
    makefolder(Data.ImageFolder)
    asse.print("(FileSystem) Creating '" .. Data.ImageFolder .. "'")
elseif isfolder(Data.ImageFolder) then
    asse.print("(FileSystem) Found '" .. Data.SoundFolder .. "'")
end

--[[

    Functions

]]

function asse.makefile(fileName, value)
    local success
    local err
    
    if not pcall(function() isfile(Data.MainFolder .. fileName) end) then
        success, err = pcall_c(function() writefile(Data.MainFolder .. fileName, tostring(value)) end)
    end
    
    if not success and err then
        asse.error("'asse.makefolder' " .. err)
    end
end
