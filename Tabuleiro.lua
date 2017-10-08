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
    local posicaoValida = self:posicaoValida(navio, linha, col, posicao)
    
   if posicao == "h" and posicaoValida then
           
        for j = 1, navio.tamanho do
          self[linha][j+(col-1)] = "X"           
        end
    end 
    
    if posicao == "v" and posicaoValida then
        for i = 1, navio.tamanho do
          self[i+(linha-1)][col] = "X"           
        end
      end
    
  end
  
  function tabuleiro:posicaoValida(navio, l, col, posicao)
    
    if posicao == "h" then
           
        for j = 1, navio.tamanho do
          if self[l][j+(col-1)] ~= "*" then
            print("Não pode posicionar o navio aqui!")
            return false             
          end                   
        end
        
    end 
    
    if posicao == "v" then
      if((navio.tamanho - 1) + l <=10) then
        for i = 1, navio.tamanho do         
            if self[i+(l-1)][col] ~= "*" then  
              print("Não pode posicionar o navio aqui!")
              return false          
            end          
        end
      else
        print("Não pode posicionar o navio aqui!")
        return false
      end      
    end
    
    return true
    
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
  