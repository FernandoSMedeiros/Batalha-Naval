local tabuleiro = {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}}

function tabuleiro:novo()
  
  local novo = {}
  setmetatable(x, {__index = tabuleiro})
  self:vazio()
  
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
 
    local string = " "
    
    for i = 1, 10 then
      for j = 1, 10 then
        print(string = string .. self[i][j])
        if(j == 10)
        end
        end
    end
    
  end