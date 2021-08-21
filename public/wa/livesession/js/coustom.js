$(document).ready(function () {
  $(".navbar-light .dmenu").hover(
    function () {
      $(this).find(".sm-menu").first().stop(true, true).slideDown(150);
    },
    function () {
      $(this).find(".sm-menu").first().stop(true, true).slideUp(105);
    }
  );
  $(window).scroll(function () {
    var sticky = $(".navbar"),
      scroll = $(window).scrollTop();

    if (scroll >= 300) {
      sticky.addClass("fix_header");
    } else sticky.removeClass("fix_header");
  });
});
$(document).ready(function () {
  $(".filter-button").click(function () {
    var value = $(this).attr("data-filter");

    if (value == "all") {
      //$('.filter').removeClass('hidden');
      $(".filter").show("1000");
    } else {
      //            $('.filter[filter-item="'+value+'"]').removeClass('hidden');
      //            $(".filter").not('.filter[filter-item="'+value+'"]').addClass('hidden');
      $(".filter")
        .not("." + value)
        .hide("3000");
      $(".filter")
        .filter("." + value)
        .show("3000");
    }
    $(".filter-button").removeClass("filter_tab_active");
    $(this).addClass("filter_tab_active");
  });
});

var galleryThumbs = new Swiper(".gallery-thumbs", {
  spaceBetween: 3,
  slidesPerView: 3,
  freeMode: true,

  watchSlidesVisibility: true,
  watchSlidesProgress: true,
  breakpoints: {
    // when window width is >= 499px
    499: {
      slidesPerView: 4,
      spaceBetweenSlides: 50,
    },
    // when window width is >= 999px
    999: {
      slidesPerView: 5,
      spaceBetweenSlides: 40,
    },
  },
});
var galleryTop = new Swiper(".gallery-top", {
  spaceBetween: 10,
  autoplay: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  thumbs: {
    swiper: galleryThumbs,
  },
});
var swiper = new Swiper(".subject_card_block", {
  slidesPerView: 1,
  spaceBetween: 50,
  watchSlidesVisibility: true,
  watchSlidesProgress: true,
  breakpoints: {
    // when window width is >= 499px
    499: {
      slidesPerView: 1,
      spaceBetweenSlides: 50,
    },
    // when window width is >= 999px
    999: {
      slidesPerView: 4,
      spaceBetweenSlides: 20,
    },
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});
// testimonial slider
var swiper = new Swiper('#teacher_testimonial', {
   slidesPerView: 1,
      autoHeight: true,
      // direction: 'vertical',
     freeMode: true,
     autoHeight: true,
     // grabCursor: true,
   navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
      pagination: {
        el: '.swiper-pagination',
      },
    });
// vedio section
$(".cover").on("click", function () {
  $(this).children().css({
    "z-index": 1,
    opacity: 1,
  });
  $(this).children().trigger("play");
});

$("video").on("click", function () {
  console.log("a");
});

$(document).ready(function(){
    columnChart();
    
    function columnChart(){
        var item = $('.chart', '.column-chart').find('.item'),
        itemWidth = 100 / item.length;
        item.css('width', itemWidth + '%');
        
        $('.column-chart').find('.item-progress').each(function(){
            var itemProgress = $(this),
            itemProgressHeight = $(this).parent().height() * ($(this).data('percent') / 100);
            itemProgress.css('height', itemProgressHeight);
        });
    };
});