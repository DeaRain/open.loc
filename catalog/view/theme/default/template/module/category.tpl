<div class="filter-header">Категорії</div>
<div class="filter-list">

    <?php foreach ($categories as $category) : ?>


            <div class="filter-list__item">
        <?php if ($category['children']) : ?>
            <a class="filter-list__name filter-list__name_active" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                <ul>
                    <?php foreach ($category['children'] as $child) : ?>

                        <?php if ($child['category_id'] == $child_id) : ?>
                            <li><a href="<?php echo $child['href']; ?>"
                                   class="filter-list__active"><?php echo $child['name']; ?></a></li>
                        <?php else: ?>
                            <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                        <?php endif; ?>

                    <?php endforeach; ?>
                </ul>
        <?php else: ?>
            <a class="filter-list__name" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php endif; ?>
            </div>

    <?php endforeach; ?>
</div>

<?php if(0) :?>
<div class="list-group">
    <?php foreach ($categories as $category) { ?>
        <?php if ($category['category_id'] == $category_id) { ?>
            <a href="<?php echo $category['href']; ?>"
               class="list-group-item active"><?php echo $category['name']; ?></a>
            <?php if ($category['children']) { ?>
                <?php foreach ($category['children'] as $child) { ?>
                    <?php if ($child['category_id'] == $child_id) { ?>
                        <a href="<?php echo $child['href']; ?>"
                           class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                    <?php } else { ?>
                        <a href="<?php echo $child['href']; ?>"
                           class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
                    <?php } ?>
                <?php } ?>
            <?php } ?>
        <?php } else { ?>
            <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
        <?php } ?>
    <?php } ?>
</div>
<?php endif; ?>