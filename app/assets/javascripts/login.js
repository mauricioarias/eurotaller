$(document).ready(function() {
	
	$('.content_login').css({
		position:'absolute',
		left: ($(window).width() - $('.content_login').outerWidth())/2,
		top: ($(window).height() -  $('.content_login').outerHeight())/2
	});
	$(window).resize(function(){
		$('.content_login').css({
			position:'absolute',
			left: ($(window).width() - $('.content_login').outerWidth())/2,
			top: ($(window).height() -  $('.content_login').outerHeight())/2
		});
	});
	$(window).resize();
 });