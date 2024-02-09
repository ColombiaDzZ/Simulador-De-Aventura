-- Constants
local ID = "kalandra.kraken_game_over"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Fim da aventura"
node.gameOver = true
node.description = "%{white}Um monstro enorme surge das %{cyan}profundezas%{white} e te puxa pra baixo. Você não teve %{red}chances."

return node