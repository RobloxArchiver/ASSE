--> ASSE Data
getgenv().asse = { data = {}, version = "0.0.1" } --> ASSE Global Table
local Data = asse.data
Data = {
    MainFolder = "ASSE",
    SoundFolder = MainFolder .. "/Sounds",
    ImageFolder = MainFolder .. "/Images"
}

--> Settings
local debugger = false

--> Cloned Functions for reuse
local clonefunc = clonefunction
local print_c = clonefunc(print)
local error_c = clonefunc(error)
local pcall_c = clonefunc(pcall)

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
    if rrkit_sdk and debugger == true then
        console.print(tostring(...))
    end

    print_c("ASSE: " .. ...)
end

asse.error = function(...)
    if rrkit_sdk and debugger == true then
        console.error(tostring(...))
    end

    error_c("ASSE: " .. ...)
end

--[[

    Checks

]]

if PlaceId == 11558029992 then
    asse.print("Failed to Load")
    Kick("Sorry, this is the Multiplayer version.")
    return
end

if PlaceId ~= 11470282325 or PlaceId ~= 11525845349 then
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
    asse.print("(FileSystem) Found '" ,, Data.SoundFolder .. "'")
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

function asse.isfile(fileName)
    local success
    local err
    
    if success, err = pcall(function() isfile(Data.MainFolder .. fileName) end) then
        return true
    else
        return false
    end
    
    if not success and err then
        asse.error("`asse.isfile` " .. err)
    end
end
