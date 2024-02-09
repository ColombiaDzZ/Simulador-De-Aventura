-- Constants
local ID = "kalandra.investigar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Praia de Kalandra"
node.description = "Você explora a região e encontra uma trilha que leva a uma inóspita caverna, que também parece vazia e abandonada. Nas paredes da caverna existem escrituras sobre a Lenda do Kraken, e desenhos que te dão a entender que existe uma magia que pode derrota-lo."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.tomar_um_sol",
    "%{magenta}Kraken? Magia?%{white} O que é isso, um filme de %{green}aventura?%{white} Deixar essa bobagem de lado e volte para a praia pra tomar um %{yellow}sol."
))
table.insert(node.choices, Choice:new(
    "kalandra.explorar_caverna",
    "%{blue}Incrível!%{white} Explorar a caverna mais a fundo para decifrar seus %{red}mistérios."
))
table.insert(node.choices, Choice:new(
    "kalandra.kraken_game_over",
    "%{white}Todo esse pavor por causa de um %{magenta}polvo?%{white} Voltar para a praia e dar um %{cyan}mergulho no mar%{white} pra provar que isso não existe."
))

return node