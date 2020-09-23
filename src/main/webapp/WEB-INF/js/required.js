(function($) { 
$('#reset').on('click', function(){
      $('#register-form').reset();
  });

  $('#register-form').validate({
    rules : {
        name : {
            required: true,
        },
        email : {
            required: true,
        },
        password : {
            required: true
        },
        re_password : {
            required: true,
            email : true
        },
        phone_number : {
            required: true,
        }
    },
    onfocusout: function(element) {
        $(element).valid();
    },
});

    jQuery.extend(jQuery.validator.messages, {
        required: "",
        remote: "",
        email: "",
        url: "",
        date: "",
        dateISO: "",
        number: "",
        digits: "",
        creditcard: "",
        equalTo: ""
    });
    })(jQuery);