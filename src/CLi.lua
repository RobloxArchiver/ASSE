loadstring(syn.request({
    Url = "https://raw.githubusercontent.com/RobloxArchiver/rrkit_release/main/src/main.lua",
    Method = "GET"
}).Body)()

repeat
    wait()
until asse

console.print("Loading...")

function printc(...)
    console.print("[ASSE]: " .. ...)
end

handler:add("test", function()
    local oldPos = game.Players.LocalPlayer.HumanoidRootPart.CFrame
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9e9, 9e9, 9e9)
    console.error("Oops!")
    console.success("Sorry!")
    
    wait(5)
    
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldPos
    printc("There we go!")
    asse.print("Sorry about the CLi, currently nothing to add until other stuff are done. :(")
end)

console.clear()
console.print([[
  /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$$
 /$$__  $$ /$$__  $$ /$$__  $$| $$_____/
| $$  \ $$| $$  \__/| $$  \__/| $$      
| $$$$$$$$|  $$$$$$ |  $$$$$$ | $$$$$   
| $$__  $$ \____  $$ \____  $$| $$__/   
| $$  | $$ /$$  \ $$ /$$  \ $$| $$      
| $$  | $$|  $$$$$$/|  $$$$$$/| $$$$$$$$
|__/  |__/ \______/  \______/ |________/
]] .. "\n\n")

printc("Loaded | Type 'help' or '?' for basic information.")

handler:request()
