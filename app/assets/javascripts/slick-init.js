$(document).ready(function(){
    $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav'
    });

    $('.slider-nav').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    infinite: true,
    centerMode: true,
    arrows: true,
    focusOnSelect: true,
    prevArrow: '<i class="fas fa-angle-left"><span>Previous</span></i>',
    nextArrow:'<i class="fas fa-angle-right"></i>'
    });
});