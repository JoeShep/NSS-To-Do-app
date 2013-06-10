$(document).ready(function() {
  $('#done').click(function() {
    $('.tasks').css("color","red");
  $.ajax({
    // success: complete_task_path(@list.id,task.id)
    url: $(this).data('href'),
    type: 'PUT',
    dataType: 'html',
    success: function(data, textStatus, jqXHR) {
      // Do something here like refresh show page
    }
  });
 }); //end click
}); //end ready