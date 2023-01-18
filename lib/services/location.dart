import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:zjedz/model/content.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission _ = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      geoCity = placemarks[0].locality!;
      isCityFounded = true;
    } catch (e) {
      print(e);
    }
  }

  Future<void> setCityWithLocation() async {
    await getCurrentLocation();
  }
}
