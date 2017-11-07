$(document).ready(function() {
	// debugger;

/*************************************************************/
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

/*************************************************************/
// при сколинге страницы меняем цвет топ-меню
$(window).scroll(function(){
    var heigth = $('.home-block-1').outerHeight() - 30;
    if( $(this).scrollTop() >= heigth ){
        $('.top-nav').css('color', '#000');
        $('.header').css('background', 'rgba(255,255,255,.5)');
    } else {
        $('.top-nav').css('color', '#fff');
        $('.header').css('background', 'rgba(255,255,255,0)');
    }
});

/*************************************************************/
// выпадающее меню
$('.js-dropdown').on('click', function(){
    var menu = $(this).parent().find('.dropdown-menu');
    if ( menu.hasClass('open') ) {
        menu.removeClass('open');
    } else {
        menu.addClass('open');
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.dropdown-menu').length === 0 && $(e.target).closest('.js-dropdown').length === 0 ) {
        $('.dropdown-menu').removeClass('open');
    }
});

/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/

});
