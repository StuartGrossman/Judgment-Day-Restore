// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require_bootstrap
//= require_grayscale
//= require_self


 var newcomment = document.getElementById("newcomment");
      var newCommentForm = document.getElementById("new-comment")
      var newCommentBody = document.getElementById("commentBody")
  
      newcomment.onclick= function(e) {
     var str ="What is your name?";
      var response= window.prompt("What is your name?")

       e.preventDefault();
        var p = document.createElement("p");
      p.innerText=response + "'s " + "Comment:  "+newCommentBody.value;
      newCommentForm.appendChild(p);
      newCommentForm.reset();

    
  }