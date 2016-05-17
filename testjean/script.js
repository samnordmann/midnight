// At the end of the image-slider animation .video takes 50% width
$(document).ready(function(){
  $(".video").css({"width": "400px"});
});

// mouseover works after 5 seconds, at the the end of the image-slider animation
setTimeout( function(){ 
$(".image-slider").on('mousemove', function(e) {
  var mouseSide;
  if ((e.pageX - this.offsetLeft) < $(this).width() / 2) {
           $(".video").css({"width":"800px"});
  } else {
           $(".video").css({"width":"0px"});
    };
    });
}  , 5000 );

$(".image-slider").mouseout(function(){
        $(".video").css({"width":"400px"});
    });