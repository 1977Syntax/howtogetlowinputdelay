// Smooth scrolling for navigation links
document.addEventListener('DOMContentLoaded', () => {
    const links = document.querySelectorAll('nav ul li a');
    
    links.forEach(link => {
        link.addEventListener('click', (e) => {
            e.preventDefault(); // Prevent default link behavior
            const targetId = link.getAttribute('href'); // Get target section's ID
            const targetSection = document.querySelector(targetId); // Target section
            
            targetSection.scrollIntoView({ behavior: 'smooth' }); // Smooth scroll to target section
        });
    });
});
