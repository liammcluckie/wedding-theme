<nav class="nav">
    <div class="menu-toggle">
        <input type="checkbox" />
            <span></span>
            <span></span>
            <span></span>
        <?php 
            $args = [
                'theme_location' => 'main-menu',
                'container' => false,
                'orderby' => 'menu_order',
                'menu_class'=> 'main-menu'
            ];
            wp_nav_menu($args);
        ?>
    </div>
</nav>
