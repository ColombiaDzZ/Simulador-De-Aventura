-- Constants
local ID = "kalandra.buraco_estreito"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Calabouço de Kalandra"
node.description = [[Você chegou até a porta dourada! Ela é imponente e reluzente, e emana um poder incrível de alguma forma.
Você nota uma fechadura de ouro, que parece pedir uma chave equivalente.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.sucesso",
    "%{white}Usar a %{yellow}chave de ouro",
    function()
        return game.hasKey == true
    end
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "%{white}Voltar para a praia de %{yellow}Kalandra."
))
table.insert(node.choices, Choice:new(
    "kalandra.armadilha",
    "%{white}Tentar abrir a porta à %{blue}força."
))

return node