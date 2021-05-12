$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');

  projectsBtn.addEventListener('click', (e) => {
    e.preventDefault();
    scrollTo($('#projects').offset().top);
  })  

  let scrollTo = (position) => {
    $('html, body').animate({ scrollTop: position }, 100);
  }
})