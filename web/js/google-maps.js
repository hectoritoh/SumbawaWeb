var map;
function initialize() {
    var myLatlng = new google.maps.LatLng(-2.155430, -79.892016);
    var mapOptions = {
        zoom: 15,
        center: new google.maps.LatLng(-2.155430, -79.892016),
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
    var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: 'MALL DEL SOL'
    });
}

google.maps.event.addDomListener(window, 'load', initialize);