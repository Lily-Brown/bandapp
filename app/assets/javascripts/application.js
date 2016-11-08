// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {

  toggle_fields = function() {
    $('input.value').toggleClass('toggle_text edit_text');
    $('textarea.value').toggleClass('toggle_text_area edit_area');
    $('.edit_text').removeAttr('disabled');
    $('.edit_area').removeAttr('disabled');
    $('.toggle_text').attr('disabled',true);
    $('.toggle_text_area').attr('disabled',true);
    $('.toggle').toggleClass('btn_show btn_hide')
    $('.save').removeAttr('disabled');
  }
  
  save_form = function() {
    $('form').submit();
    toggle_fields();
  }

});
