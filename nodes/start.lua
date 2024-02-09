-- Constants
local ID = "start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Uma nova aventura"
node.description = "Em uma bela manhã ensolarada você acorda e se prepara para embarcar em uma nova aventura, mas uma importante decisão deve ser tomada. Para onde você vai?"
node.header = [[%{blue}
                                                                                                        
█████╗ ██████╗ ██╗   ██╗███████╗███╗   ██╗ ████████╗██╗   ██╗██████╗ ███████╗
██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║╚══██╔══╝██║   ██║██╔══██╗██╔════╝
███████║██║  ██║██║   ██║█████╗  ██╔██╗ ██║   %{yellow}██║   ██║   ██║██████╔╝█████╗  
██╔══██║██║  ██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║   %{yellow}██║   ██║   ██║██╔══██╗██╔══╝  
██║  ██║██████╔╝ ╚████╔╝ ███████╗██║ ╚████║   %{yellow}██║   ╚██████╔╝██║  ██║███████╗
╚═╝  ╚═╝╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═══╝   %{yellow} ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.start",
    "%{white}Para a praia ensolarada de %{yellow}Kalandra"
))
table.insert(node.choices, Choice:new(
    "nyff.start",
    "%{white}Para as montanhas geladas de %{cyan}Nyff"
))

return node