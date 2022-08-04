import 'package:geolocator/geolocator.dart';

class LocationService {
  late double latitude;
  late double longitude;

  getUserPermissionAndPosition() async {
    LocationPermission permission = await Geolocator.requestPermission();
    print(permission.name);

    if (permission.name != 'deniedForever') {
      void getLocation() async {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        latitude = position.latitude;
        longitude = position.longitude;
        print("Latitude is: $latitude");
        print("Longitude is: $longitude");
      }
      getLocation();
    }

  }







}