const initCarouselSlideClick = () => {
    /*$('#carouselExampleControls').carousel({
        interval: 1
      })*/
    
      $('#carouselExampleControls').on('slid.bs.carousel', function() {
        console.log("slide evebt");
      })
  }
    
  export { initCarouselSlideClick };