
def palindromo(word, len)
    palavraInversa = word.reverse #não sei se podia usar metodos desse tipo... então usei para nao ter que pensar em soluções kkk
    if(len < word.length/2) ##vai percorrer até a metade nos pares e ignorar o impar centralizado
        if(word[len] != palavraInversa[len]) #Se word[posição] for != da palavrainversa na mesma posição é falso
        return false
    else 
        return palindromo(word,len+1)
        end
    end
end

puts "Digite a palavra: "
word = gets.to_s
if(palindromo(word.strip,0) == false)
    puts "não é palindromo"
else
    puts "é palindromo"
end
