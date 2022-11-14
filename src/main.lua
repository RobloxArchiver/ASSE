--> Settings
local debugger = true

--> Cloned Functions for reuse
local clonefunc = clonefunction
local print_c = clonefunc(print)
local error_c = clonefunc(error)

--> Replace print with our own :cool:
print = function(...)
    if debugger == true then
        console.print(tostring(...))
    end

    print_c("AFTERSHOCK TOOLBOX: " .. ...)
end)

error = function(...)
    if debugger == true then
        console.error(tostring(...))
    end

    error_c("AFTERSHOCK TOOLBOX: " .. ...)
end)
