def soma(primeiro_numero, segundo_numero)
    return primeiro_numero+segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
    return primeiro_numero - segundo_numero
end

def multiplicacao(x,y)
    return x*y
end

def divisao(x,y)
    if y ==0
        return 'Opa! Zero como divisor'
    
    else
        return x/y
    end
end        