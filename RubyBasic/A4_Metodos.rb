#Sem receber argumentos
def RetornaNome
    'Jader Machado'
end

Resultado = RetornaNome()
puts Resultado


#recebe argumentos
def Soma(v1,v2)
    total = v1+v2
    total
end
puts Soma(12,12)

def diga_ola(nome)
    puts "Olá "+ nome 
end
diga_ola('Jader Machado')