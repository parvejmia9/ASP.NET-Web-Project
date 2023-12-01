
(function ($) {
    "use strict";

    
    /*==================================================================
    [ Validate ]*/
    var input = $('.validate-input .input100');
    $('.validate-form .input100').on('click', function () {
        return true;
    });
    var x = 0;
    $('.validate-form .abcd').on('click',function(){
        var check = true;
        for (var i = 0; i < input.length; i++) {
            x = i;
            if(validate(input[i]) == false){
                showValidate(input[i]);
                check=false;
            }
        }

        return check;
    });


    $('.validate-form .input100').each(function(){
        $(this).focus(function(){
           hideValidate(this);
        });
    });

    function validate (inputt) {
        if($(inputt).attr('type') == 'email' || $(inputt).attr('name') == 'email') {
            if($(inputt).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
                return false;
            }
        }
        else {
            if ($(inputt).attr('name') == 'conpass') {
                if ($(inputt).val().trim() == '' || ($(inputt).val().trim() != $(input[x - 1]).val().trim())) {
                    return false;
                }
            }
            else if($(inputt).val().trim() == ''){
                return false;
            }
        }
    }

    function showValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).addClass('alert-validate');
    }

    function hideValidate(input) {
        var thisAlert = $(input).parent();

        $(thisAlert).removeClass('alert-validate');
    }
    
    

})(jQuery);