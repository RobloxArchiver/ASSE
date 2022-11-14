--> Settings
local debugger = true

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
