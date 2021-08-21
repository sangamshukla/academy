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

        if (scroll > (document.FIX_HEADER_TOP || 300)) {
            sticky.addClass("fix_header");
        } else sticky.removeClass("fix_header");
    });
});

$(document).ready(function () {
    $('.btn_block_modal:not(:first)').addClass('inactive');
    // $('.modal_login_section').hide();
    // $('.modal_sinup_section').show();

    $('.btn_block_modal').click(function () {
        var t = $(this).attr('id');
        if ($(this).hasClass('inactive')) { //this is the start of our condition
            $('.btn_block_modal').addClass('inactive');
            $(this).removeClass('inactive');


            $('#' + t + 'C').fadeIn('slow');
        }
    })

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
