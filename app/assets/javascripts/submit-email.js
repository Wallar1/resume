// submitting email
$(document).on('turbolinks:load', function() {
  $('#submit_email').click(function(){
    if(blank_field_found()){
      alert('Please fill out all of the fields before submitting')
      return
    }
    $('#contactForm').submit()
    alert('Thank you for getting in touch! I will get back to you as soon as possible.')
    $('#email_name').val('')
    $('#email_from').val('')
    $('#email_subject').val('')
    $('#email_message').val('')
  })

  function blank_field_found(){
    name = $('#email_name').val()
    from = $('#email_from').val()
    subject = $('#email_subject').val()
    message = $('#email_message').val()
    if([name, from, subject, message].indexOf('') > 0){ // a blank is found
      return true
    }
    return false
  }
})