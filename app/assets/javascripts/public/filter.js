$(document).ready(() => {
  $('.img-check').click(function() {
    $(this).toggleClass('checked');
    let url = '/projects';
    let tagsIds = [];
    document.querySelectorAll('.img-check').forEach(el => tagsIds.push(el.id));
    $.ajax({
      url: url,
      type: 'GET',
      dataType: 'html',
      data: { tags_ids: tagsIds },
      success: (result) => {
        console.log(result);
        $('div#projects_result').remove();        
        let projectsResult = $(result).filter('div#projects_result');
        $('div#filter').after(projectsResult);
      },
      error: (error) => {
        console.log(error);
      }
    });
  })
})