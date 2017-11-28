function getMapVersion() {
  $.getJSON("version.json",{}, function( data ){
    var isStableReady = data.stableReady;

    if (isStableReady == "true") {
      document.getElementById('version-id').innerHTML = data.currentStable.build;

      var stage = data.currentStable.stage;
      var dlURL = data.currentStable.link;

      $(document.getElementById('download-button')).addClass("green");

      document.getElementById('version-report').innerHTML = "The current version available is <b>" + data.currentStable.build + "</b>, released on: <b>" + data.currentStable.date + "</b>.";

      $('#dlpre').attr('href', dlURL);
    } else if (isStableReady == "false") {
      document.getElementById('version-id').innerHTML = data.currentInsider.build;

      var stage = data.currentInsider.stage;
      var dlURL = data.currentInsider.link;

      $(document.getElementById('download-button')).addClass("orange");

      document.getElementById('version-report').innerHTML = "The current version available is <b>" + data.currentInsider.build + "</b>, released on: <b>" + data.currentInsider.date + "</b>.";

      $('#dlpre').attr('href', dlURL);
    }
  });
}
