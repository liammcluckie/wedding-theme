<section class="container">
    <div class="row flex-centered">
        <div class="column two-thirds m-one-whole">
            <?php echo wedd_render_wp_image($image['ID'], 'large'); ?>

            <?php if ($image_desc) : ?>
                <p class="image-desc"><?php echo $image_desc; ?></p>
            <?php endif ?>
        </div>
    </div>
</section>
