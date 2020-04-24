// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
//require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//require("app")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("trix")
require("@rails/actiontext")
//require("jquery") // Don't really need to require this...
require("jquery-ui")
require("magnific-popup") 
//import Rails from '@rails/ujs';
//import 'bootstrap';
//Rails.start();
window.jQuery = $;
window.$ = $;
$(function(){
    // Plain jquery
    $('#fadeMe').fadeOut(5000);

    console.log("page loaded");
    // jquery-ui
    //const availableCities = ['Baltimore', 'New York'];
    //$('#cityField').autocomplete( { source: availableCities } );
    $('#calendarField').datepicker( { dateFormat: 'yy-mm-dd' } );
    // initialize magnific popup
    $('.image-link').magnificPopup({type:'image'});
    window.jQuery = $;
    window.$ = $;
})
//window.$.ready(function() {
//  $('#calendarField').datepicker( { dateFormat: 'yy-mm-dd' } );
//  $('.image-link').magnificPopup({type:'image'});
//});

//import { Application } from "stimulus"
//import { definitionsFromContext } from "stimulus/webpack-helpers"

//const application = Application.start()
//const context = require.context("../controllers", true, /\.js$/)
//application.load(definitionsFromContext(context))
