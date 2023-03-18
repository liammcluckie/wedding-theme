<?php
    /**
     * Template Name: About
     */
?>

<?php get_header(); ?>

<?php include get_template_directory() . '/template-parts/page-header.php'; ?>

<?php 
    if ($content = get_field('short_content')) {

        $title = get_field('short_content_title');
        $button = get_field('short_content_link');
        $wysiwyg = false;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php 
    if ($image = get_field('image')) {
        include get_template_directory() . '/template-parts/image.php';
    }
?>

<?php 
    if ($content = get_field('long_content')) {

        $title = get_field('long_content_title');
        $button = null;
        $wysiwyg = true;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php 
    if ($tbi_image = get_field('tbi_image')) {

        $tbi_title = get_field('tbi_title');
        $tbi_intro = get_field('tbi_intro');
        $tbi_content = null;
        $tbi_button = get_field('tbi_link');

        include get_template_directory() . '/template-parts/text-beside-image.php';
    }
?>

<?php get_footer(); ?>
