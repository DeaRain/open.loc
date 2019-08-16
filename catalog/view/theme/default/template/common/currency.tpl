<?php if (count($currencies) > 1) { ?>

<a class="right-drop-list__header"><?php echo $code ?></a>
<div class="right-drop-list__container">
    <div class="widget qtranxs_widget">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
            <ul class="language-chooser">
                <?php foreach ($currencies as $currency) { ?>
                    <li><button class="currency-select right-drop-list__item" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['code']; ?></button></li>
                <?php } ?>
            </ul>
            <input type="hidden" name="code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        </form>
    </div>
</div>
<?php } ?>
