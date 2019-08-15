class Conta
    attr_accessor :saldo, :nome 
    
    def initialize(nome)
        self.saldo=0
        self.nome=nome 
    end

    def Deposita(valor)
        self.saldo += valor
        puts "Deposita a quantia de #{valor} reais na conta de #{self.nome}."
    end
end

c = Conta.new('Jader Machado')
c.Deposita(200.00)

c.Deposita(10.00)
puts c.saldo
puts c.nome