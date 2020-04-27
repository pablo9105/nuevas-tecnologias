
$(function(){
'use strict';


 if ($('.modal')){
//TODO: para limitar q un inpu tipo number no tenga mas de 10 caracteres
    $('input.num').keypress(function (event) { 
      if (this.value.length === 10) {
        return false;
      }
    });

    // var input=  document.querySelector('.num');
    // input.addEventListener('input',function(){
    //   if (this.value.length > 10) 
    //      this.value = this.value.slice(0,10); 
    // })

 }


});