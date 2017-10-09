tabuleiroR = require("Tabuleiro")
navioR = require("Navio")
playerR = require("Player")

print("Player 1 nome: ")
p1Nome = io.read()
p1 = playerR:novo(p1Nome)
navio1 = navioR:novo(1)
navio2 = navioR:novo(2)
navio3 = navioR:novo(4)


p1.tabuleiro:inserirNavio(navio1, "F", 5, "v")

p1.tabuleiro:inserirNavio(navio2, "G", 6, "v")

p1.tabuleiro:inserirNavio(navio3, "J", 5, "v")  

p1.tabuleiro:toString()