<?php wp_footer();?>

<?php $email = base64_encode('ansell.mcluckie@gmail.com'); ?>

    <footer>
        <div class="row">
            <div class="column one-half center l-one-whole">
                <p>E | <a class="encoded-mailto encoded-email">Please enable Javascript in your browser to view this.</a></p>
            </div>
            <div class="column one-half center l-one-whole">
                <p>Design & Build | <a href="https://github.com/liammcluckie" target="_blank" rel="noopener">Liam McLuckie</a></p>
            </div>
        </div>
    </footer>

</main>
    <script>
        // screw you bots
        const emailAddress = atob('<?php echo htmlspecialchars($email); ?>');
        document.querySelectorAll('.encoded-mailto').forEach((el) => {
            el.href = `mailto:${emailAddress}`;
            el.innerHTML = emailAddress;
        });
    </script>
</body>
</html>
