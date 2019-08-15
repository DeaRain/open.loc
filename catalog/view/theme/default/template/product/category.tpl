<?php echo $header; ?>


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
    <div style="padding: 0px" class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" style="padding: 0px" class="<?php echo $class; ?>"><?php echo $content_top; ?>


            <?php if ($products) { ?>


            <div class="products">
                <div class="products__header">


                    Показати по
                    <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip"
                            title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                    <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip"
                            title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>


                    <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
                    <select id="input-sort" class="form-control" onchange="location = this.value;">
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
                <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                <select id="input-limit" class="form-control" onchange="location = this.value;">
                    <?php foreach ($limits as $limits) { ?>
                        <?php if ($limits['value'] == $limit) { ?>
                            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                        <?php } else { ?>
                            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                        <?php } ?>
                    <?php } ?>
                </select>
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
                                <div class="interface-item interface-item_product-menu" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">
                                    <span class="icon-heart interface-item__icon" ></span>
                                </div>
                                <div class="interface-item interface-item_product-menu" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');">
                                    <span class="icon-shopping-bag interface-item__icon" ></span>
                                </div>
                            </div>
                            <div class="prod__prices">
                                <span class="prod__price"><?php echo $product['special']; ?></span>
                                <span class="prod__old-price"><?php echo $product['price']; ?></span>
                            </div>
                            <div class="prod__extend-info">
                                -10%
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <div class="products__footer">
                    <div class="row">
                        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                    </div>
                </div>

            </div>
        </div>

    <?php } ?>
    </div>
</div>

<?php echo $content_bottom; ?>
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

<?php echo $footer; ?>
