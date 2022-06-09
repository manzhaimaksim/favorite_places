mapboxgl.accessToken = 'pk.eyJ1IjoidGltYnVsYXQiLCJhIjoiY2wyeXh1ZXA4MWExeDNrbXAwZGxjdGhraSJ9.ypcJmmwE3SgFrcEZb30FGg';

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [27.561784, 53.902231],
  zoom: 10
});

let places = gon.places;

places.forEach(function(place, i, places) {
  const marker = new mapboxgl.Marker()
  .setLngLat([place.longitude, place.latitude])
  .setPopup(new mapboxgl.Popup().setHTML("<a href=" + "/places/" + place.id + ">" + place.title + "</a>"))
  .addTo(map);
});
