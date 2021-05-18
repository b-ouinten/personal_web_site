$(document).ready(() => {
  $('.img-check').click(function() {
    $(this).toggleClass('checked');
    let url = '/projects';
    let tagIds = [];
    document.querySelectorAll('.checked').forEach(el => tagIds.push(el.id));
    $.ajax({
      url: url,
      type: 'GET',
      dataType: 'html',
      data: { tag_ids: tagIds },
      success: (result) => {
        let currentProjectsResultSection = $('#projects_result');
        let filter = $('#filter');
        let newProjectsResultSection = $(result).find('#projects_result');

        currentProjectsResultSection.remove();       
        filter.after(newProjectsResultSection);
        if (tagIds.length > 0) scrollTo($('#projects_result').offset().top);
      },
      error: (error) => {
        console.log(error);
      }
    });
  })

  let scrollTo = (position) => {
    $('html, body').animate({ scrollTop: position }, 100);
  }
})