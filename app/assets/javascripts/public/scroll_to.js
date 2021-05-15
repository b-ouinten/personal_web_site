$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');
  let aboutMeBtn = document.getElementById('about-me-btn');
  let watchProjectsBtn = document.getElementById('watch-projects-btn');
  let scrollToTopBtn = document.getElementById('scroll-to-top-btn');

  projectsBtn.addEventListener('click', (e) => scrollToProjects(e));  
  aboutMeBtn.addEventListener('click', (e) => scrollToAboutMe(e));
  watchProjectsBtn.addEventListener('click', (e) => scrollToProjects(e));
  scrollToTopBtn.addEventListener('click', () => scrollTo(0));

  window.onscroll = () => showScrollBtn();
  
  let scrollToProjects = (e) => {
    e.preventDefault();
    scrollTo($('#projects').offset().top);
  }

  let scrollToAboutMe = (e) => {
    e.preventDefault();
    scrollTo($('#about-me').offset().top);
  }
  
  // When the user scrolls down 700px from the top of the document, show the button
  let showScrollBtn = () => {
    if (document.body.scrollTop > 900 || document.documentElement.scrollTop > 900) {
      scrollToTopBtn.style.display = "block";
    } else {
      scrollToTopBtn.style.display = "none";
    }
  }
  
  let scrollTo = (position) => {
    $('html, body').animate({ scrollTop: position }, 100);
  }
})