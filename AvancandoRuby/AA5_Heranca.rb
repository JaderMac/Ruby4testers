class Veiculo 
    attr_accessor :nome, :marca, :modelo

    def initialize (nome, marca, modelo)
        self.nome = nome 
        self.marca = marca
        self.modelo = modelo
    end

    def Ligar
        puts "O #{nome} esta pronto para iniciar o trajeto!"
    end

    def Buzinar
        puts 'Beep! Beep!'
    end
    
    def Dirigir
        puts "O #{nome} iniciando o trajeto!"
    end
end


class Carro < Veiculo
    def Dirigir
        puts "O #{nome} iniciando o trajeto!"
    end
end

class Moto < Veiculo
    def Pilotar
        puts "O #{nome} iniciando o trajeto!"
    end
end   

civic = Carro.new('Civic','Honda', 'SI')
civic.Ligar
civic.Buzinar
civic.Dirigir

lancer = Carro.new('Lancer', 'Mitsubish', 'Evo')
lancer.Ligar
lancer.Buzinar
lancer.Dirigir

fazer=Moto.new('Fazer', 'Yamaha', '250x')
fazer.Ligar
fazer.Buzinar
fazer.Pilotar
