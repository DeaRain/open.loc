<footer>
  <div class="container">
    <div class="subscribe-container">
      <div class="subscribe-container__header">
        Підпишись на новини та акції
      </div>

      <div class="subscribe-container__text-box">
        <form>
          <div class="form-group">
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введіть email для підписки">
            <button type="submit" class="btn subscribe-container__submit-bnt"><span class="icon-right-chevron-1_3"></span></button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="footer-container">
      <div class="footer-container__item">
        <ul id="menu-menu-about" class="menu-footer">
          <li id="menu-item-69" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-69">
            <a href="javascript:void(0);">Про компанію</a>
            <ul class="sub-menu">
                <?php foreach ($informations as $information) : ?>
                    <?php if($information['parent']=='1') : ?>
                        <li class="menu-item "><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
          </li>
        </ul>
      </div>

      <div class="footer-container__item">
        <ul id="menu-menu-about1" class="menu-footer">
          <li id="menu-item-691" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-69">
            <a href="javascript:void(0);">магазин</a>
            <ul class="sub-menu">
                <?php foreach ($categories as $category) : ?>
                <li class="menu-item"> <a <?php echo 'href="'.$category['href'].'"'; ?> class="top-menu__item-url"><?= $category['name']?></a></li>
                <?php endforeach;?>
            </ul>
          </li>
        </ul>
      </div>


      <div class="footer-container__item">
        <ul id="menu-menu-about12" class="menu-footer menu-footer-client">
          <li id="menu-item-2134" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-69">
            <a href="javascript:void(0);">Клієнтам</a>
            <ul class="sub-menu">
                <?php foreach ($informations as $information) : ?>
                    <?php if($information['parent']=='2') : ?>
                        <li class="menu-item "><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
          </li>
        </ul>
        <a href="#" class="contact contact-footer-bot contact-toogle">Прайс-лист  <span class="icon-download"></span></a>
      </div>



      <div class="footer-container__item">
        <ul id="menu-menu-about122" class="menu-footer">
          <li id="menu-item-6912" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-69">
            <a href="javascript:void(0);" onclick="false">Партнерам</a>
            <ul class="sub-menu">
                <?php foreach ($informations as $information) : ?>
                    <?php if($information['parent']=='3') : ?>
                        <li class="menu-item "><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
          </li>
        </ul>
      </div>


      <div class="footer-container__item">
        <ul id="menu-menu-about12234" class="menu-footer menu-footer-contact">
          <li id="menu-item-69412" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-69">
            <a href="javascript:void(0);">Контакти</a>
            <ul class="sub-menu">

            </ul>
          </li>
        </ul>

        <div class="footer_container__toggle">
          <a href="tel:<?php echo str_replace(array(' ', '(', ')', '-','+'),'',$telephone);?>" class="contact contact-footer ">+<?php echo $telephone; ?></a>
          <a href="mailto:<?php echo $email; ?>" class="contact contact-footer "><?php echo $email; ?></a>

          <div class="footer_container_soc">
            <a href="<?php echo $facebook; ?>" class="contact contact-soc"><span class="icon-facebook-logo"></span></a>
            <a href="<?php echo $instagram; ?>" class="contact contact-soc"><span class="icon-instagram-social-outlined-logo"></span></a>
            <a href="<?php echo $twitter; ?>" class="contact contact-soc"><span class="icon-twitter-social-outlined-logo"></span></a>
            <a href="<?php echo $youtube; ?>" class="contact contact-soc"><span class="icon-youtube"></span></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="grey-container__footer">
    <div class="container">
      <div class="copyright-container">
        <div class="copyright-container__left">
          ©Сopyright 2018 - V&T SOCKS
        </div>

        <div class="copyright-container__right">
          <img src="catalog/view/dist/img/group.svg"
               class="Group">
        </div>
      </div>
    </div>
  </div>

</footer>

<script src="catalog/view/dist/js/lib.js"></script>
<script src="catalog/view/dist/js/common.js"></script>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>