$(document).ready(function(){
    $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav',
    autoplay: true,
    autoplaySpeed: 2000
    });

    $('.slider-nav').slick({
    slidesToShow: 5,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    infinite: true,
    centerMode: true,
    arrows: true,
    focusOnSelect: true,
    autoplay: true,
    autoplaySpeed: 2000,
    prevArrow: '<i class="fas fa-angle-left" id="prev-arrow"></i>',
    nextArrow:'<i class="fas fa-angle-right" id="next-arrow"></i>'
    });
});
