$(function(){
  var $activeSlide = $('#slides .slide:first-child');

$(".match-tile").on("click", function(){
  var account_id = $(this).data("id");


  $.ajax({
    url: "/get/conversation/"+account_id,
    method: "post",
    dataType: "script"
  })

});

$("#close-conversation").on("click", function(){
  $("#conversation").hide();
});

$("#decline").on("click", function(){
  goToSlide('decline');
})
$("#approve").on("click", function(){
  const user_id = $activeSlide.data("id");
  console.log(user_id);
  $.ajax({
   url: "/approve/" + user_id,
   method: "post",
   dataType: "ajax"
  });
  goToSlide('approve');
})

  function goToSlide(action) {
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide");
    // send data to controller //
    if(action == "approve"){
      console.log(action);
    } else {
      console.log(action);
    }



    $activeSlide.addClass("showing");

  }
});
