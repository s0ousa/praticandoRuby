class Pagamento
attr_accessor :quantidade, :produto, :preco, :valor 
    def initialize(quantidade:,preco:,produto:"Sem nome")
        @quantidade = quantidade
        @preco = preco
        @produto = produto
    end

    def calcular_valor()
        @valor = quantidade*preco
    end

    def aplicar_desconto(porcentagem)
        self.valor -= valor*porcentagem/100
    end
end
