class Finder
  def index_of(list, value)
    posicoes = [] 
    contador = 0

    list.each do |posicao|
      if posicao.include? value
        posicoes<< contador
      end 
      contador+=1
    end  
  
    return posicoes
  end

end
