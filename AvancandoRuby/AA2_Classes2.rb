class Conta
    attr_accessor :saldo
    
    def Deposita(valor)
        self.saldo += valor
        puts "Deposita a quantia de #{valor} reais."
    end
end

c = Conta.new
c.saldo= 0.0
c.Deposita(200.00)
