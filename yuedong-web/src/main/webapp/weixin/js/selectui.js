$(function(){
	$('.xz').click(function(){
		if ($(this).children('.xx').is(':hidden')) {
			$(this).children('.xx').slideDown().parent().siblings().children('.xx').slideUp();
			$(this).find('.cart').removeClass('cart').addClass('carted').parent().siblings().find('.carted').removeClass('carted').addClass('cart');
		} else {
			$(this).children('.xx').slideUp();
			$(this).find('.carted').removeClass('carted').addClass('cart');
		}
		
	})
	$('.yd li').click(function(){
		var ocllitext=$(this).text();
		$(this).parents('.xx').siblings('.titlebox').children('input').val(ocllitext);
	/*	alert(ocllitext)*/
	})
})