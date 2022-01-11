function narcissistic(value) {
    var x = value.toString().split('');
    var y = x.length;
    var resultado = 0;
    for(var m=1;y>=m;m++){
       resultado += parseInt(x[m-1],10)**y;
      console.log(resultado);
      
    }
    if(resultado == value){
      return true;
    }else{
      return false;
    }
  }