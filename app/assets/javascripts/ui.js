$(document).on('ready page:load', function() {

  $('.custom-input-group').on('focus', 'input', function() {
    $('.custom-input-group').removeClass('focus');
    $(this).closest('.custom-input-group').addClass('focus');
  });
});
