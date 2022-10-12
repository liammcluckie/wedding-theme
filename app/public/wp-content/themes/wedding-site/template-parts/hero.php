<header class="hero">
    <div class="hero--content">

        <div class="hero--illustration"></div>

        <?php if ($meta = get_field('hero_meta')) : ?>
            <p class="hero--meta"><?php echo $meta; ?></p>
        <?php endif; ?>

        <?php if ($title = get_field('hero_title')) : ?>
            <h1 class="hero--title">
                <?php echo $title; ?>
            </h1>
        <?php endif; ?>

    </div>

    <?php if ($button = get_field('hero_button')) : ?>
        <a 
            href="<?php echo $button['url']; ?>"
            class="hero--button"
        >
            <?php echo $button['title']; ?>
        </a>
    <?php endif; ?>

    <?php if ($hero = get_field('hero_image')) : ?>
        <div class="hero--image">
            <?php 
                $src_data = wp_get_attachment_image_src($hero['id'], 'large', false); 
                $srcset = wp_get_attachment_image_srcset($hero['id'], 'large');
                $alt = get_post_meta($hero['id'], '_wp_attachment_image_alt', true);
            ?>
            <img 
                src="<?php echo $src_data[0] ?>" 
                srcset="<?php echo esc_attr( $srcset ); ?>"
                alt="<?php echo $alt ?>">
        </div>
    <?php endif; ?>

</header>
