<header class="container no-margin-bottom">
    <div class="row flex-centered">
        <div class="column two-thirds center extra-column-spacing-bottom">
            <h1 class="page-title"><?php the_title(); ?></h1>
            <?php if ($intro = get_field('page_intro')) : ?>
                <p class="page-intro"><?php echo $intro; ?></p>
            <?php endif; ?>
        </div>
    </div>
    <div class="header-illustration-top"></div>
    <div class="header-illustration-bottom"></div>
</header>
