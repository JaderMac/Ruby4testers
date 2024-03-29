class ContaCorrente 
    attr_accessor :saldo

    def initialize (saldo)
        self.saldo= saldo
    end

    def saca(valor)
        self.saldo -= valor
    end

end


describe ContaCorrente do
    describe 'Saque' do 
        context 'Quando o valor for positivo' do
            before(:all) do
            @conta=ContaCorrente.new(1000.00)
            @conta.saca(200.00)
            end    
            it 'Então atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end
        end
    end

end