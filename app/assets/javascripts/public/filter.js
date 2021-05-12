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
        // $('div.my-city').remove();        
        // let myCity = $(result).filter('div.my-city');
        // $('div#filter').after(myCity);
        // $('div.no-proposal').remove();
      },
      error: (error) => {
        console.log(error);
      }
    });
  })
})