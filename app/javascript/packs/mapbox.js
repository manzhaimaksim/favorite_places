mapboxgl.accessToken = 'pk.eyJ1IjoidGltYnVsYXQiLCJhIjoiY2wyeXh1ZXA4MWExeDNrbXAwZGxjdGhraSJ9.ypcJmmwE3SgFrcEZb30FGg';

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [27.561918396826485, 53.90222577727431],
  zoom: 11.15
});

var popuptext = `<input id='popupButton' type="button" value="Нажми на меня!">`

map.on('load', () => {
  var marker = new mapboxgl.Marker();
  var popup = new mapboxgl.Popup();
  
  function showPopup(event){
    var coordinates = event.lngLat;
    console.log('Lng:', coordinates.lng, 'Lat:', coordinates.lat);
    popup.setLngLat(coordinates).setHTML(popuptext).addTo(map);
    popupButton.addEventListener('click', add_marker(coordinates));

    let long = document.getElementById('lng');
    long.value = coordinates.lng;

    let lat = document.getElementById('lat');
    lat.value = coordinates.lat;
  }

  function add_marker (coordinates) {
    return (event) => {
    console.log("coordinates");
    marker.setLngLat(coordinates).addTo(map);
  }
}

map.on('click', showPopup);

map.on('click', 'places', (e) => {
  // Copy coordinates array.
  const coordinates = e.features[0].geometry.coordinates.slice();
  const description = e.features[0].properties.description;
  // Ensure that if the map is zoomed out such that multiple
  // copies of the feature are visible, the popup appears
  // over the copy being pointed to.
  while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
    coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
  }
  
  new mapboxgl.Popup()
  .setLngLat(coordinates)
  .setHTML(description)
  .addTo(map);
});

  // Change the cursor to a pointer when the mouse is over the places layer.
  map.on('mouseenter', 'places', () => {
    map.getCanvas().style.cursor = 'pointer';
  });
  // Change it back to a pointer when it leaves.
  map.on('mouseleave', 'places', () => {
    map.getCanvas().style.cursor = '';
  });
});
