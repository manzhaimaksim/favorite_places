mapboxgl.accessToken = 'pk.eyJ1IjoidGltYnVsYXQiLCJhIjoiY2wyeXh1ZXA4MWExeDNrbXAwZGxjdGhraSJ9.ypcJmmwE3SgFrcEZb30FGg';

title = document.getElementById('map').getAttribute('data-title');
latitude = document.getElementById('map').getAttribute('data-latitude');
longitude = document.getElementById('map').getAttribute('data-longitude');

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [longitude, latitude],
  zoom: 15
});

map.on('load', () => {
  // Add an image to use as a custom marker
  map.loadImage(
    'https://docs.mapbox.com/mapbox-gl-js/assets/custom_marker.png',
    (error, image) => {
      if (error) throw error;
      map.addImage('custom-marker', image);
      // Add a GeoJSON source with 1 point
      map.addSource('points', {
        'type': 'geojson',
        'data': {
          'type': 'FeatureCollection',
          'features': [{
            'type': 'Feature',
            'geometry': {
              'type': 'Point',
              'coordinates': [longitude, latitude]
            },
            'properties': {
              'title': title
            }
          }
        ]
      }
    });
    
    // Add a symbol layer
    map.addLayer({
      'id': 'points',
      'type': 'symbol',
      'source': 'points',
      'layout': {
        'icon-image': 'custom-marker',
        // get the title name from the source's "title" property
        'text-field': ['get', 'title'],
        'text-font': [
          'Open Sans Semibold',
          'Arial Unicode MS Bold'
        ],
        'text-offset': [0, 1.25],
        'text-anchor': 'top'
      }
    });
  }
  );
});
