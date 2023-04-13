class DataControl
  def initialize(data_list)
    @data_list = data_list
  end

  def validate_data_list
    saida = []
    i = 0
    @data_list.each do |hash|
      saida << i if Validator.new(hash).data_checker == "Inválido"
      i+=1
    end
    if saida.length==0
      return "Todos são válidos"
    else
      return saida
    end
  end
end
