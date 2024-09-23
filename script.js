// Add smooth scrolling to navigation links
document.addEventListener('DOMContentLoaded', () => {
    const links = document.querySelectorAll('nav ul li a');
    links.forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault();  // Prevent default anchor behavior
            const targetId = link.getAttribute('href');  // Get target section ID
            const targetSection = document.querySelector(targetId);  // Select target section
            
            // Scroll to the target section smoothly
            targetSection.scrollIntoView({ behavior: 'smooth' });
        });
    });
});
