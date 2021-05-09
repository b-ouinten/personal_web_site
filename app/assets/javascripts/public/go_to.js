$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');

  projectsBtn.addEventListener('click', (e) => {
    e.preventDefault();
    console.log('Hello !');
    scrollTo();
  })  

  function scrollTo() {
    $('html, body').animate({ scrollTop: $('#test').offset().top }, 100);
  }
})