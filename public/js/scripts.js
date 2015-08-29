console.log("scripts loaded")
$( document ).ready(function() {
    console.log( "ready!" );

  timeChange()


});


 function timeChange(){
   $( ".orderButtons" ).on( "click", function() {
     $(this).closest("tr").hide()
   });

var timePastArray = $('td.orders_time')
for(i = 0; i < timePastArray.length + 1; i++){
  console.log(timePastArray.length);
   var timepast = timePastArray.eq(i).attr('data-value');
    timpePastInt = parseInt(timepast)
   if (timpePastInt > 5){
     $('#'+ i).css("background-color","red");

   } else {
     $('#'+i).css("background-color", "green");
   }
}




 }
