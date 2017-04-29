$(document).ready(function () {
  setTimeout(function () {
    $('#flash').remove();
  }, 10000);

  var $usernameWidth = $('#dropbtn').css('width');
  $('#dropdown-content').css('width', $usernameWidth);
});
