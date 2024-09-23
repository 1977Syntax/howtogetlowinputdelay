// Smooth scrolling for navigation links
const navLinks = document.querySelectorAll('.nav-links a');

navLinks.forEach(link => {
    link.addEventListener('click', (e) => {
        e.preventDefault();
        const targetId = e.target.getAttribute('href');
        const targetSection = document.querySelector(targetId);
        
        window.scrollTo({
            top: targetSection.offsetTop - 20,
            behavior: 'smooth'
        });
    });
});

// Animate wiki sections on load
document.querySelectorAll('.wiki-section').forEach((section, index) => {
    section.style.animationDelay = `${index * 0.1}s`; // Stagger the animation
});
