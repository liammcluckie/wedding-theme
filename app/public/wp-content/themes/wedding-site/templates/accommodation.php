<?php
    /**
     * Template Name: Accommodation
     */
?>

<?php get_header(); ?>

<?php include get_template_directory() . '/template-parts/page-header.php'; ?>

<?php 
    $layout_title = 'Mt Pleasant' . '<br>' .  'Accommodation';

    $card_one = [
        'image' => get_field('card_image_one'),
        'title' => get_field('card_title_one'),
        'excerpt' => get_field('card_excerpt_one'),
        'button' => get_field('card_link_one'),
    ];

    $card_two = [
        'image' => get_field('card_image_two'),
        'title' => get_field('card_title_two'),
        'excerpt' => get_field('card_excerpt_two'),
        'button' => get_field('card_link_two'),
    ];

    $card_three = [
        'image' => get_field('card_image_three'),
        'title' => get_field('card_title_three'),
        'excerpt' => get_field('card_excerpt_three'),
        'button' => get_field('card_link_three'),
    ];

    include get_template_directory() . '/template-parts/cards.php';
?>

<?php 
    if ($content = get_field('long_content')) {

        $title = get_field('long_content_title');
        $button = null;
        $wysiwyg = true;

        include get_template_directory() . '/template-parts/content.php';
    }
?>

<?php get_footer(); ?>
