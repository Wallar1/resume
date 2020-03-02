// Animating hover job experiences (Scroll animation is done in scripts.js)

$(document).on('turbolinks:load', function() {
  displayTabs = $('.display-tab');
  $('.tab').each(function(i) {
    $(this).click(function() {
      active = displayTabs.filter('.active')
      active.each(function(index, el) {
        jQuery(el).removeClass('active');
      });
      jQuery(displayTabs.get(i)).addClass('active')
    })
  })

});