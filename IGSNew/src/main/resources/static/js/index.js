var $modal = $('.modal');

// Show loader & then get content when modal is shown
$modal.on('show.bs.modal', function(e) {
  var paragraphs = $(e.relatedTarget).data('paragraphs');
  //alert(paragraphs);
  $(this)
    .addClass('modal-scrollfix')
    .find('.modal-body')
    .html('loading...')
    .load('http://localhost:8080/NewsAdmin/newsadmin/signup_direct_test.jsp', function() {
      // Use Bootstrap's built-in function to fix scrolling (to no avail)
      $modal
        .removeClass('modal-scrollfix')
        .modal('handleUpdate');
    });
});