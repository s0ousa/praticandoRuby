class Numbers
  def sum_text(numbers_text)
    numbers_int = []
    numbers_str = numbers_text.split(" ")
    soma = 0

    numbers_str.each do |numero|
      numbers_int << numero.to_i
    end
    
    numbers_int.each do |numero|
      soma += numero
    end

    return soma
  end
end
