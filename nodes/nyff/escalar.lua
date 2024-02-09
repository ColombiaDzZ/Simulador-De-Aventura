-- Constants
local ID = "nyff.escalar"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Parecia mais fácil nos filmes"
node.gameOver = true
node.description = [[Depois de %{red}escalar%{white} apenas 10 metros você escorregou e caiu. Um fim %{red}trágico%{white} para uma curta aventura.]]

return node