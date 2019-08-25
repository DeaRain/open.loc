<?php echo $header; ?>

<script>
    $(document).ready(function () {

        $('.icon-right-chevron-1_3').click(function (e) {
            $(this).parent().find('input').val(parseInt($(this).parent().find('input').val()) + 1);
            // $(this).parent().find('button').trigger('click');

        });
        $('.icon-right-chevron-1_2').click(function (e) {
            var count = parseInt($(this).parent().find('input').val());
            if (count > 1) {
                $(this).parent().find('input').val(count - 1);
            }
            // $(this).parent().find('button').trigger('click');
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


<div class="container"
    <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <div class="basket-header">Кошик</div>
    <div class="basket basket_mid">
        <form style="w" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="basket__right">
            <div class="basket__sub-head">товари у вашому кошику</div>

                <div class="basket__container">
                    <div class="basket__products">
                        <?php foreach ($products as $product) { ?>
                            <div class="basket__product">
                                <div class="basket__img">
                                    <img src="<?php echo $product['thumb']; ?>" alt="">
                                </div>
                                <div class="basket__name"><a
                                            href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                    <?php if (!$product['stock']) { ?>
                                        <span class="text-danger">***</span>
                                    <?php } ?>
                                </div>
                                <div class="basket__price"><?php echo $product['price']; ?></div>
                                <div class="basket__count">
                                    <div class="sing-prod__c-header">Кількість</div>
                                    <div class="sing-prod__c-input">
                                        <span id="value-down" class="icon-right-chevron-1_2"></span>
                                        <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]"
                                               value="<?php echo $product['quantity']; ?>" size="1"/>
                                        <span id="value-up" class="icon-right-chevron-1_3"></span>
                                    </div>
                                </div>
                                <div class="basket__total"><?php echo $product['total']; ?></div>
                                <div class="basket__remove"
                                     onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><span
                                            class="icon-cross-remove-sign"></span></div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <button style="width: 100%; background: none; border: 1px solid #000000; margin: 5px 0px" type="submit"
                        data-toggle="tooltip" title="<?php echo $button_update; ?>">Оновити
                </button>
            <div class="basket__checkout">
                <?php foreach ($totals as $total) { ?>
                    <div class="basket__result">
                        <div class="basket_r-left"><?php echo $total['title']; ?>:</div>
                        <div class="basket_r-right"><?php echo $total['text']; ?></div>
                    </div>
                <?php } ?>
            </div>
            <div class="basket__buttons">
                <div class="basket_b-left"><a href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a></div>
                <div class="basket_b-right"><a href="<?php echo $checkout; ?>"><?php echo $button_checkout; ?></a></div>
            </div>
        </div>
        </form>
    </div>
</div>


<?php echo $column_left; ?>
<?php echo $content_top; ?>

<?php echo $content_bottom; ?>
<?php echo $column_right; ?>
<?php echo $footer; ?>
