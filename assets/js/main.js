$(document).ready(function(){

    // Mobile NAV expand

    var i = 0;

    $('#main-nav .container .btn-expand button#btn-expand').click(function(){
        $('#nav-device').animate({
            left : '0'
        }, 500);
        $('.main-page').animate({
            marginLeft : '90%',
            opacity : '0.5'
        }, 500);
    });

    $('#nav-device > .head > #nav-close').click(function() {
        $('#nav-device').animate({
            left : '-100%'
        }, 500);
        $('.main-page').animate({
            marginLeft : '0',
            opacity : '1'
        }, 500);
    });
    $('li.menu-href').click(function(){
        window.location.href = $(this).children(".menu-href").attr('href');
    });
});
