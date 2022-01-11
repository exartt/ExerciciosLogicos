decodeMorse = function(morseCode){
    var matriz = morseCode.trim().split(" ");
    console.log(matriz);
    var string = [];
    for(var x=0; x<= matriz.length-1 ; x++){
      if(matriz[x] == ""){
        string = string + " ";
        x += 2;
      }
      
      string = string + MORSE_CODE[matriz[x]];
      console.log(string);
    }
    
      return string;
  }