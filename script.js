// Smooth scroll to section
document.querySelectorAll('.sidebar a').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();

        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);

        if (targetElement) {
            // Smoothly scroll to the target section
            window.scrollTo({
                top: targetElement.offsetTop - 20, // Offset for header height
                behavior: 'smooth'
            });
        }
    });
});
