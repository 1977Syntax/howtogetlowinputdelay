// Smooth scrolling for navigation links
document.querySelectorAll('nav a').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault(); // Prevent default anchor click behavior
        const targetId = this.getAttribute('href'); // Get target section id
        const targetSection = document.querySelector(targetId); // Select the target section

        // Scroll to the target section smoothly
        targetSection.scrollIntoView({
            behavior: 'smooth',
            block: 'start'
        });
    });
});
