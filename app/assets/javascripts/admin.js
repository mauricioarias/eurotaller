	var size;
	var LeftS;
	var desplegable;
$(document).ready(function(){
	// ----- size content admin ------ 
	var w = $(window).width();
	LeftS = $('.leftSection').width();
	size = w - LeftS,
	$('.contentAdmin').css('width', size);
	// ----- resize  ------ 
	$(window).resize(function(){
		w = $(window).width();
		LeftS = $('.leftSection').width();
		size = w - LeftS,
		$('.contentAdmin').css('width', size);
	});
	// ----- menu  ------ 
	$(".options li").not('.selected').hide();
	$("ul").click(function(e){
		desplegable = $(".options",this).parent().find(".options li");
		$('.options').parent().find(".options li").not(desplegable).slideUp('slow');
   		desplegable.show('slow');
   	// -----sub menu  ------ 
   		$(".options",this).parent().find(".options li").click(function(e){
			$('.options li').css("color", "#777");
			$('.options li').css("font-weight","lighter"); 
			$(this).closest('.options li').css("color", "#777"); 
			$(this).closest('.options li').css("font-weight","bold"); 
	    })
	})
	$(window).resize();
});