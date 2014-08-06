//update_player_position('player1', 10);


$("td").on('keyup', function(){
    $(this).parent().next().toggleClass('active');
});



// $(document).ready(function() {
//   $(document).on('keyup',function(event) {
//     if(event.keyCode == 80){
//       var p = $('#player1_race .active').index();
//      $(this).parent().next("td").toggleClass('active');
//     } else if(event.keyCode == 81){
//       var p = $('#player2_race .active').index();
//       $(this).parent().next("td").toggleClass('active');
//     }

//   });
// });







// $(document).ready(function() {
//   $(document).on('keyup',function(event) {
//     if(event.keyCode == 80){
//       var p = $('#player1_race .active').index();
//       $('#player1_race .active').removeClass('active');
//       $('#player1_race td').eq(p+1).addClass('active');
//     } else if(event.keyCode == 81){
//       var p = $('#player2_race .active').index();
//       $('#player2_race .active').removeClass('active');
//       $('#player2_race td').eq(p+1).addClass('active');
//     }
//     // Detect which key was pressed and call the appropriate function
//     // Google "jquery keyup what key was pressed" if you don't know how
//   });
// });

// $(document).ready(function() {
//   $(document).on('keyup', function() {
//     $('.active').animate({"right": "+=20px"}, "slow");

//     // Detect which key was pressed and call the appropriate function
//     // Google "jquery keyup what key was pressed" if you don't know how
//   });
// });


// $('.down_button').live('click', function () {
//     var rowToMove = $(this).parents('tr.MoveableRow:first');
//     var next = rowToMove.next('tr.MoveableRow')
//     if (next.length == 1) { next.after(rowToMove); }
// })


// $( "td" ).addClass( "active" );



