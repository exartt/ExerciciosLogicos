#pin == 4 || pin == 6, senão false. 
#se tiver caractere não numerico = false, se pin só tiver numeros = true
def validate_pin(pin)
    num = pin.length
    if(num == 4 || num == 6)
    validate_pin = pin.is_a?(Integer)
    else
    validate_pin = false
    end
end

puts validate_pin("51a2")

puts validate_pin("1")
puts validate_pin("1111")
puts validate_pin("123456")
puts validate_pin("1234567890")   
puts validate_pin("12")


