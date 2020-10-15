const $ = window.$;
$(document).ready(function () {
  $('.carousel-item').first().addClass('active');
  $('.carousel').carousel({
    interval: false
  });
});
