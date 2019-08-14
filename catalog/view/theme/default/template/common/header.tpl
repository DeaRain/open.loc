<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!--  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />-->
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<!--  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">-->
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>

  <link href="catalog/view/dist/css/main.css" rel="stylesheet">
  <link href="catalog/view/dist/css/media.css" rel="stylesheet">
</head>
<body class="<?php echo $class; ?>">

<?php if(0) :?>
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<?php endif;?>
<header>

    <?php if(0) :?>
    <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
            <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                <div class="dropdown-menu">
                    <div class="dropdown-inner">
                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                            <ul class="list-unstyled">
                                <?php foreach ($children as $child) { ?>
                                    <img src="<?php echo $child['image']; ?>" alt="">
                                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                <?php } ?>
                            </ul>
                        <?php } ?>
                    </div>
<!--                    <a href="--><?php //echo $category['href']; ?><!--" class="see-all">--><?php //echo $text_all; ?><!-- --><?php //echo $category['name']; ?><!--</a> </div>-->
            </li>
        <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
    <?php } ?>

    <?php endif;?>

  <div class="header-flex-container">
    <div class="container">
      <div class="header-container">
        <div class="header-container__left">
          <div class="menu-button">
            <div class="menu-button__logo">
              <i class="icon-menu"></i>
            </div>
            <span class="menu-button__text">
                            MENU
                        </span>
          </div>

          <div class="left-menu__wrapper-background">
          </div>

          <div class="left-menu__wrapper">
            <div class="left-menu__top-block"></div>
            <div class="left-menu__close-button"><img src="catalog/view/dist/img/cross-remove-sign.svg"
                                                      class="cross-remove-sign"></div>
            <div class="left-menu__menu">

                <ul id="menu-menu-left" class="left-menu">
                <?php foreach ($informations as $information) { ?>
                   <?php if($information['title']!='Галерея') : ?>
                    <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-132"><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php else :?>
                        <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-132"><a href="<?php echo $galery_href; ?>">Галерея</a></li>
                    <?php endif; ?>
                <?php } ?>

                </ul>

<!--                <li id="menu-item-120" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-120"><a href="javascript:void(0);">КЛІЄНТАМ</a>-->
<!--                  <ul class="sub-menu">-->
<!--                    <li id="menu-item-121" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-121"><a href="#">Питання-відповідь</a></li>-->
<!--                    <li id="menu-item-122" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-122"><a href="#">Доставка і оплата</a></li>-->
<!--                    <li id="menu-item-123" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-123"><a href="#">Повернення товару</a></li>-->
<!--                  </ul>-->
<!--                </li>-->
            </div>
          </div>

          <div class="header-container__phone">
            <a class="contact" href="tel:<?php echo str_replace(array(' ', '(', ')', '-','+'),'',$telephone);?>" >+<?php echo $telephone; ?></a>
          </div>
        </div>

        <div class="header-container__center-logo">
<!--          <img src="catalog/view/dist/img/logo.svg" class="logo__img">-->
            <a href=""><img src="<?php echo $logo; ?>" class="logo__img"></a>
        </div>

        <div class="header-container__right">
          <div class="interface-item interface-item-search">
            <span class="icon-magnifying-glass interface-item__icon"></span>
          </div>
          <div class="interface-item">
            <span class="icon-heart interface-item__icon "></span>
            <span class="interface-item__counter">4</span>
          </div>
          <div class="interface-item">
            <span class="icon-shopping-bag interface-item__icon"></span>
            <span class="interface-item__counter">4</span>
          </div>
          <div class="interface-item">
            <span class="icon-user interface-item__icon"></span>
          </div>


          <div class="header-container__right-drop-lists">
            <div class="right-drop-list">
                <?php echo $currency; ?>
            </div>

            <div class="right-drop-list">
                <?php echo $language; ?>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="header-menu-container">
        <nav>
          <div class="top-menu-changer">
            <span class="top-menu-changer__text">каталог продукції</span>
            <span class="icon-down-arrow-of-angle top-menu-changer__arrow"></span>
          </div>
          <ul class="top-menu">

<!--              <pre>--><?php //var_dump($categories);  ?><!--</pre>-->

              <?php foreach ($categories as $category) : ?>

              <li class="top-menu__item top-menu__item_dropdown">

                  <a <?php echo 'href="'.$category['href'].'"'; ?> class="top-menu__item-url"><?= $category['name']?></a>
                  <?php if($category['children']) :?>

                  <div class="top-menu__item-container">
                      <div class="container">
                          <div class="top-menu__item-container-inside">

                      <?php foreach ($category['children'] as $children) : ?>
                          <a href="<?=$children['href'] ?>" class="top-menu__item-container-item">
                              <img src="<?=$children['image'] ?>" class="top-menu__item-container-item-image">
                              <span class="top-menu__item-container-item-header">
                                            <?=$children['name'] ?>
                              </span>
                          </a>
                      <?php endforeach;?>
                          </div>
                      </div>
                  </div>
                  <?php endif; ?>
              </li>
              <?php endforeach;?>
          </ul>
        </nav>
      </div>
    </div>
  </div>
      <div class="header-search">
          <div class="container">
              <?php echo $search; ?>
          </div>
      </div>
</header>
