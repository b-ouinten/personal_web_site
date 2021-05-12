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
        $('div#projects_result').remove();        
        let projectsResult = $(result).find('div#projects_result');
        $('div#filter').after(projectsResult);
      },
      error: (error) => {
        console.log(error);
      }
    });
  })
})