<?php
    /**
     * Proper way to enqueue scripts and styles
     */
    function wpdocs_theme_name_scripts() {
        wp_enqueue_style( 'main', get_template_directory_uri() . '/assets/css/main.css',false,'1.1','all');

        wp_enqueue_script( 'app', get_template_directory_uri() . '/assets/js/app.js', false, 1.1, false);
    }
    add_action( 'wp_enqueue_scripts', 'wpdocs_theme_name_scripts' );

    // Disable block editor
    add_filter('use_block_editor_for_post', '__return_false', 10);

    // Add menu support
    add_theme_support( 'menus' );
