navio = require("Navio")
tabuleiro = require("Tabuleiro")


 nav = navio:novo(3)
 tab = tabuleiro:novo()
 tab:inserirNavio(nav, "C", 6, "h")
 
 nav = navio:novo(5)
 tab:inserirNavio(nav, "G", 6, "h")
 
 tab:toString()