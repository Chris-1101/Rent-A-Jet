import 'mapbox-gl/dist/mapbox-gl.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

const mapElement = document.getElementById('map');

if (mapElement) {
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
if (mapElement) {
// [ ... ]
  const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
  })
if (mapElement) {
  // [ ... ]

  if (markers.length === 0) {
    console.log(markers.length)
    map.setZoom(1);
  } else if (markers.length === 1) {
    console.log(markers.length)
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    console.log(markers.length)
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 5000, padding: 75 })
  }
}
}
}
