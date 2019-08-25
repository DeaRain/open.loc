<?php echo $header; ?>

<script>
    $(document).ready(function () {

        $('.feed__button').click(function (e) {
            $('.feed__container').toggleClass('feed__container__hide');
        });

        $('#value-up').click(function (e) {
            $('#input-quantity').val(parseInt($('#input-quantity').val())+1);
        });

        $('#value-down').click(function (e) {
            var count = parseInt($('#input-quantity').val());
            if(count>1) {
                $('#input-quantity').val(count - 1);
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

    });
</script>

<div class="grey-block">
    <div class="container">
        <ul class="my-breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
    </div>
</div>


<div class="container">
    <div class="sing-prod">
        <div class="sing-prod__left">
            <div class="sing-prod__img">
                <?php if ($thumb) : ?>
                    <img class="sing-prod__slider-img" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                <?php endif; ?>
                <?php if ($images) : ?>
                    <?php foreach ($images as $image) : ?>
                        <img class="sing-prod__slider-img" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
            <div class="sing-prod__extend-info">
                -10%
            </div>
            <div class="sing-prod__sale">
                <span class="sing-prod__saleText">До кінця акції залишилось:</span>
                <span class="sing-prod__saleTime">38:18:45</span>
            </div>
            <div class="sing-prod__slider">
                <?php if ($thumb) : ?>
                    <img class="sing-prod__slider-img" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                <?php endif; ?>
                <?php if ($images) : ?>
                    <?php foreach ($images as $image) : ?>
                        <img class="sing-prod__slider-img" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
                    <?php endforeach; ?>
                <?php endif; ?>
            </div>
        </div>
        <div id="product" class="sing-prod__right">
            <span class="sing-prod__header"><?php echo $heading_title; ?></span>

            <div class="sing-prod__menu">
                <div class="sing-prod__reviews">
                    <?php for ($i = 1; $i <= 5; $i++) : ?>
                        <?php if ($rating < $i) : ?>
                            <span class="icon-star"></span>
                        <?php else: ?>
                            <span class="icon-star" style="color: red"></span>
                        <?php endif; ?>
                    <?php endfor; ?>
                    <div><?php echo $reviews; ?></div>
                </div>
                <div class="sing_prod__favorite" onclick="wishlist.add('<?php echo $product_id; ?>');">
                    <span class="icon-heart"></span>
                    <div>в обрані</div>
                </div>
                <div class="sing_prod__share">
                    <span class="icon-share"></span>
                    <div>поділитись</div>
                </div>
            </div>

            <div class="sing-prod__info sing-prod_mText">
                <span class="sing_prod__aritcle"><b>Артикул:</b> HFM2367</span>

                <span class="sing_prod__brend"><b>Бренд:</b> <?php echo $manufacturer; ?></span>

                <span class="sing_prod__length"><b><?php echo $attribute_groups[0] ["attribute"][3]['name'] ?>:</b> <?php echo $attribute_groups[0] ["attribute"][3]['text'] ?></span>

                <span class="sing_prod__material"><b><?php echo $attribute_groups[0] ["attribute"][2]['name'] ?>:</b> <?php echo $attribute_groups[0] ["attribute"][0]['text'] ?></span>

            </div>

                <?php if ($options[0]) : ?>
                    <span class="sing-prod_mText"><b>Колір</b></span>
                <?php $option = $options[0]; ?>
                    <div class="sing-prod__colors">
                        <ul>
                            <?php foreach ($option['product_option_value'] as $option_value) : ?>
                                <li>
                                    <input type="radio" id="<?php echo $option_value['name']; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                    <label for="<?php echo $option_value['name']; ?>" style="background: <?php echo $option_value['name']; ?>">  </label>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <?php if ($options[1]) : ?>
                    <span class="sing-prod_mText"><b>Розмір</b> <i class="icon-ruler"></i>таблиця розмірів </span>
                    <?php $option = $options[1]; ?>
                    <div class="sing-prod__sizes">
                        <ul>
                            <?php foreach ($option['product_option_value'] as $option_value) : ?>
                                <li>
                                    <input type="radio" id="<?php echo $option_value['name']; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                    <label for="<?php echo $option_value['name']; ?>"> <?php echo $option_value['name']; ?>  </label>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <div class="sing-prod__prices">
                    <div class="sing-prod__opt">
                        Оптова ціна (від 5 упаковок): <b>60.00 UAH </b>
                    </div>
                    <div class="sing-prod__price-cur">
                        <div class="sing-prod__old-price">
                            <?php if($special) echo $special; ?>
                        </div>
                        <div class="sing-prod__price">
                            <?php echo $price; ?>
                        </div>
                    </div>
                </div>
                <div class="sing-prod__buttons">
                    <div class="sing-prod__count">
                        <div class="sing-prod__c-header"><?php echo $entry_qty; ?></div>
                        <div class="sing-prod__c-input">
                            <span id="value-down"  class="icon-right-chevron-1_2"></span>
                            <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
                            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                            <span id="value-up" class="icon-right-chevron-1_3"></span>
                        </div>
                    </div>
                    <div class="sing-prod__click">
                        купити в 1 клік
                    </div>
                    <div class="sing-prod__cart" id="button-cart" >
                        <span class="icon-shopping-bag"></span> до кошика
                    </div>
                </div>
                <div class="sing-prod__details">
                    <span class="sing-prod_mText"><b><?php echo $tab_description; ?></b></span>
                    <div class="sing-prod__discription">
                        <?php echo $description; ?>
                    </div>
                    <div id="disc"  class="sing-prod__disc-button">
                        розгорнути
                        <span class="icon-down-arrow-of-angle"></span>
                    </div>
                </div>
            </div>
    </div>
</div>

<div id="review"></div>

<?php if ($review_status) { ?>
<div class="container" id="tab-review" >
    <div class="feed">
        <div class="feed__button"><span><?php echo $text_write; ?></span> </div>
        <form id="form-review">
        <div class="feed__container feed__container__hide">
            <?php if ($review_guest) { ?>
            <div class="feed__name">
                <input type="text" name="name" value="" id="input-name" placeholder="<?php echo $entry_name; ?>"/>
            </div>

            <div class="feed__text">
                <textarea name="text" rows="5" id="input-review" placeholder="<?php echo $entry_review; ?>"></textarea>
            </div>
            <div class="feed__divine">
                <div class="feed__mark">
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1"/>
                    &nbsp;
                    <input type="radio" name="rating" value="2"/>
                    &nbsp;
                    <input type="radio" name="rating" value="3"/>
                    &nbsp;
                    <input type="radio" name="rating" value="4"/>
                    &nbsp;
                    <input type="radio" name="rating" value="5"/>
                    &nbsp;<?php echo $entry_good; ?>
                </div>

            <?php echo $captcha; ?>

                <div class="feed__submit">
                    <button  type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>"> <?php echo $button_continue; ?></button>
                </div>
            </div>

            <?php } else { ?>
                <?php echo $text_login; ?>
            <?php } ?>
        </div>
        </form>
    </div>
</div>

<?php } ?>

<?php echo $column_left; ?>
<?php echo $content_top; ?>


<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			if (json['success']) {
                $('#cart_opp').remove();
                $('#product').after('<div id="cart_opp" class="my-alert">' + json.success + '</div>');


				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				// $('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart').load('index.php?route=common/cart/info');
			}

            $('#cart_opp').click(function () {
                $('#cart_opp').toggle(100);
            });

		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
