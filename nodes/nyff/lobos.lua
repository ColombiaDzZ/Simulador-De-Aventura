-- Constants
local ID = "nyff.lobos"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Banquete Canino"
node.gameOver = true
node.description = [[Os %{black}lobos%{white} te alcançaram e conseguiram achar comida, você! Foi um dia de sorte... para os lobos, claro.]]
node.header = [[
%{black}
        _            
       / \      _-'  
     _/|  \-''- _ /  
__-' { |          \  
    /             \  
    /      "o.  |o }
    |            \ ; 
                  ', 
       \_         __\
         ''-_    \.//
           / '-____' 
          /          
        _'           
      _-'            
]]

return node