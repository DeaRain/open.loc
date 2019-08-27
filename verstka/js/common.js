console.log('common file');

$(document).ready(function () {

    $('.feed__button').click(function (e) {
        $('.feed__container').toggleClass('feed__container__hide');
    });


    $('.icon-right-chevron-1_3').click(function (e) {
        $(this).parent().find('input').val(parseInt($(this).parent().find('input').val()) + 1);
    });
    $('.icon-right-chevron-1_2').click(function (e) {
        var count = parseInt($(this).parent().find('input').val());
        if (count > 1) {
            $(this).parent().find('input').val(count - 1);
        }
    });

    $('#disc').click(function (e) {
        $('.sing-prod__details').toggleClass("disc_active")
    });

    $('.sing-prod__img').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.sing-prod__slider'
    });
    $('.sing-prod__slider').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.sing-prod__img',
        variableWidth: true,
        // dots: true,
        // centerMode: true,
        focusOnSelect: true
    });

    $(function() {
        $('.basket__select').selectric({
            arrowButtonMarkup: '<span class="icon-down-arrow-of-angle select__button""></span>',
        });
    });

    $('.products__filter').click(function () {
        if ($(window).width() < 993) {
            $('.catalog__left-block').toggle(50);
        }
    });

    $('.mfilter-heading').click(function () {
        $(this).parent().find('.mfilter-content-opts').toggle(50);
        $(this).toggleClass('mfilter-collapsed');
    });

    $('#list-view').click(function() {

        $('#grid-view').removeClass('products__button_active');
        $('#list-view').addClass('products__button_active');

        $('.products__body').removeClass('products__body_4');

        localStorage.setItem('display', 'list');
    });

    $('#grid-view').click(function() {
        $('#list-view').removeClass('products__button_active');
        $('#grid-view').addClass('products__button_active');

        $('.products__body').addClass('products__body_4');

        localStorage.setItem('display', 'grid');
    });

    if (localStorage.getItem('display') == 'grid') {
        $('#grid-view').trigger('click');
    } else {
        $('#list-view').trigger('click');
    }


    window.onresize = function (event) {
        if ($(window).width() < 1200) {
            $('#grid-view').removeClass('products__button_active');
            $('#list-view').addClass('products__button_active');

            $('.products__body').removeClass('products__body_4');
        }
        if ($(window).width() >= 1200) {
            if (localStorage.getItem('display') == 'grid') {
                $('#grid-view').trigger('click');
            } else {
                $('#list-view').trigger('click');
            }
        }
        if ($(window).width() < 993) {
            var drop_menu = $('.header-container__right-drop-lists').detach();
            drop_menu.appendTo('.left-menu__top-block');
        }
        if ($(window).width() > 993) {
            var drop_menu = $('.header-container__right-drop-lists').detach();
            drop_menu.appendTo('.header-container__right');
        }
    }

    if ($(window).width() < 993) {
        var drop_menu = $('.header-container__right-drop-lists').detach();
        drop_menu.appendTo('.left-menu__top-block');
    }
    if ($(window).width() > 993) {
        var drop_menu = $('.header-container__right-drop-lists').detach();
        drop_menu.appendTo('.header-container__right');
    }

    $('.js-main-slider').slick({
        dots: true,
        arrows: false,
        responsive: [
            {
                breakpoint: 0,
                settings: "unslick"
            },
            {
                breakpoint: 768,
                setting: {
                    dots: true,
                    arrows: false,
                }
            }
        ]
    });

    $('.js-mobile-slider').slick({
        dots: true,
        arrows: false,
        responsive: [
            {
                breakpoint: 768,
                setting: {
                    dots: true,
                    arrows: false,
                }
            }
        ]
    });

    $('.interface-item-search').click(function () {

        $('.header-search').toggle(0);
        console.log('test');
    });

    $('.search-remove-sign').click(function () {
        $('.header-search').slideToggle(0);
        console.log('test');
    });


    $('.infoline-slider-js').slick({
        // dots:true,
        arrows: false,
        slidesToShow: 6,
        slidesToScroll: 3,
        variableWidth: true,
        // draggable: true
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    infinity: true,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                    arrows: true,
                    slidesToShow: 4,
                    slidesToScroll: 3,
                }
            },
            {
                breakpoint: 993,
                settings: {
                    infinity: true,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                    arrows: true,
                    slidesToShow: 3,
                    slidesToScroll: 3,
                }
            },
            {
                breakpoint: 767,
                settings: {
                    infinity: true,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                    arrows: true,
                    slidesToShow: 2,
                    slidesToScroll: 2,
                }
            },
            {
                breakpoint: 479,
                settings: {
                    infinity: true,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                    arrows: true,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                }
            }
        ]
    });


    $('.production-slider').slick({
        dots: true,
        arrows: true,
        slidesToShow: 4,
        slidesToScroll: 2,
        variableWidth: true,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    dots: true,
                    arrows: true,
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                }
            },
            {
                breakpoint: 993,
                settings: {
                    dots: true,
                    arrows: true,
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    variableWidth: true,
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    variableWidth: false,
                    centerPadding: true,
                    centerMode: true,
                }
            }
        ]
    });

    $('.poppup-close').click(function () {
        $(this).parent().remove();
    });

    $('.menu-item').click(function (e) {
        if ($(this).parent().is('.left-menu')) {
            if (e.target.getAttribute('href') == "javascript:void(0);") {
                $(this).find('.sub-menu').toggle(50);
                $(this).children('a').toggleClass('after-rotate');
            }
        }
        if ($(this).parent().is('.menu-footer')) {
            if ($(window).width() < 768) {
                if (e.target.getAttribute('href') == "javascript:void(0);") {
                    $(this).find('.sub-menu').toggle(50);
                    $(this).children('a').toggleClass('after-rotate');
                    if ($(this).parent().is('.menu-footer-contact')) {
                        $(this).parent().parent().find('.footer_container__toggle').toggle(50);
                    }

                    if ($(this).parent().is('.menu-footer-client')) {
                        $(this).parent().parent().find('.contact-toogle').toggle(50);
                    }
                }
            }
        }
    });


    $('.top-menu-changer').click(function () {
        if ($(window).width() < 993) {
            $(this).parent().find('.top-menu').toggle(50);
            $(this).children().toggleClass('after-rotate');
        }
    });



    $('.right-drop-list').click(function () {
        $(this).find('.right-drop-list__container').toggleClass('right-drop-list__container_active');
    });
    $('.menu-button').click(function () {
        if ($(window).width() > 767) {
            $(this).parent().find('.left-menu__wrapper').animate({width: "555px"}, 450);
        } else {
            $(this).parent().find('.left-menu__wrapper').animate({width: "320px"}, 450);
        }
        $(this).parent().find('.left-menu__wrapper-background').animate({height: "100vh", top: "0px"}, 400);
    });

    $('.left-menu__wrapper-background').click(function () {
        $(this).parent().find('.left-menu__wrapper').animate({width: "0px"}, 350);
        $(this).animate({height: "0", top: "50%"}, 300);
    });

    $('.left-menu__close-button').click(function () {
        $(this).parent().animate({width: "0px"}, 350);
        $(this).parent().parent().find('.left-menu__wrapper-background').animate({height: "0", top: "50%"}, 300);
    });


    $('.footer-container__item').click(function () {
        $(this).find('.footer_container__toggle').toggleClass('footer_container__toggle_active');
    });

    $('.my-alert').click(function (e) {
        $('.my-alert').toggle(100);
    });
    $(document).click(function (e) { // событие клика по веб-документу
        var div = $(".right-drop-list"); // тут указываем ID элемента
        if (!div.is(e.target) // если клик был не по нашему блоку
            && div.has(e.target).length === 0) { // и не по его дочерним элементам
            div.find('.right-drop-list__container').removeClass('right-drop-list__container_active');// скрываем его
        }
    });

    $(function() {
        $('.products__selector').selectric({
            arrowButtonMarkup: '<span class="icon-down-arrow-of-angle select__button""></span>',
        });
    });


});