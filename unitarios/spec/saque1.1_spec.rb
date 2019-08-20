class ContaCorrente 
    attr_accessor :saldo, :mensagem

    def initialize (saldo)
        self.saldo= saldo
    end

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = 'Saldo insuficiente para saque :('
        elsif (valor > 700)
            self.mensagem = 'O Limite máximo de saque é de 700.00.'
        else
            self.saldo -= valor
        end
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

        context 'quando o saldo é zero' do
            before(:all) do
                @conta=ContaCorrente.new(0.00)
                @conta.saca(100.00)
            end    
            it 'Vejo mensagem' do
                 expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanece com zero' do
                expect(@conta.saldo).to eql 0.00
            end
         end

         context 'quando o saldo é insuficiente' do
            before(:all) do
                @conta=ContaCorrente.new(100.00)
                @conta.saca(101.00)
            end    
            it 'Vejo mensagem' do
                 expect(@conta.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanece o mesmo' do
                expect(@conta.saldo).to eql 100.00
            end
         end

         context 'quando o valor do saque é maior que o limite' do 
            before(:all) do
                @conta=ContaCorrente.new(1000.00)
                @conta.saca(701.00)
            end 
            it 'Vejo mensagem' do
                expect(@conta.mensagem).to eql 'O Limite máximo de saque é de 700.00.'
            end
            it 'meu saldo permanece o mesmo' do
                expect(@conta.saldo).to eql 1000.00
            end
        end
    end
end

