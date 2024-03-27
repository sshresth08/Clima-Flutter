import 'package:geolocator/geolocator.dart';

class Location {

  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async{
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
        // print('lat: $latitude');
        // print('lon: $longitude');
      }
    }catch(e){
      print(e);
    }
  }

}