<section class="container">

    <?php if ($layout_title) : ?>
        <div class="row">
            <div class="column one-whole">
                <h2 class="card--layout-title center"><?php echo $layout_title; ?></h2>
            </div>
        </div>
    <?php endif; ?>

    <div class="row flex-centered">
        <div class="column one-third l-one-half m-one-whole">
            <a 
                href="<?php echo $card_one['button'] ? $card_one['button']['url'] : ''; ?>"
                target="<?php echo isset($card_one['button']['target']) ? $card_one['button']['target'] : ''; ?>"
            >
                <div class="card">
                    <div class="card--image">
                        <?php echo render_wp_image($card_one['image']['ID'], 'card'); ?>
                    </div>
                    <div class="card--content">
                        <h2 class="card--title"><?php echo $card_one['title']; ?></h2>

                        <?php if ($excerpt = $card_one['excerpt']) : ?>
                            <p class="card--excerpt"><?php echo $excerpt; ?></p>
                        <?php endif; ?>

                        <?php if ($card_one['button']) : ?>
                            <a
                                href="<?php echo $card_one['button']['url'] ?>"
                                class="card--button button button--alt"
                                target="<?php echo isset($card_one['button']['target']) ? $card_one['button']['target'] : ''; ?>"
                            >
                                <?php echo $card_one['button']['title']; ?>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>
            </a>
        </div>
        <div class="column one-third l-one-half m-one-whole">
            <a 
                href="<?php echo $card_two['button'] ? $card_two['button']['url'] : ''; ?>"
                target="<?php echo isset($card_two['button']['target']) ? $card_two['button']['target'] : ''; ?>"
            >
                <div class="card">
                    <div class="card--image">
                        <?php echo render_wp_image($card_two['image']['ID'], 'card'); ?>
                    </div>
                    <div class="card--content">
                        <h2 class="card--title"><?php echo $card_two['title']; ?></h2>

                        <?php if ($excerpt = $card_two['excerpt']) : ?>
                            <p class="card--excerpt"><?php echo $excerpt; ?></p>
                        <?php endif; ?>

                        <?php if ($card_one['button']) : ?>
                            <a
                                href="<?php echo $card_two['button']['url'] ?>"
                                class="card--button button button--alt"
                                target="<?php echo isset($card_two['button']['target']) ? $card_two['button']['target'] : ''; ?>"
                            >
                                <?php echo $card_two['button']['title']; ?>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>
            </a>
        </div>
        <div class="column one-third l-one-half m-one-whole">
            <a 
                href="<?php echo $card_three['button'] ? $card_three['button']['url'] : ''; ?>"
                target="<?php echo isset($card_three['button']['target']) ? $card_three['button']['target'] : ''; ?>"
            >
                <div class="card">
                    <div class="card--image">
                        <?php echo render_wp_image($card_three['image']['ID'], 'card'); ?>
                    </div>
                    <div class="card--content">
                        <h2 class="card--title"><?php echo $card_three['title']; ?></h2>

                        <?php if ($excerpt = $card_three['excerpt']) : ?>
                            <p class="card--excerpt"><?php echo $excerpt; ?></p>
                        <?php endif; ?>

                        <?php if ($card_three['button']) : ?>
                            <a
                                href="<?php echo $card_three['button']['url'] ?>"
                                class="card--button button button--alt"
                                target="<?php echo isset($card_three['button']['target']) ? $card_three['button']['target'] : ''; ?>"
                            >
                                <?php echo $card_three['button']['title']; ?>
                            </a>
                        <?php endif; ?>
                    </div>
                </div>
            </a>
        </div>
    </div>
</section>
