import 'package:flutter/material.dart';
import 'package:qr_scanner/src/widgets/scan_tiles.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(
      tipo: 'geo',
    );
  }
}
