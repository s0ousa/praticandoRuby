class ArrayUtils
  def self.multiplos(qtd, multiplo)
    saida = []
    i = 1
    
    while i<=qtd do
      saida << i*multiplo
      i+=1  
    end
    return saida
  end

  def self.tabuada(num)
    saida = []
    i = 1
    while i<=num do
      tabuada_atual = []
      j = 1
      while j <=10 do
        tabuada_atual <<i*j 
        
        j+=1
      end
      saida << tabuada_atual  
      i+=1  
    end
    return saida
  end
end
