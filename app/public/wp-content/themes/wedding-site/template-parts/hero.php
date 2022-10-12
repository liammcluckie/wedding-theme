<header class="hero">
    <div class="hero--content">

        <?php if ($date = get_field('hero_date')) : ?>
            <span class="hero--date"><?php echo $date; ?></span>
        <?php endif; ?>

        <h1 class="hero--title">
            <span>Rose &</span>
            <span>Liam</span>
        </h1>

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
            ?>
            <img 
                src="<?php echo $src_data[0] ?>" 
                srcset="<?php echo esc_attr( $srcset ); ?>"
                alt="Man on one knee proposing on a cliff overlooking the ocean">
        </div>
    <?php endif; ?>

</header>
