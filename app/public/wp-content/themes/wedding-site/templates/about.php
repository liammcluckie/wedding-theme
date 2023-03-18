<?php
    /**
     * Template Name: About
     */
?>

<?php get_header(); ?>

<?php include get_template_directory() . '/template-parts/page-header.php'; ?>

<?php 
    if ($content = get_field('about_content')) {

        $title = get_field('about_content_title');
        $button = get_field('about_content_link');
        $wysiwyg = false;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php 
    if ($image = get_field('about_image')) {
        include get_template_directory() . '/template-parts/image.php';
    }
?>

<?php 
    if ($content = get_field('about_general_content')) {

        $title = get_field('about_general_title');
        $button = null;
        $wysiwyg = true;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php 
    if ($tbi_image = get_field('about_tbi_image')) {

        $tbi_title = get_field('about_tbi_title');
        $tbi_intro = get_field('about_tbi_intro');
        $tbi_content = null;
        $tbi_button = get_field('about_tbi_link');

        include get_template_directory() . '/template-parts/text-beside-image.php';
    }
?>

<?php get_footer(); ?>
