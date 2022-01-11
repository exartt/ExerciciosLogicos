def menorElemento(lista,len)
    if(len == lista.length-1)
        return lista[len]
    else 
        return [lista[len],menorElemento(lista,len+1)].min
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

puts "================="
puts "#{lista}"

menor = menorElemento(lista,0)

puts "Resultado : " + menor.to_s