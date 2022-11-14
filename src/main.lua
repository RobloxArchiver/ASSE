--> Settings
local debugger = true
local version = "0.1.0a"

--> File System
local MainFolder = "ASSE"
local SoundFolder = MainFolder .. "/Sounds"
local ImageFolder = MainFolder .. "/Images"

--> Cloned Functions for reuse
local clonefunc = clonefunction
local print_c = clonefunc(print)
local error_c = clonefunc(error)

--> Variables
local Workspace = game.Workspace
local ReplicatedStorage = game.ReplicatedStorage
local Players = game.Players
local FindFirstChild = game.FindFirstChild
local GetChildren = game.GetChildren

--> Replace print with our own :cool:
print = function(...)
    if rrkit_sdk and debugger == true then
        console.print(tostring(...))
    end

    print_c("ASSE: " .. ...)
end)

--> Also replace Error!
error = function(...)
    if rrkit_sdk and debugger == true then
        console.error(tostring(...))
    end

    error_c("ASSE: " .. ...)
end)

print([[

      /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$
     /$$__  $$ /$$__  $$ /$$__  $$| $$_____/
    | $$  \ $$| $$  \__/| $$  \__/| $$      
    | $$$$$$$$|  $$$$$$ |  $$$$$$ | $$$$$   
    | $$__  $$ \____  $$ \____  $$| $$__/   
    | $$  | $$ /$$  \ $$ /$$  \ $$| $$      
    | $$  | $$|  $$$$$$/|  $$$$$$/| $$$$$$$$
    |__/  |__/ \______/  \______/ |________/

]])

if not isfolder(MainFolder) then
    makefolder(MainFolder) print("(FileSystem) Creating '" .. MainFolder .. "'")
else 
    print("(FileSystem) Found '" MainFolder .. "'")
end

if not isfolder(SoundFolder) then
    makefolder(SoundFolder) print("(FileSystem) Creating '" .. SoundFolder .. "'")
else 
    print("(FileSystem) Found '" .. SoundFolder .. "'")
end
