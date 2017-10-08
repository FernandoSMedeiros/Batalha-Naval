local navio = {tamanho = 0}

function navio:novo(tamanho)
  
  novo = {}
  setmetatable(novo, {__index=navio})
  novo.tamanho = tamanho
  
  return novo
    
  end
  
  return navio