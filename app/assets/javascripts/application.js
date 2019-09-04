//= require jquery
//= require jquery.slick
//= require rails-ujs
//= require_tree .
/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */


$('.slider').slick({
  centerMode: true,

  slidesToShow: 5 ,
  autoplay:true,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 3
      }
    },
    {
      breakpoint: 480,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 1
      }
    }
  ]
});
