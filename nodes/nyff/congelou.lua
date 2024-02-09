-- Constants
local ID = "nyff.congelou"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Congelou"
node.gameOver = true
node.description = [[O %{cyan}frio%{white} foi muito forte e você não %{red}resistiu.]]

return node