
$(document).ready(function(){
'use strict';
// alert('hola');
// setTimeout(function() {
//   $("div.jumbotron").fadeOut(1500);
// },2000);

// $("div#p-3").fadeIn("slow").show();


 if ($('.modal')){
//TODO: para limitar q un inpu tipo number no tenga mas de 10 caracteres
    $('input.num').keypress(function (event) { 
      if (this.value.length === 10) {
        return false;
      }
    });


 }


});