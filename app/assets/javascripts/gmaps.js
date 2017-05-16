$(document).on('turbolinks:load', function() {

  handler = Gmaps.build('Google');
  var mapMarkers = gon.mapHash;
  var currentLocation = gon.currentLocation;

  handler.buildMap({
      provider: {
        scrollwheel: false
      },
      internal: {
        id: 'event-map',
      },
    },
    function() {
      markers = handler.addMarkers(mapMarkers);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      if (Object.keys(mapMarkers).length == 1) {
        handler.getMap().setZoom(15);
      }
      
    });
});
