// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready(function() {

$('#form_id').hide(); //Initially form wil be hidden.
  var dragSource;
 $('#button_id').click(function() {
  $('#form_id').show();//Form shows on button click

  });

  $('#drop-target-one').on('dragover', function(evt) {
    evt.preventDefault()
  })

  $('#drop-target-one').on('drop', function(evt) {
    $('#drop-target-one').append(dragSource)
  })

  $('.draggable').on('dragstart', function(evt) {
    dragSource = evt.target
  })
});


// huck it or fuckit
$("#btnStats").click(function() {
    $("#dvStats").css("display","block");
        /* OR  */
    $("#dvStats").show();
});

$("#btnStats").click(function(){
    $("#dvStats").show()
});


// test3
// because 50 no's and 1 yes is still a yes
$(document).ready(function(){
    $("#hide").click(function(){
        $("cheese").hide(666);
    });
    $("#show").click(function(){
        $("cheese").show(666);
    });
});
// I really don't understand why the jscript only works for the first button and not the latter buttons on the page





//rehide the div, not sure why, but it works.
$('.hidden-div').hide();


//change class so it no longer display:none
//but it will not show the div as .hide() was execute above.
$('.hidden-div').attr('class','showing-div');


//Slide it down and everything works.
$('.hidden-div').slideDown('fast');



//this can be done in 1 liner. (thank you, Mohsen for chaining explanation)
$('.hidden-div').hide().attr('class','showing-div').slideDown('fast');
