// Smooth scrolling for navigation links
document.querySelectorAll('nav a').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();

        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);

        targetElement.scrollIntoView({
            behavior: 'smooth'
        });
    });
});

// Display an alert when the user reaches the "Results" section
const resultsSection = document.getElementById('results');

const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            alert("You've reached the Results section!");
            observer.disconnect(); // Stop observing after alerting
        }
    });
}, {
    threshold: 0.1 // Trigger when 10% of the section is in view
});

observer.observe(resultsSection);
