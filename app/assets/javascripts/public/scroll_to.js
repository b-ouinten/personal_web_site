$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');
  let watchProjectsBtn = document.getElementById('watch-projects-btn');

  projectsBtn.addEventListener('click', (e) => scrollToProjects(e));  
  watchProjectsBtn.addEventListener('click', (e) => scrollToProjects(e));  
  
  let scrollToProjects = (e) => {
    e.preventDefault();
    scrollTo($('#projects').offset().top);
  }
  
  let scrollTo = (position) => {
    $('html, body').animate({ scrollTop: position }, 100);
  }
})