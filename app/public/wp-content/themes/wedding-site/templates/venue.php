<?php
    /**
     * Template Name: Venue
     */
?>

<?php get_header(); ?>

<?php include get_template_directory() . '/template-parts/page-header.php'; ?>

<?php include get_template_directory() . '/template-parts/map.php'; ?>

<?php 
    if ($image = get_field('image')) {
        $image_desc = 'The camping grounds at the Eco Park.';
        include get_template_directory() . '/template-parts/image.php';
    }
?>

<?php 
    if ($tbi_image = get_field('tbi_image')) {

        $tbi_title = get_field('tbi_title');
        $tbi_intro = get_field('tbi_intro');
        $tbi_content = null;
        $tbi_button = get_field('tbi_link');
        $tbi_alternate_row = 'tbi-alternate-row';

        include get_template_directory() . '/template-parts/text-beside-image.php';
    }
?>

<?php 
    if ($content = get_field('long_content')) {

        $title = null;
        $button = null;
        $wysiwyg = true;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php 
    if ($tbi_image = get_field('tbi_image_two')) {

        $tbi_title = get_field('tbi_title_two');
        $tbi_intro = get_field('tbi_intro_two');
        $tbi_content = null;
        $tbi_button = get_field('tbi_link_two');
        $tbi_alternate_row = '';

        include get_template_directory() . '/template-parts/text-beside-image.php';
    }
?>


<?php get_footer(); ?>
