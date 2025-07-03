/*dependencies:
flutter_map: ^6.0.1
  latlong2: ^0.9.0
put these in pubspec pls
*/



import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final mapCtrl = MapController();
  double zoom = 17.0;
  String mode = "CCS"; // only CCS map used for now
  // String? bldg;
  // int flr = 1;

  final bounds = LatLngBounds(
    LatLng(14.599, 120.984),
    LatLng(14.602, 120.988),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapCtrl,
            options: MapOptions(
              initialCenter: LatLng(14.6005, 120.986), // CCS dept center (estimate)
              initialZoom: zoom,
              minZoom: 16,
              maxZoom: 20,
              // onTap: _onTap,
              onPositionChanged: (pos, moved) {
                setState(() {
                  zoom = pos.zoom!;
                  // if (zoom < 18) bldg = null;
                });
              },
            ),
            children: [
              if (mode == "CCS") _imgOverlay("assets/views/ccs_map.png"),

              // Future map views:
              // if (mode == "default") ..._mapTiles(),
              // if (mode == "google") _imgOverlay("assets/views/google_map.png"),
              // if (mode == "dept") _imgOverlay("assets/views/departments.png"),
              // if (mode == "personal") _imgOverlay("assets/views/personal_view.png"),
              // if (bldg != null && zoom >= 18) _flrOverlay(bldg!, flr),
            ],
          ),

          // View buttons (only CCS enabled)
          Positioned(
            bottom: 20,
            right: 20,
            child: Column(
              children: [
                _modeBtn("CCS dep", "CCS"), // currently active
                // _modeBtn("Default", "default"),
                // _modeBtn("Google", "google"),
                // _modeBtn("Dept", "dept"),
                // _modeBtn("You", "personal"),
              ],
            ),
          ),

          // Floor selector (hidden for now)
          /*
          if (bldg != null && zoom >= 18)
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: [1, 2].map((f) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: ElevatedButton(
                      onPressed: () => setState(() => flr = f),
                      child: Text("Floor $f"),
                    ),
                  );
                }).toList(),
              ),
            ),
          */
        ],
      ),
    );
  }

  /*
  void _onTap(tapPos, latlng) {
    if (zoom >= 18) {
      setState(() {
        bldg = "building1"; // static
      });
    }
  }

  List<OverlayImageLayer> _mapTiles() {
    return [
      // Add images here later
    ];
  }
  */

  // Used if re-enabling individual tiles
  OverlayImageLayer _tile(String path, LatLng sw, LatLng ne) {
    return OverlayImageLayer(
      overlayImages: [
        OverlayImage(
          bounds: LatLngBounds(sw, ne),
          imageProvider: AssetImage(path),
        )
      ],
    );
  }

  // For floor overlays (disabled for now)
  OverlayImageLayer _flrOverlay(String name, int flr) {
    return OverlayImageLayer(
      overlayImages: [
        OverlayImage(
          bounds: LatLngBounds(
            LatLng(14.6002, 120.9857),
            LatLng(14.6006, 120.9862),
          ),
          imageProvider: AssetImage("assets/floors/${name}_floor$flr.png"),
        )
      ],
    );
  }

  OverlayImageLayer _imgOverlay(String path) {
    return OverlayImageLayer(
      overlayImages: [
        OverlayImage(
          bounds: bounds,
          imageProvider: AssetImage(path),
        )
      ],
    );
  }

  Widget _modeBtn(String label, String val) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: FloatingActionButton(
        mini: true,
        onPressed: () {
          setState(() {
            mode = val;
            // bldg = null;
          });
        },
        tooltip: label,
        child: Text(label[0], style: TextStyle(fontSize: 16)),
      ),
    );
  }
}