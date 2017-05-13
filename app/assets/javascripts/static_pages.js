$(document).ready(function () {
  setTimeout(function () {
    $('#flash').remove();
  }, 10000);

  var $usernameWidth = $('#dropbtn').css('width');
  $('#dropdown__content').css('min-width', $usernameWidth);
});
