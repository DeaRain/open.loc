
<div class="main-slider main-slider_full js-main-slider slider__dots_main-theme">

    <?php foreach ($banners as $banner) : ?>
    <div class="main-slider__item ">
        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
        <?php if ($banner['link']) : ?>
        <a class="main-slider__button" href="<?php echo $banner['link']; ?>"><?php echo $banner['title']; ?></a>
        <?php endif; ?>
    </div>
    <?php endforeach; ?>
</div>

<?php if(0) :?>

<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>

    <?php endif; ?>