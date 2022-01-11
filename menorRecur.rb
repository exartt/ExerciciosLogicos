def maiorElemento(lista,len)
    if(len == lista.length-1)
        return lista[len]
    else 
        return [lista[len],maiorElemento(lista,len+1)].max
    end
end


puts "digite o tamanho da lista: "
tamanhoLista = gets.to_i
puts "Insira os valores da lista: "
lista = []
until tamanhoLista<1
valoresLista = gets.to_i
lista.push(valoresLista)
tamanhoLista-=1
end 

puts "================="
puts "#{lista}"

maior = maiorElemento(lista,0)

puts "Resultado : " + maior.to_s