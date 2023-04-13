class ArrayUtils
  def self.compara(lista1, lista2)
    i = 0

    if lista1.length != lista2.length
      return false
    else
      while i<lista1.length
        j=0
        igual = false
        while j<lista2.length
          if lista1[i]==lista2[j]
            igual = true
            break
          end
          j+=1 
        end  
        i+=1
      end  
    end  
  return igual
  end

  def self.soma(array)
    soma = 0
    array.each do |elemento|
      soma +=elemento
    end 
    return soma
  end

  def self.divisiveis(num1,num2)
    somente_primeiro = []
    somente_segundo = []
    primeiro_e_segundo = []

    for num in 1..50
      if num%num1==0 && num%num2==0
        primeiro_e_segundo<<num
      elsif num%num1==0 && num%num2!=0
        somente_primeiro<<num
      elsif num%num1!=0 && num%num2==0
        somente_segundo <<num
      end  
    end
    saida = [primeiro_e_segundo, somente_primeiro, somente_segundo]
  end
  
  def self.combinar(array1,array2)
    saida = []
    
    array1.each do |i|
      array2.each do |j|
        atual = []
        atual << i
        atual << j
        
        saida << atual  
      end
    end
    return saida
  end
end
