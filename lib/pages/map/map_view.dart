import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart' show Position;
import 'package:latlong2/latlong.dart';
import 'package:signal_tv_digital/providers/map_provider.dart';

class MapView extends StatefulWidget {
  const MapView({super.key, required this.map, required this.position, required this.onPositionChanged, this.markers});

  final MapProvider map;
  final Position position;
  final void Function(MapPosition map, bool gesture) onPositionChanged;
  final List<Marker>? markers;

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var left = MediaQuery.of(context).padding.left;
    var right = MediaQuery.of(context).padding.right;

    return SizedBox(
      width: (width - left - right),
      height: height,
      child: FutureBuilder(
        future: map(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data is FlutterMap) {
            return snapshot.data as FlutterMap;
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString()
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<FlutterMap> map() async {
    try {
      var tileMap = tile();
      return FlutterMap(
        mapController: widget.map.controller,
        options: MapOptions(
          center: LatLng(widget.position.latitude, widget.position.longitude),
          zoom: widget.map.zoom,
          maxZoom: 18,
          minZoom: 2,
          onPositionChanged: widget.onPositionChanged,
        ),
        children: [
          if (tileMap != null) tileMap,
          if (widget.markers != null) MarkerLayer(
            markers: widget.markers!,
          ),
        ],
      );
    } catch (e) {
      return Future.error(e);
    }
  }

  TileLayer? tile() {
    try {
      return TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        backgroundColor: Colors.cyan.shade100,
        keepBuffer: 1024000000,
      );
    } catch (e) {
      log(e.toString(), name: 'map tile');
    }

    return null;
  }
}