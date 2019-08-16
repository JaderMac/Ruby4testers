# begin
#     #tento fazer alguma coisa
#     file= File.open('./ola.tx')
#     if file 
#         puts file.read
#     end
# rescue Exception => e
#     #Obter possivel erro
#     puts e.message
#     puts e.backtrace
# end

def soma(n1,n2)
    n1 + n2
rescue Exception => e
    puts e.message
    puts 'Erro ao realizar a soma!'
end

soma('19', 19)