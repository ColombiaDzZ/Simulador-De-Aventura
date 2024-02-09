-- Constants
local ID = "kalandra.start"

-- Dependencies
local Node = require("node")
local Choice = require("choice")

-- Create node
local node = Node:new(ID) ---@type Node
node.title = "Praia de Kalandra"
node.description = "As ondas dançam, a brisa voa, enquanto o Sol te acolhe com um calor agradável, este lugar é tão belo como dizem as lendas. Mas para a sua surpresa não tem mais ninguém aqui. Sua intuição diz que algo está errado."
node.header = [[
%{green}_\/_     %{yellow}            |            %{green}    _\/_
%{green}/o\\     %{yellow}        \       /        %{green}    //o\
%{green} |       %{yellow}          .---.          %{green}      |
%{green}_|_______%{yellow}     --  /     \  --     %{green}______|__
%{cyan }         %{      }`~^~^~^~^~^~^~^~^~^~^~^~`%{     }
]]

-- Create choices
table.insert(node.choices, Choice:new(
    "kalandra.tomar_um_sol",
    "%{white}Aproveitar a %{yellow}praia%{white} deserta para descansar e pegar um %{yellow}sol."
))
table.insert(node.choices, Choice:new(
    "kalandra.investigar",
    "%{white}Seguir sua intuição e investigar o desaparecimento das %{red}pessoas."
))
table.insert(node.choices, Choice:new(
    "kalandra.mergulho",
    "%{white}Dar um %{cyan}mergulho no mar.",
    function()
        return game.medoDoMar ~= true
    end
))

return node