// @user.places

mapboxgl.accessToken = 'pk.eyJ1IjoidGltYnVsYXQiLCJhIjoiY2wyeXh1ZXA4MWExeDNrbXAwZGxjdGhraSJ9.ypcJmmwE3SgFrcEZb30FGg';

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v11',
  center: [27.4851524, 53.906132],
  zoom: 10
});

let users_places = gon.users_places;

users_places.forEach(function(place, i, users_places) {
  const marker = new mapboxgl.Marker()
  .setLngLat([place.longitude, place.latitude])
  .addTo(map);
});
