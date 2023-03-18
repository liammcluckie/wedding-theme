<?php get_header(); ?>

<?php include_once 'template-parts/hero.php'; ?>
<?php include_once 'template-parts/timeline.php'; ?>
<?php 
    $layout_title = 'Info Pages';

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
<?php // include_once 'template-parts/text-beside-image.php'; ?>

<?php get_footer(); ?>
