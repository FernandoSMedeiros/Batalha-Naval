Tabuleiro = require("Tabuleiro")

local Player = {}

function Player:novo(nome)
  
  novo = {nome = " ", tabuleiro={}}
 
  setmetatable(novo, {__index = Player})
  
  novo.nome = nome
  novo.tabuleiro = Tabuleiro:novo()  
  
  return novo

end

return Player