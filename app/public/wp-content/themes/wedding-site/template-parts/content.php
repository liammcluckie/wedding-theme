<section class="container no-margin-top">
    <div class="row flex-centered">
        <div class="column one-half xl-two-thirds m-one-whole">

            <?php if ($title) : ?>
                <h2 class="content-title"><?php echo $title; ?></h2>
            <?php endif; ?>

        </div>
    </div>
    <div class="row flex-centered">
        <div class="column one-half xl-two-thirds m-one-whole no-padding-top">

            <?php if ($content && $wysiwyg) : ?>
                <div class="wysiwyg">
                    <?php echo $content ?>
                </div>
            <?php elseif ($content && !$wysiwyg) : ?>
                <p class="content"><?php echo $content; ?></p>
            <?php endif; ?>

            <?php if ($button) : ?>
                <a 
                    class="button"
                    href="<?php echo $button['url']; ?>"
                    target="<?php echo $button['target']; ?>"
                >
                    <?php echo $button['title'] ?>
                </a>

            <?php endif; ?>

        </div>
    </div>
</section>
