function getMapVersion() {
  $.getJSON("version.json",{}, function( data ){
    var isStableReady = data.stableReady;
    var dlStableURL = data.currentStable.link;
    var dlInsiderURL = data.currentInsider.link;

    if (isStableReady == "true") {

      var stage = data.currentStable.stage;

      $(document.getElementById('download-button')).addClass("green");

      document.getElementById('version-report').innerHTML = "The current version available is <b>" + data.currentStable.build + "</b> (<i>stable</i> channel), released on: <b>" + data.currentStable.date + "</b>.";

    } else if (isStableReady == "false") {

      var stage = data.currentInsider.stage;

      $(document.getElementById('download-button')).addClass("orange");

      document.getElementById('version-report').innerHTML = "The current version available is <b>" + data.currentInsider.build + "</b> (<i>insider</i> channel), released on: <b>" + data.currentInsider.date + "</b>.";

    }

    $('#dlmed').attr('href', dlStableURL);
    $('#dlpre').attr('href', dlInsiderURL);
  });
}
