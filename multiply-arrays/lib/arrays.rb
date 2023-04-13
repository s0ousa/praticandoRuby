class Arrays
  def self.multiplica_antecessor_predecessor(array)
      contador = 0
      saida = []

      while contador < array.length

        if contador==0
         saida << array[contador]*array[contador+1]
          
        elsif contador+1 ==array.length
          saida << array[contador]*array[contador-1]
        else
          saida << array[contador-1]*array[contador+1]
        end
        contador+=1
      end   
      
      return saida
  end
end
