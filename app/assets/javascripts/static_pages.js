$(document).ready(function () {
  setTimeout(function () {
    $('#flash').remove();
  }, 10000);

  var $usernameWidth = $('#dropbtn').css('width');
  console.log($usernameWidth);
  $('#dropdown-content').css('width', $usernameWidth);
});
