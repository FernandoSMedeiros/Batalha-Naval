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

function tabuleiro:vazio()
    for i=1, 10 do
      for j=1, 10 do
          self[i][j] = "*"
        end
      end
  end
  
  
  function tabuleiro:inserirNavio(navio, posicao)
    
    
    
  end
  
  function tabuleiro:toString()
 
    local string = ""
    local coluna = ""
    
    for i = 1, 10 do
     
        if i == 1 then
          coluna = coluna ..  "  " .. i .. " "      
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
  
 
  tabuleiro:novo()
  tabuleiro:toString()
  
  tabuleiro:novo()
  tabuleiro:toString()
  