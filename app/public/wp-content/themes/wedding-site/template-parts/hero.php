<header class="hero">
    <div class="hero--content">

        <div class="hero--illustration"></div>

        <div class="hero--copy">
            <?php if ($meta = get_field('hero_meta')) : ?>
                <p class="hero--meta"><?php echo $meta; ?></p>
            <?php endif; ?>
            <?php if ($title = get_field('hero_title')) : ?>
                <h1 class="hero--title">
                    <?php echo $title; ?>
                </h1>
            <?php endif; ?>
        </div>

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
            <?php echo render_wp_image($hero['id'], 'large') ?>
        </div>
    <?php endif; ?>

</header>
