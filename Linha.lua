local linha = {A=1, B=2, C=3, D=4, E=5, F=6, G=7, H=8, I=9, J=10}

function linha:valueOf(valor)
    return self[valor]
  end
  
return linha