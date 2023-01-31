// Show confetti svg animation on form submit
window.onload = function() {
    // get form
    document.querySelectorAll('.wpcf7-form').forEach((form) => {
        // bind event listener to submit
        form.querySelectorAll('input[type="submit"]').forEach((btn) => {
            btn.addEventListener('click', () => {
                // get required input fields
                form.querySelectorAll('input[aria-required="true"]').forEach((input) => {
                    // if REALLY filed out
                    if (input.value !== "" || input.value.trim() !== "") {
                        const confetti = document.querySelector('.confetti-container');
                        const success = document.querySelector('.success-container');
                        // hide submit button
                        btn.classList.add('hide');
                        // show confetti
                        setTimeout(() => {
                            confetti.classList.add('show');
                            success.classList.add('show');
                            success.scrollIntoView({ behavior: 'smooth' });
                        }, 500);
                    }
                });
            });
        });
    });
};
