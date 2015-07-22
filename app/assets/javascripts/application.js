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

  $('.drop-target-one').on('dragover', function(evt) {
    evt.preventDefault()
  })

  $('.drop-target-one').on('drop', function(evt) {
    $('.drop-target-one:visible').append(dragSource)
  })


  $('.drop-target-two').on('dragover', function(evt) {
    evt.preventDefault()
  })

  $('.drop-target-two').on('drop', function(evt) {
    $('.drop-target-two:visible').append(dragSource)
  })

  $('.draggable').on('dragstart', function(evt) {
    dragSource = evt.target
  })
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

  $('.category_choice').click(function(evt) {
    var target = evt.target
    var id = $(target).data('id')
    $('.hide_show').hide()
    $('#pfour-' + id).show()
    $('#tags_' + id).show()
  })
});
