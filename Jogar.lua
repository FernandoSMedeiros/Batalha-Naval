tabuleiroR = require("Tabuleiro")
navioR = require("Navio")
playerR = require("Player")

print("Player 1 nome: ")
p1Nome = io.read()
p1 = playerR:novo(p1Nome)
naviosP1 = {navioR:novo(1), navioR:novo(2), navioR:novo(4)}

for i = 1, 3 do
  
  local navio = naviosP1[i]
  
  print("linha: ")
  local linha = io.read()
  print("coluna: ")
  local coluna = io.read()
  print("posição: ")
  local posicao = io.read()
  
  p1.tabuleiro:inserirNavio(navio, linha, coluna, posicao)
  
end
  
--p1.tabuleiro:inserirNavio(navio, linha, coluna, posicao)
 
 --print(naviosP1[1].tamanho)

p1.tabuleiro:toString()