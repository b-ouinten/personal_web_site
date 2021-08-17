$(document).ready(() => {
  let projectsBtn = document.getElementById('projects-btn');
  let aboutMeBtn = document.getElementById('about-me-btn');
  let commentMeBtn = document.getElementById('comment-me-btn');
  let watchProjectsBtn = document.getElementById('watch-projects-btn');
  let scrollToTopBtn = document.getElementById('scroll-to-top-btn');

  projectsBtn.addEventListener('click', (e) => scrollToElement(e, 'projects'));  
  aboutMeBtn.addEventListener('click', (e) => scrollToElement(e, 'about-me'));
  commentMeBtn.addEventListener('click', (e) => scrollToElement(e, 'comments-area'));
  watchProjectsBtn.addEventListener('click', (e) => scrollToElement(e, 'projects'));
  scrollToTopBtn.addEventListener('click', () => scrollTo(0));

  window.onscroll = () => showScrollBtn();
  
  let scrollToElement = (e, id) => {
    e.preventDefault();
    scrollTo($('#'+id).offset().top);
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