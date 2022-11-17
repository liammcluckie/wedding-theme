<?php
    /**
     * Template Name: RSVP Form
     */
?>
<?php get_header(); ?>

<?php if ($rsvp = get_field('rsvp_form')) : ?>
    <section class="container">
        <div class="row">
            <div class="column two-thirds push-sixth">
                <?php echo $rsvp; ?>
            </div>
        </div>
    </section>
<?php endif; ?>
