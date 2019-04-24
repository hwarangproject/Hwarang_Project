/*price range*/

 $('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};	
		
/*scroll to top*/

$(document).ready(function(){
	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', // Element ID
	        scrollDistance: 300, // Distance from top/bottom before showing element (px)
	        scrollFrom: 'top', // 'top' or 'bottom'
	        scrollSpeed: 300, // Speed back to top (ms)
	        easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	        animation: 'fade', // Fade, slide, none
	        animationSpeed: 200, // Animation in speed (ms)
	        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
					//scrollTarget: false, // Set a custom target element for scrolling to the top
	        scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	        scrollTitle: false, // Set a custom <a> title if required.
	        scrollImg: false, // Set true to use image
	        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	        zIndex: 2147483647 // Z-Index for the overlay
		});
	});
});


var pos = 0,
dpos = 3.5714,
cycle,
heart = false,
animating = false;

$('heart').click(function(){},function(){
  if(heart && !animating){
    $('heart').css('background-position','0 0');
    heart = false;
  }else if(!animating){
    animating = true;
    animate();
  }
});

function animate(){
  cycle = setInterval(increment,30);
}

function increment(){
  pos += dpos;
  if(pos > 100){
    clearInterval(cycle);
    heart = true;
    animating = false;
    pos = 0;
  }else{
    $('heart').css('background-position',pos+'% 0');
  }
}


$(document).ready(function() {
	  $('.bar span').hide();
	  $('#bar-five').animate({
	     width: '75%'}, 1000);
	  $('#bar-four').animate({
	     width: '35%'}, 1000);
	  $('#bar-three').animate({
	     width: '20%'}, 1000);
	  $('#bar-two').animate({
	     width: '15%'}, 1000);
	  $('#bar-one').animate({
	     width: '30%'}, 1000);
	  
	  setTimeout(function() {
	    $('.bar span').fadeIn('slow');
	  }, 1000);
	  
	});
