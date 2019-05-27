// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require foundation
//= require jquery
//= require jquery_ujs
//= require select2
//= require cocoon
//= require_tree .


$(document).ready(function () {
    
    $(".author-select").select2(
        { tags: true }
    )

    let auth_val = $('.author-select').on('select2:select', function (e) {
        var data = e.params.data;
        console.log(data.text)
        return data.text
    });

    $(document).on("keypress", "select", function (e) {
        if (e.which == 13) {
            var inputVal = $(this).val();
            alert("You've entered: " + inputVal);
        }
    });

    
    // $(document).on("keypress", "input", function (e) {
    //     if (e.which == 13) {
    //         var inputVal = $(this).val();
    //         alert("You've entered: " + inputVal);
    //         $('input#author_input').val(auth_val)
    //         console.log('enter is happening')
    //         }
    //     });

        
});


    

$(function(){ $(document).foundation(); });