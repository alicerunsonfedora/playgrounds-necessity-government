$(document).ready(function(){
  $('.carousel').carousel();
  $('.modal').modal();

  $.getJSON("version.json",{}, function( data ){
      document.getElementById('version-id').innerHTML = data.build;

      var stage = data.stage;

      if (stage == "stable") {
        $(document.getElementById('download-button')).addClass("green");
      } else if (stage == "dev") {
        $(document.getElementById('download-button')).addClass("orange");
      } else {
        $(document.getElementById('download-button')).addClass("brown");
      }

      document.getElementById('version-report').innerHTML = "The current version available is <b>" + data.build + "</b> under the <b>" + data.stage + "</b> channel, released on: <b>" + data.buildDate + "</b>.";
  });

});
