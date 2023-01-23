import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart' show Position;
import 'package:latlong2/latlong.dart';

class MapProvider extends ChangeNotifier {
  double _zoom = 11;
  MapController controller = MapController();
  Timer? timeout;

  double get zoom => _zoom;
  set zoom(double value)  {
    _zoom = value;
    notifyListeners();
  }

  void move(Position position) {
    timeout?.cancel();
    timeout = Timer(const Duration(milliseconds: 300), () {
      controller.move(LatLng(position.latitude, position.longitude), zoom);
    });
    notifyListeners();
  }

  @override
  String toString() {
    return 'Zoom: $zoom';
  }
}