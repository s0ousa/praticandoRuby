class Word
  def vowels_count(phrase)
    phrase = phrase.downcase
    vogais = ['a','e','i','o','u','y']
    vogais_acentuadadas = ['á','à','ã','â','é','ê','í','ó','õ','ô','ú']
    qntd_vogais = 0
    
    vogais.each do |vogal|
      qntd_vogais += phrase.count(vogal)
    end
    vogais_acentuadadas.each do |vogal|
      qntd_vogais += phrase.count(vogal)
    end
    return qntd_vogais  
  end

  def consonants_count(phrase)
    phrase = phrase.downcase
    consoantes =['b','c','ç','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','w','z']
    qntd_consoantes = 0

    consoantes.each do |consoante|
      qntd_consoantes+= phrase.count(consoante)
    end  
    return qntd_consoantes
  end
end
