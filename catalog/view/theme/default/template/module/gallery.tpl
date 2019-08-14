<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $content_top; ?>
<?php echo $content_bottom; ?>
<?php echo $column_right; ?>

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

<?php echo $footer; ?>


