const table = () => {
  var properties = [
    'name',
    'wins',
    'draws',
    'losses',
    'total',
  ];

  $.each( properties, function( i, val ) {

    var orderClass = '';

    $("#" + val).click(function(e){
      e.preventDefault();
      $('.filter__link.filter__link--active').not(this).removeClass('filter__link--active');
        $(this).toggleClass('filter__link--active');
        $('.filter__link').removeClass('asc desc');

        if(orderClass == 'desc' || orderClass == '') {
            $(this).addClass('asc');
            orderClass = 'asc';
          } else {
            $(this).addClass('desc');
            orderClass = 'desc';
          }

      var parent = $(this).closest('.header__item');
          var index = $(".header__item").index(parent);
      var $table = $('.table-content');
      var rows = $table.find('.table-row').get();
      var isSelected = $(this).hasClass('filter__link--active');
      var isNumber = $(this).hasClass('filter__link--number');

      rows.sort(function(a, b){

        var x = $(a).find('.table-data').eq(index).text();
            var y = $(b).find('.table-data').eq(index).text();

        if(isNumber == true) {

          if(isSelected) {
            return x - y;
          } else {
            return y - x;
          }

        } else {

          if(isSelected) {
            if(x < y) return -1;
            if(x > y) return 1;
            return 0;
          } else {
            if(x > y) return -1;
            if(x < y) return 1;
            return 0;
          }
        }
          });

      $.each(rows, function(index,row) {
        $table.append(row);
      });

      return false;
    });

  });

  /**
   * Hero fade transition
   */
  window.HeroFade_Object = {};
  ( function( window, $, that ) {

    // Constructor.
    that.init = function() {
      that.cache();

      if ( that.meetsRequirements ) {
        that.bindEvents();
      }
    };

    // Cache all the things.
    that.cache = function() {
      that.$c = {
        window: $(window),
        heroSelector: $( '.hero' ),
      };
    };

    // Combine all events.
    that.bindEvents = function() {
      that.$c.window.on( 'load', that.doHero );
    };

    // Do we meet the requirements?
    that.meetsRequirements = function() {
      return that.$c.heroSelector.length;
    };

    // Watch the user scroll position and fade the hero
    that.doHero = function() {
        $(window).scroll(function(){
            // transition the fade by dividing div height & opacity
            $( ".hero" ).css("opacity", 1 - $(window).scrollTop() / $('.hero').height());
        });
    };

    // Engage!
    $( that.init );

  })( window, jQuery, window.HeroFade_Object );
}

export { table };
