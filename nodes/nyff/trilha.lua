-- Constants
local ID = "nyff.trilha"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.description = [[Uma matilha de lobos te cercou, eles também estão sem comida, e adivinhe só, o banquete é você!]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.lobos",
    "%{white}Correr o mais rápido que você puder, sem nem %{red}hesitar!"
))
table.insert(node.choices, Choice:new(
    "nyff.topo",
    "%{white}Dividir sua comida com os lobos para que eles te deixem em paz."
))

return node