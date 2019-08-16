<?php if (count($languages) > 1) { ?>
    <a class="right-drop-list__header"><?php echo $text_language; ?></a>
    <div class="right-drop-list__container">
        <div class="widget qtranxs_widget">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
            <ul class="language-chooser">
                <?php foreach ($languages as $language) { ?>
                    <li class="language-chooser-item"><a class="right-drop-list__item" href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
                <?php } ?>
            </ul>
            <input type="hidden" name="code" value="" />
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
            </form>
        </div>
    </div>
<?php } ?>
