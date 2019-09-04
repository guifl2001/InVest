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
  arrows: false,
  dots: false,
});
