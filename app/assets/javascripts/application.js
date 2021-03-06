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
//= require jquery
//= require jquery_ujs
//= require rails-ujs	
//= require jcrop
//= require turbolinks
//= require activestorage
//= require materialize-sprockets
//= require ckeditor/init
//= require_tree .


$(document).on('turbolinks:load', function(){
    //$('.sidenav-trigger').sidenav();
    $('.slider').slider();
    $('.sid').sideNav();
    $('select').material_select();
    $('.materialboxed').materialbox();
    $('#avatar').dropdown();
    $('.collapsible').collapsible();
    $('.modal').modal();
        

    CKEDITOR.replace( 'mini1', {
        toolbar:
        [
          { name: 'basicstyles', items : [ 'Bold','Italic' ] },
          { name: 'paragraph', items : [ 'NumberedList','BulletedList' ] },
          { name: 'tools', items : [ 'Maximize' ] }
        ]}         
      );
      CKEDITOR.replace( 'mini2', {
        toolbar:
        [
          { name: 'basicstyles', items : [ 'Bold','Italic' ] },
          { name: 'paragraph', items : [ 'NumberedList','BulletedList' ] },
          { name: 'tools', items : [ 'Maximize' ] }
        ]}         
      );
      CKEDITOR.replace( 'mini3', {
        toolbar:
        [
          { name: 'basicstyles', items : [ 'Bold','Italic' ] },
          { name: 'paragraph', items : [ 'NumberedList','BulletedList' ] },
          { name: 'tools', items : [ 'Maximize' ] }
        ]}         
      );

  });