-- Gerador de senhas aleatorias

local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local numbers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local specials = {"#", "@", ">", "=", "<"}
local characterLists = {
    letters,
    numbers,
    specials
}

print("Quantos caracteres deseja na senha?")
local length = io.read("*n")

local password = ""
for i = 1, length, 1 do

    local listIndex = math.random(#characterLists)
    local list = characterLists[listIndex]

    local characterIndex = math.random(#list)
    local char = list[characterIndex]

    password = password .. char
end

print("Sua senha:")
print(password)