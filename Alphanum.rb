#Objetivo: Referenciar cada letra a um numero de acordo com
#a posição dele (a=1,b=2,c=3).

def alphabet_position(text)
    str = String.new
    text.upcase.each_byte do |c|
        if(c>64)
        str = str +" "+"#{c-64}"
        end
    end
    str.slice!(0)
    puts str.to_s
    return str.to_s
end

alphabet_position("The sunset sets at twelve o' clock.")


