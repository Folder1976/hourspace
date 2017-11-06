$(document).ready(function() {
	// debugger;

// открываем/закрываем моб меню
var top_nav = $('.header .top-nav');
function openTopNav(){
    top_nav.addClass('open');
}
function closeTopNav(){
    top_nav.removeClass('open');
}
$('.js-mob-top-nav').on('click', function(){
    if ( top_nav.hasClass('open') ) {
        closeTopNav();
    } else {
        openTopNav();
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.js-mob-top-nav').length === 0 && $(e.target).closest(top_nav).length === 0 ) {
        closeTopNav();
    }
});


});
