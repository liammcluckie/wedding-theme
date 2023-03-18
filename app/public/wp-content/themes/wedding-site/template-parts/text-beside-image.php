<section class="container">
    <div class="row tbi-row">
        <div class="column one-whole">
            <div class="tbi-container">

                <?php if ($tbi_image) : ?>
                    <div class="tbi-image">
                        <?php echo render_wp_image($tbi_image['ID'], 'large'); ?>
                    </div>
                <?php endif; ?>

                <div class="tbi-content">
                    <a 
                        href="<?php echo isset($tbi_button['url']) ? $tbi_button['url'] : '' ?>"
                        target="<?php echo isset($tbi_button['target']) ? $tbi_button['target'] : '' ?>"
                    >
                        <div class="tbi-content--inner">
                            <?php if ($tbi_title) : ?>
                                <h3 class="tbi-title"><?php echo $tbi_title; ?></h3>
                            <?php endif; ?>
                            <?php if ($tbi_intro) : ?>
                                <p class="tbi-intro"><?php echo $tbi_intro; ?></p>
                            <?php endif; ?>
                            <?php if ($tbi_content) : ?>
                                <p class="tbi-body"><?php echo $tbi_content; ?></p>
                            <?php endif; ?>
                            <?php if ($tbi_button) : ?>
                                <a
                                    class="button"
                                    href="<?php echo $tbi_button['url'] ?>"
                                    target="<?php echo $tbi_button['target']; ?>"
                                >
                                    <?php echo $tbi_button['title']; ?>
                                </a>
                            <?php endif; ?>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
