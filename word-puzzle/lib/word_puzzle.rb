class WordPuzzle
  def phrase_weight(phrases)
    saida = []

    phrases.each do |frase|
      frase_quebrada = frase.split(" ")
      soma_da_frase = 0
      frase_quebrada.each do |palavra|
        palavra_quebrada = palavra.split("")
        if !esta_em_ordem_alfabetica(palavra_quebrada)
          soma_da_frase += calcula_peso(palavra_quebrada)
        end  
      end
      saida<<soma_da_frase    
    end
    return saida
  end


  def calcula_peso(palavra_quebrada)
    peso_palavra = 0
    palavra_quebrada.each do |char|
      if char == char.upcase
        peso_palavra -= char.ord - 64
      else
        peso_palavra += char.ord - 96
      end
    end
    return peso_palavra
  end  


  def esta_em_ordem_alfabetica(palavra_quebrada)
    return true if palavra_quebrada.length==1

    i = 0
    while i < palavra_quebrada.length-1
      if palavra_quebrada[i].ord > palavra_quebrada[i+1].ord
        return false
      end  
      i+=1
    end
    return true  
  end  

end
