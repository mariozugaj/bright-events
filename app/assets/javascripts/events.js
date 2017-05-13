$(document).on('turbolinks:load', function() {
  $('#create-event_btn').on('click', function() {
    $('#new_event').submit();
  });

  $('#attend-form').on('mouseenter mouseleave', function(e) {
    $(this).find('#dont-attend-btn').val(e.type == 'mouseenter' ? 'Don\'t attend' : 'Attending');
    $(this).find('#dont-attend-btn').attr('class', e.type == 'mouseenter' ? 'btn btn--danger' : 'btn btn--notice');
  });

  // Custom file input button
  $('.inputfile').each(function() {
    var $input = $(this),
      $label = $input.next('label'),
      labelVal = $label.html();

    $input.on('change', function(e) {
      var fileName = '';

      if (this.files && this.files.length > 1)
        fileName = (this.getAttribute('data-multiple-caption') || '').replace('{count}', this.files.length);
      else if (e.target.value)
        fileName = e.target.value.split('\\').pop();

      if (fileName)
        $label.find('span').html(fileName);
      else
        $label.html(labelVal);
    });

    // Firefox bug fix
    $input
      .on('focus', function() {
        $input.addClass('has-focus');
      })
      .on('blur', function() {
        $input.removeClass('has-focus');
      });
  });

  $('#datepicker, #datepicker2').pickadate({
    min: new Date((new Date()).valueOf() + 86400000),
  });
  $('#timepicker').pickatime({
    formatSubmit: 'HH:i',
  });

  $('.profile_aside_box').on('click', '#search, #clear-search', function (e) {
    window.setTimeout(function () {
      $('.event_cell--list').css({ 'opacity': '0.5' });
    }, 0);
  });

  $('.icon--filter').click(function () {
    $('#filter-form').slideToggle();
  });
});
