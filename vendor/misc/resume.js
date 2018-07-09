// swipe box js
jQuery(function($) {
  $(".swipebox").swipebox();
});
//swipe box js
$(function(){ 
  $('.row2').adipoli({
    'startEffect' : 'overlay',
    'hoverEffect' : 'sliceDown'
  }); 
});
//for-projects
// Horizontal-Tabs-JavaScript
$(document).ready(function () {
  $('#horizontalTab').easyResponsiveTabs({
    type: 'default',
    width: 'auto',
    fit: true,
  });
});
// Horizontal-Tabs-JavaScript
// Stats-Number-Scroller-Animation-JavaScript
jQuery(document).ready(function( $ ) {
  $('.counter').counterUp({
    delay: 10,
    time: 1000,
  });
});
//Stats-Number-Scroller-Animation-JavaScript
// Progressive-Bars-JavaScript
//Progressive-Bars-JavaScript
// for-experience
// Show-More-JavaScript
$(document).ready(function () {
  size_li = $("#myList li").size();
  x=1;
  $('#myList li:lt('+x+')').show();
  $('#loadMore').click(function () {
    x= (x+1 <= size_li) ? x+1 : size_li;
    $('#myList li:lt('+x+')').show();
  });
  $('#showLess').click(function () {
    x=(x-1<0) ? 1 : x-1;
    $('#myList li').not(':lt('+x+')').hide();
  });
});
//Show-More-JavaScript
//for-experience
// start-smoth-scrolling
jQuery(document).ready(function($) {
  $(".scroll").click(function(event){   
    event.preventDefault();
    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
  });
});
// start-smoth-scrolling
// here stars scrolling icon
$(document).ready(function() {
  var defaults = {
  containerID: 'toTop', // fading element id
  containerHoverID: 'toTopHover', // fading element hover id
  scrollSpeed: 1200,
  easingType: 'linear' 
  };
            
  $().UItoTop({ easingType: 'easeOutQuart' });
            
});

addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }