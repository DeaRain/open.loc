<div class="container">
    <div class="our-productions">
        <div class="our-productions__top">
            <span class="our-productions__header">
                <?php echo $heading_title; ?>
            </span>
            <div class="our-productions__tabs">
                <ul class="nav">
                    <li><a class="active" data-toggle="tab" href="#panel1">новинки</a></li>
                    <li><a data-toggle="tab" href="#panel2">SALE</a></li>
                </ul>
            </div>
        </div>
        <div class="our-productions__content">
            <div class="tab-content">
                <div id="panel1" class="tab-pane fade in active show">
                    <div class="production-slider slider__dots_main-theme slider__dots_our-productions-style slider__arrows_main-theme">

                        <?php foreach ($products as $product) : ?>
                            <div class="production-slider__item">
                                <a href="<?php echo $product['href']; ?>" class="production-slider__item-url">
                                    <img class="production-slider__item-img" src="<?php echo $product['thumb']; ?>" alt="">
                                    <span class="production-slider__item-name"><?php echo $product['name']; ?></span>
                                </a>
                                <div class="production-slider__item-control-panel">
                                    <div class="interface-item interface-item_product-menu">
                                        <span class="icon-heart interface-item__icon "></span>
                                    </div>
                                    <div class="interface-item interface-item_product-menu">
                                        <span class="icon-shopping-bag interface-item__icon"></span>
                                    </div>
                                </div>
                                <div class="production-slider__item-prices">
                                <?php if($product['special']) : ?>
                                    <span class="production-slider__item-price"><?php echo $product['special']; ?> </span>
                                    <span class="production-slider__item-old-price"><?php echo $product['price']; ?> </span>
                                <?php else : ?>
                                    <span class="production-slider__item-price"><?php echo $product['price']; ?> </span>
                                <?php endif; ?>
                                </div>
                                <div class="production-slider_extend-info">
                                    <?= $product['attributes'][0]['text']
//                                    ." ".$product['status_new']
                                    ?>
                                </div>
                            </div>
                        <?php endforeach; ?>


                    </div>

                </div>
                <div id="panel2" class="tab-pane fade">
                    <h3>Панель 2</h3>
                    <p>Содержимое 2 панели...</p>
                </div>
            </div>
        </div>
    </div>
</div>


<?php if(0) : ?>
<h3><?php echo $heading_title; ?></h3>
<div class="row">

  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<?php endif; ?>