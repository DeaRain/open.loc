<?php if ($reviews) { ?>

    <div class="container">

        <div class="product__header">відгуки</div>

        <div class="reviews">
            <?php foreach ($reviews as $review) { ?>
                <div class="review">
                    <div class="review__header">
                        <div class="review__h-left">
                            <span class="review__name"><?php echo $review['author']; ?></span>
                            <span class="review__date"><?php echo $review['date_added']; ?></span>
                        </div>
                        <div class="review__h-right">
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                                <?php if ($review['rating'] < $i) { ?>
                                    <span class="icon-star"></span>
                                <?php } else { ?>
                                    <span class="icon-star span_active"></span>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="review__body">
                        <?php echo $review['text']; ?>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
<?php } ?>