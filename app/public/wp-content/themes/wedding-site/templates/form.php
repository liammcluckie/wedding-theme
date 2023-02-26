<?php
    /**
     * Template Name: RSVP Form
     */
?>
<?php get_header(); ?>

<?php include_once get_template_directory() . '/template-parts/page-header.php'; ?>

<?php if ($rsvp = get_field('rsvp_form')) : ?>
    <section class="container no-margin-top">
        <div class="row">
            <div class="column two-thirds push-sixth l-one-whole">
                <?php echo $rsvp; ?>
            </div>
        </div>
    </section>
<?php endif; ?>

<?php include_once get_template_directory() . '/template-parts/confetti.php'; ?>

<section class="container success-container no-margin-top">
    <div class="row flex-centered">
        <div class="column one-half l-two-thirds m-one-whole center">
            <p class="success"><strong>Thank you for confirming, we can't wait to have you at our wedding!</strong>
            <br>
            <br>
            Please keep an eye on your inbox, if you don't receive a confirmation from us shortly please send us an email to the address at the bottom of the site.
            </p>
        </div>
    </div>
</section>

<?php get_footer(); ?>
