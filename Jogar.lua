navio = require("Navio")
tabuleiro = require("Tabuleiro")
local player = require("Player")

 nav = navio:novo(3)
 --[[tab = tabuleiro:novo()
 tab:inserirNavio(nav, "C", 6, "h")
 
 nav = navio:novo(5)
 tab:inserirNavio(nav, "E", 7, "v")
 
nav = navio:novo(2)
tab:inserirNavio(nav, "I", 1, "v")
 
 tab:toString()]]
 
 local p1 = player:novo("Fernando")
 print(p1.nome)
 p1.tabuleiro:toString()
 
 local p2 = player:novo("Karine")
 print(p2.nome)
 p2.tabuleiro:inserirNavio(nav, "A", 5, "v")
 p2.tabuleiro:toString()