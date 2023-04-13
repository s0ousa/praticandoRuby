class Chars
  def unique_quantity(text)
    array = text.split(" ")
    soma = 0
    array.each do |palavra |
      array_seq = palavra.split("")
      array_aux = []
      
      array_seq.each do |char|

        if !esta_contido(array_aux, char)
          array_aux<< char
        end  
      end
      soma += array_aux.length
    end

    return soma
  end

  def esta_contido(array, char)
    array.each do |elemento|
      if elemento == char
        return true
      end
    end  
    return false  
  end 
end

