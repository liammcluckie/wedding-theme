<?php
    /**
     * Proper way to enqueue scripts and styles
     */
    function wpdocs_theme_name_scripts() {
        wp_enqueue_style( 'main', get_template_directory_uri() . '/assets/css/main.css',false,'1.1','all');

        // wp_enqueue_script( 'app', get_template_directory_uri() . '/assets/js/app.js', false, 1.1, false);
    }
    add_action( 'wp_enqueue_scripts', 'wpdocs_theme_name_scripts' );

    // Disable block editor
    add_filter('use_block_editor_for_post', '__return_false', 10);

    // Add menu support
    add_theme_support( 'menus' );

    // Custom image sizes
    add_image_size('card', 800, 660, true);

    function wedding_register_nav_menu(){
        register_nav_menus( array(
            'main-menu' => __( 'Main Menu'),
            'footer_menu'  => __( 'Footer Menu'),
        ) );
    }
    add_action( 'after_setup_theme', 'wedding_register_nav_menu', 0 );

    /**
     * Function to output a Wordpress image with the necessary tags
     */
    function render_wp_image($id, $size) {
        // Get all image data
        $src_data = wp_get_attachment_image_src($id, $size, false);
        $srcset = wp_get_attachment_image_srcset($id, $size);
        $alt = get_post_meta($id, '_wp_attachment_image_alt', true);

        // Output image html
        return '
            <img 
                src="' . $src_data[0] . '" 
                srcset="' . esc_attr( $srcset ) . '"
                alt="'. $alt . '"
            >
        ';
    }

    // Remove Contact form 7 auto html
    add_filter( 'wpcf7_autop_or_not', '__return_false' );
