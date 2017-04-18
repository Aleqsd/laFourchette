$(document).ready(function() {
  $('.slicktest').slick({
    centerMode: true,
    centerPadding: '60px',
    autoplay: true,
    autoplaySpeed: 1000,
    dots:true,
    slidesToShow: 3,
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
});
