-- Constants
local ID = "kalandra.explorar_caverna"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Calabouço de Kalandra"
node.description = "%{white}Você encontra um calabouço %{blue}secreto que parece não ser visitado por centenas de anos. Você está de frente para um longo porém estreito corredor, e tudo de diz que existem armadilhas escondidas nesse lugar. Há uma %{yellow}porta dourada%{white} do outro lado desse corredor, mas também existem diversas passagens ao seu lado."

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.armadilha",
    "%{white}Seguir pelo corredor, as %{blue}armadilhas%{white} provavelmente não funcionam mais depois de tanto tempo."
))
table.insert(node.choices, Choice:new(
    "kalandra.buraco_estreito",
    "%{white}Seguir pela esquerda por um estreito %{black}buraco%{white} na parede que parece levar até algum lugar."
))
table.insert(node.choices, Choice:new(
    "kalandra.armadilha",
    "%{white}Puxar uma alavanca ao seu lado. É obviamente uma %{red}armadilha."
))

return node