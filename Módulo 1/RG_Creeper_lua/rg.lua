--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

===================================================
|
| CREEPER
| Um monstro muito sagaz que explode na sua cara.
|
| Som: Tssssss
|
| Atributos:
|   Ataque: ########00
|   Defesa: ###0000000
|   ...
|
===================================================


]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Constantes
local TOP_BAR = "="
local SIDE_BAR = "| "

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "💥"
local sound = "Tssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- função que gera as barras de cima e de baixo
local function getHorizontalBars(amount)
    local bar = ""
    for i = 0, amount, 1 do
        bar = bar .. TOP_BAR
    end
    return bar
end

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print(getHorizontalBars(60))
print(SIDE_BAR)
print(SIDE_BAR .. monsterName)
print(SIDE_BAR .. description)
print(SIDE_BAR)
print(SIDE_BAR .. "Item: " .. item)
print(SIDE_BAR .. "Som: " .. sound)
print(SIDE_BAR .. "Emoji Favorito: " .. emoji)
print(SIDE_BAR .. "Horário Favorito: " .. favoriteTime)
print(SIDE_BAR)
print(SIDE_BAR .. "Atributos")
print(SIDE_BAR  ..  "Ataque:       " .. getProgressBar(attackAttribute))
print(SIDE_BAR  ..  "Defesa:       " .. getProgressBar(defenseAttribute))
print(SIDE_BAR  ..  "Vida:         " .. getProgressBar(lifeAttribute))
print(SIDE_BAR  ..  "Velocidade:   " .. getProgressBar(speedAttribute))
print(SIDE_BAR  ..  "Inteligência: " .. getProgressBar(inteligenceAttribute))
print(SIDE_BAR)
print(getHorizontalBars(60))