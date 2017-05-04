$(document).on('turbolinks:load', function () {
  $('.profile_aside_link-container').on('click', '.profile_aside_link', function () {
    $(this).parent().parent().find('.profile_aside_link').removeClass('link--active');
    $(this).addClass('link--active');
  });

  $('.profile_aside_link-container').on('click', '.profile_aside_link', function (e) {
    window.setTimeout(function () {
      $('.event_cell--list').css({ 'opacity': '0.5' });
    }, 0);
  });
});
