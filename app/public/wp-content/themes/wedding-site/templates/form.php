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

<?php get_footer(); ?>
