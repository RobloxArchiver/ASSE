loadstring(syn.request({ Url = "https://raw.githubusercontent.com/RobloxArchiver/rrkit_release/main/src/main.lua", Method = "GET" }).Body)()
loadstring(syn.request({ Url = "https://raw.githubusercontent.com/RobloxArchiver/ASSE/main/src/main.lua", Method = "GET" }).Body)()

repeat
    task.wait()
until asse

local function indent(str)
    return "    " .. str
end

local function getHelp()
    console.print("Commands")
    console.print(indent("'?' - Returns this page"))
    console.print(indent("'help' - Returns this page"))
end

handler:add("help", getHelp)
handler:add("?", getHelp)

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

console.print("Loaded | Type 'help' or '?' for commands")

handler:request()
