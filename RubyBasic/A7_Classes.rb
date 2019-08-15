#Puramente orientada a objetos!
#TUDO SÃO OBJETOS!
class Carro
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end

end

Civic = Carro.new
Civic.nome = 'civic'
Civic.ligar