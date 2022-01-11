def sumpositivos(lista, len)
    if(len+1>0)
        if(lista[len].to_i<0)
            return (sumpositivos(lista,len - 1))
        else
            return (lista[len].to_i + sumpositivos(lista,len - 1).to_i)
        end
    end
end

puts "digite o tamanho da lista"
tamanhoLista = gets.to_i
puts "Insira os valores da lista: "
lista = []
until tamanhoLista<1
valoresLista = gets.to_i
lista.push(valoresLista)
tamanhoLista-=1
end 
soma = sumpositivos(lista,lista.length-1)
puts "Resutado: " + soma.to_s