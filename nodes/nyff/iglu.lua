-- Constants
local ID = "nyff.iglu"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Montanhas de Nyff"
node.description = [[Foi difícil, mas você conseguiu construir um %{cyan}iglu%{white} com suas próprias mãos, e uma pá reserva que encontrou nas proximidades.

Depois de esperar a noite passar, você acorda com um vento forte e um %{cyan}frio%{white} que %{cyan}congela%{white} seus ossos. É uma %{cyan}nevasca!

%{white}Ficar no %{cyan}iglu%{white} não é mais uma opção. E agora?]]

-- Create choices
table.insert(node.choices, Choice:new(
    "nyff.congelou",
    "%{white}Se esconder é a melhor opção, continuar no iglu até a %{cyan}nevasca%{white} passar."
))
table.insert(node.choices, Choice:new(
    "nyff.floresta",
    "%{white}Abandonar o iglu e ir para a %{green}floresta %{cyan}congelada."
))

return node