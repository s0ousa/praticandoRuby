require_relative 'produto'
class PagamentoBoleto < Pagamento
    def initialize(quantidade: , produto:)
        super(quantidade: quantidade, produto: produto)
    end

end