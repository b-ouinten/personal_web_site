$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');
  let watchProjectsBtn = document.getElementById('watch-projects-btn');
  let scrollToTopBtn = document.getElementById('scroll-to-top-btn');

  
  projectsBtn.addEventListener('click', (e) => scrollToProjects(e));  
  watchProjectsBtn.addEventListener('click', (e) => scrollToProjects(e));
  scrollToTopBtn.addEventListener('click', () => scrollTo(0));
  window.onscroll = function() {showScrollBtn()};
  
  let scrollToProjects = (e) => {
    e.preventDefault();
    scrollTo($('#projects').offset().top);
  }
  
  // When the user scrolls down 700px from the top of the document, show the button
  function showScrollBtn() {
    if (document.body.scrollTop > 700 || document.documentElement.scrollTop > 700) {
      scrollToTopBtn.style.display = "block";
    } else {
      scrollToTopBtn.style.display = "none";
    }
  }
  
  let scrollTo = (position) => {
    $('html, body').animate({ scrollTop: position }, 100);
  }
})