
def soma_recursiva(num)
    #Somar de forma recursiva
    if(num>0)
        return ( num + soma_recursiva(num - 1))
    else
        return 1
    end
end

puts "Digite o numero da soma: "
num = gets.to_i()
soma = soma_recursiva(num)
puts "Resultado: " + soma.to_s
