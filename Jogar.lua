navio = require("Navio")
tabuleiro = require("Tabuleiro")


 nav = navio:novo(3)
 tab = tabuleiro:novo()
 tab:inserirNavio(nav, "C", 6, "h")
 
 nav = navio:novo(5)
 tab:inserirNavio(nav, "J", 6, "h")
 
nav = navio:novo(2)
tab:inserirNavio(nav, "I", 1, "v")
 
 tab:toString()