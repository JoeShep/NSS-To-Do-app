$(document).ready(function() {
  $('#done').click(function() {
    if ($('#done').is(':checked'))
  $.ajax({
    url: $(this).data('href'),
    type: 'PUT',
    dataType: 'html',
    success: alert("Yay!")
  });
 }); //end click
}); //end ready