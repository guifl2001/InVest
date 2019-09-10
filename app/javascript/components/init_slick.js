import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import 'slick-carousel';


const initSlick = () => {
  console.log('oi')
  // slider logo home page
  $('.slider').slick({
    centerMode: true,
    slidesToShow: 5 ,
    autoplay:true,
    arrows: false,
    dots: false,
    pauseOnHover: true,
    responsive: [
      {
        breakpoint: 800,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      }
    ]
  });

  // slider from user profile
  $('.opcaos').slick({
    centerMode: true,
    slidesToShow: 3 ,
    autoplay:false,
    arrows: true,
    dots: false,
    pauseOnHover: true,
    responsive: [
      {
        breakpoint: 800,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });


}

export { initSlick }
