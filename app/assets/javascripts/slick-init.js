$(document).ready(function(){
    $('.slider-for').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    arrows: false,
    fade: true,
    asNavFor: '.slider-nav',
    adaptiveHeight: true
    });

    $('.slider-nav').slick({
    slidesToShow: 2,
    slidesToScroll: 1,
    asNavFor: '.slider-for',
    dots: true,
    infinite: true,
    centerMode: true,
    arrows: true,
    focusOnSelect: true,
    prevArrow: '<i class="fas fa-angle-left" id="prev-arrow"></i>',
    nextArrow:'<i class="fas fa-angle-right" id="next-arrow"></i>',
    responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 1,
        infinite: true,
        dots: true
      }
    },

    {
      breakpoint: 576,
      settings: "unslick"
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
    });
});
