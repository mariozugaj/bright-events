$(document).on('turbolinks:load', function () {

  var openBtn = document.getElementById('modal-btn');
  var modal = document.getElementById('modal');
  var closeBtn = document.getElementById('modal-close');

  openBtn.addEventListener('click', function (e) {
    e.preventDefault();
    modal.style.display = 'block';
  });

  closeBtn.onclick = function () {
    modal.style.display = 'none';
  };

  $(window).click(function (event) {
    if (event.target === modal) {
      modal.style.display = 'none';
    }
  });
});
