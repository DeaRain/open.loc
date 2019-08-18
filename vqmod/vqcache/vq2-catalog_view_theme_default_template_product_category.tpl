<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>


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
    <div class="cat-info">
        <img src="<?php echo $thumb; ?>" alt="" class="cat-info__img">
        <div class="cat-info__right-block">
            <div class="cat-info__header"><?php echo $heading_title; ?></div>
            <div class="cat-info__desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt
                in culpa qui officia deserunt mollit anim id est laborum.
                <p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et
                    dolore magna aliqua.
                    <?php echo $description; ?>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="catalog">
        <div class="catalog__left-block">
            <?php echo $column_left; ?>
        </div>

        <div class="catalog__right-block">
                <?php echo $content_top; ?><div id="mfilter-content-container">
                <?php if ($products) : ?>
                <div class="products">
                    <div class="products__header">

                        <div class="products__view">
                            Показати по
                            <button type="button" id="list-view" class="products__button products__button_active"
                                    data-toggle="tooltip"
                                    title="<?php echo $button_list; ?>">3
                            </button>
                            <button type="button" id="grid-view" class="products__button" data-toggle="tooltip"
                                    title="<?php echo $button_grid; ?>">4
                            </button>
                        </div>
                        <div class="products__sort">
                            <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                            <select id="input-sort" class="products__selector" onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                        <option value="<?php echo $sorts['href']; ?>"
                                                selected="selected"><?php echo $sorts['text']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <!--                <label class="control-label" for="input-limit">-->
                    <?php //echo $text_limit; ?><!--</label>-->
                    <!--                <select id="input-limit" class="form-control" onchange="location = this.value;">-->
                    <!--                    --><?php //foreach ($limits as $limits) { ?>
                    <!--                        --><?php //if ($limits['value'] == $limit) { ?>
                    <!--                            <option value="-->
                    <?php //echo $limits['href']; ?><!--" selected="selected">-->
                    <?php //echo $limits['text']; ?><!--</option>-->
                    <!--                        --><?php //} else { ?>
                    <!--                            <option value="--><?php //echo $limits['href']; ?><!--">-->
                    <?php //echo $limits['text']; ?><!--</option>-->
                    <!--                        --><?php //} ?>
                    <!--                    --><?php //} ?>
                    <!--                </select>-->

                    <div class="products__body">
                        <?php foreach ($products as $product) { ?>

                            <div class="prod">
                                <a href="<?php echo $product['href']; ?>" class="prod__item-url">

                                    <img src="<?php echo $product['thumb']; ?>"
                                         alt="<?php echo $product['name']; ?>"
                                         title="<?php echo $product['name']; ?>" class="prod__img"/>


                                    <span class="prod__name"><?php echo $product['name']; ?></span>
                                </a>
                                <div class="prod__control-panel">
                                    <div class="interface-item interface-item_product-menu"
                                         onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                                        <span class="icon-heart interface-item__icon"></span>
                                    </div>
                                    <div class="interface-item interface-item_product-menu"
                                         onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                        <span class="icon-shopping-bag interface-item__icon"></span>
                                    </div>
                                </div>
                                <div class="prod__prices">
                                    <?php if ($product['special']) : ?>
                                        <span class="prod__price"><?php echo $product['price']; ?> </span>
                                        <span class="prod__old-price"><?php echo $product['special']; ?> </span>
                                    <?php else : ?>
                                        <span class="prod__price"><?php echo $product['price']; ?> </span>
                                    <?php endif; ?>
                                </div>
                                <?php if ($product['status_new']) : ?>
                                    <div class="prod__extend-info">
                                        NEW
                                    </div>
                                <?php elseif ($product['special']) : ?>
                                    <div class="prod__extend-info">
                                        <?php echo number_format(100 - (float)$product['special'] / (float)$product['price'] * 100) . '%'; ?>
                                    </div>
                                <?php endif; ?>

                            </div>
                        <?php } ?>
                    </div>
                    <div class="products__footer">
                        <?php echo $pagination; ?>
                    </div>
                </div>
                <?php endif; ?>
        </div>
    </div>
</div>

</div><?php echo $content_bottom; ?>
<?php echo $column_right; ?>


<div class="grey-block">
    <div class="container">
        <div class="cat-text">
            <span>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
<p> <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            </span>
        </div>
    </div>
</div>
</div>
<?php echo $footer; ?>
