-- Constants
local ID = "kalandra.armadilha"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Ops"
node.gameOver = true
node.description = "%{white}Você sem querer ativou uma %{red}armadilha%{white} do calabouço, e não %{red}resistiu."

return node