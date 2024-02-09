-- Constants
local ID = "nyff.floresta"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Nyffville"
node.description = [[Depois de muito andar você encontrou uma pequena e modesta vila no meio da %{green}floresta%{white}. Os Villagers te recebem com alegria! O banquete de hoje está garantido.
Depois de uma bela noite de sono, é hora de continuar a aventura. Um dos Villagers sugere que você siga a trilha que da a volta na montanha, pois é o caminho mais longo e também mais seguro.]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.trilha",
    "%{white}Seguir pela trilha que dá a volta na %{red}montanha."
))
table.insert(node.choices, Choice:new(
    "nyff.escalar",
    "%{white}Queremos chegar no topo ainda hoje, vamos escalar a %{red}montanha!"
))

return node