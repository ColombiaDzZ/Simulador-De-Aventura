-- Constants
local ID = "kalandra.mergulho"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description = "Durante seu mergulho você encontra um navio pirata submerso, a poucos metros de profundidade. Algumas bolhas de ar saem de dentro dele."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "%{white}Tomar um ar e %{cyan}mergulhar%{white} novamente para dar uma olhada mais de perto."
))
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "%{white}Ignorar o navio e continuar no mar aproveitando o dia."
))
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "%{white}Sinistro! Sair do %{cyan}mar%{white} e voltar para a %{yellow}praia.",
    nil,
    function()
        game.medoDoMar = true
    end
))

return node