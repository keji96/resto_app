console.log("scripts loaded")
$( document ).ready(function() {
    console.log( "ready!" );
    $( ".orderButtons" ).on( "click", function() {
      console.log('button click')
      $("body").css("background-color","#000000");
    });

    var timepast = $('td.orders_time').eq(1).attr('data-value');
console.log(timepast)
    if (timepast > 5){
      $("td.orders_time").css("background-color","#000000");
    }

});
