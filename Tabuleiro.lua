local navioR = require("Navio")
local linhaR = require("Linha")

local tabuleiro = {}

function tabuleiro:novo()
  
  local novo = {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}
  setmetatable(novo, {__index = tabuleiro})
  
  for i=1, 10 do
      for j=1, 10 do
          novo[i][j] = "*"
      end
  end
  
  return novo
  
end

  function tabuleiro:inserirNavio(navio, l, col, posicao)
    
    local linha = linhaR:valueOf(l)
    local coluna = col
    local tamanhoNavio = navio.tamanho
    
   if posicao == "h" then
      
      print("Entrou no IF: " .. posicao)
      
        for j = 1, tamanhoNavio do
          self[linha][j+(coluna-1)] = "X"  
          print("Entrou no FOR: " .. j)
        end
    end 
    
  end
  
  function tabuleiro:toString()
 
    local string = ""
    local coluna = ""
    
    for i = 1, 10 do
     
        if i == 1 then
          coluna = coluna ..  "  " .. i .. " "  -- Apenas adiciona dois espaços a mais para que o numero da coluna fique alinhado.    
        else
          coluna = coluna .. i .. " "
        end  
     
     
      for j = 1, 10 do
        
        if j == 1 then
          string = string .. (string.char(64 + i)) .. " "        
        end
        
        string = string .. self[i][j] .. " "
        
        if j == 10 then
          string = string .. "\n"
        end
        end
    end
    print(coluna)
    print(string)
  end
    
return tabuleiro
  