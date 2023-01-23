import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:geolocator/geolocator.dart' show Position;
import 'package:latlong2/latlong.dart';
import 'package:signal_tv_digital/location.dart';
import 'package:signal_tv_digital/pages/Component/detect_button.dart';
import 'package:signal_tv_digital/pages/Component/bottom_navigation.dart';
import 'package:signal_tv_digital/pages/map/current_position_marker.dart';
import 'package:signal_tv_digital/pages/map/helper.dart';
import 'package:signal_tv_digital/pages/map/helper_container.dart';
import 'package:signal_tv_digital/pages/map/map_view.dart';
import 'package:signal_tv_digital/pages/map/search.dart';
import 'package:signal_tv_digital/providers/map_provider.dart';

class MapLayout extends StatefulWidget {
  const MapLayout({super.key});

  @override
  State<MapLayout> createState() => _MapLayoutState();
}

class _MapLayoutState extends State<MapLayout> {
  final List<Marker> _markers = [];
  Future<Position>? position;
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  void getLocation() async {
    try {
      var p = await getCurrentPosition();

      _markers.add(Marker(
        width: 40.h,
        height: 40.h,
        point: LatLng(p.latitude, p.longitude), 
        builder: (ctx) => const CurrentPositionMarker(),
      ));

      setState(() {
        position = Future(() => p);
      });
    } catch (e) {
      position = Future.error(e);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    var map = context.watch<MapProvider>();

    return Scaffold(
      floatingActionButton: const DetectButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavigation(),
      body: FutureBuilder(
        future: position,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: Text(snapshot.error.toString()),
              ),
            );
          }

          if (snapshot.hasData &&  snapshot.data is Position) {
            return Stack(
              children: [
                MapView(
                  map: map, 
                  position: snapshot.data as Position, 
                  onPositionChanged: (mapPosition, gesture) {
                    position = Future(() => Position(
                      longitude: mapPosition.center!.longitude,
                      latitude: mapPosition.center!.latitude,
                    ));
                    
                    if (mapPosition.zoom != null) {
                      map.zoom = mapPosition.zoom!;
                    }
                  },
                  markers: _markers,
                ),
                
                const Search(),
                
                Helper(
                  children: [
                    HelperContainer(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9999),
                            ),
                            padding: EdgeInsets.zero,
                            minimumSize: Size(40.h, 40.h),
                            textStyle: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                          onPressed: () {
                            // 
                          },
                          child: const Icon(Icons.layers),
                        ),
                      ],
                    ),
                    HelperContainer(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9999),
                            ),
                            padding: EdgeInsets.zero,
                            minimumSize: Size(40.h, 40.h),
                            textStyle: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                          onPressed: () {
                            if (map.zoom < 18) {
                              position?.then((value) {
                                map.zoom += .5;
                                map.move(value);
                              });
                            }
                          },
                          child: const Text('+'),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9999),
                            ),
                            padding: EdgeInsets.zero,
                            minimumSize: Size(40.h, 40.h),
                            textStyle: TextStyle(
                              fontSize: 20.sp,
                            ),
                          ),
                          onPressed: () {
                            if (map.zoom > 2) {
                              position?.then((value) {
                                map.zoom -= .5;
                                map.move(value);
                              });
                            }
                          },
                          child: const Text('-'),
                        ),
                      ],
                    ),
                    HelperContainer(
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            value: map.zoom,
                            max: 18,
                            min: 2,
                            divisions: 16 * 2,
                            label: '${((map.zoom - 2) / 16 * 100).round()}%',
                            onChanged: (double value) {
                              position?.then((p) {
                                map.zoom = value;
                                map.move(p);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
