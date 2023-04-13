class Validator
  def initialize(data)
    @data = data
  end

  def data_checker
    if valida_nome(@data[:nome_completo]) && valida_nascimento(@data[:aniversario]) && valida_senha(@data[:senha]) && valida_cpf(@data[:cpf])
      return "Válido"
    else
      return "Inválido"
    end
    
  end

  def valida_nome(nome)
    nome_tratado = nome.tr("ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšȘșſŢţŤťŦŧȚțÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
      "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSsSssTtTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz")
    
    tem_espaco = false
    somente_letras = true

    array = nome_tratado.split("")
  
    array.each do |char|
      if (char.ord <65 || char.ord >90) && (char.ord <96 || char.ord >122)
        if char.ord !=32
          somente_letras=false
        end
      end  
      if char.ord ==32 
        tem_espaco = true
      end  
    end
    
    return tem_espaco && somente_letras

  end  

  def valida_nascimento(nascimento)
    array = nascimento.split("/")
    
    ano = array[2].to_i
    mes = array[1].to_i
    dia = array[0].to_i
    
    if ano<1 || ano>2023
      return false
    end
    
    if mes < 1 || mes>12 
      return false
    end
  
    if mes == 2
      if dia <1 || dia > 29 
        return false
      else 
        return true
      end  
    else
      if dia <1 || dia>31
        return false
      else 
        return true
      end  
    end    
  
  end
  
  def valida_senha(senha)
    array = senha.split("")

    tem_numero = false
    tem_maiuscula = false

    array.each do |char|
      tem_numero = true if char.ord>=48 && char.ord <=57
      tem_maiuscula = true if char.ord>=65 && char.ord <=90
    end

    return tem_numero && tem_maiuscula
  end  

  def valida_cpf(cpf)
    cpf = cpf.gsub(/[^0-9]/, '')
    if cpf.length != 11 
      return false
    end  

    soma = 0
    i = 0

    while i < 9 
      soma += cpf[i].to_i * (10 - i)
      i+=1
    end

    digito1 = soma%11
    digito1 = 11 - digito1
    digito1 = 0 if digito1 >= 10
    
    soma = 0
    i = 0
    
    while i < 10
      soma += cpf[i].to_i * (11 - i)
      i+=1
    end
    
    digito2 = soma%11
    digito2 = 11 - digito2
    digito2 = 0 if digito2 >= 10


    return cpf[9].to_i == digito1 && cpf[10].to_i == digito2

  end
  
  
end