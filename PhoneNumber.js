function createPhoneNumber(numbers){
    var num = numbers.toString();
    num = num.replace(/,/g, "");
    var final = '(' + num.substring(0,3) + ') ' + num.substring(3,6) 
                    + '-' + num.substring(6,10);
       return final;
      }