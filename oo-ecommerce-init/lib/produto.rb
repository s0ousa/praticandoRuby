class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome:, categoria: 'Geral', preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    self.estoque += quantidade
  end

  def remove_estoque(quantidade)
    if quantidade>=estoque
      puts "Impossível remover quantidade maior que o existente. Quantidade existente = #{self.estoque}"
    else
      self.estoque -= quantidade
    end
  end
end
