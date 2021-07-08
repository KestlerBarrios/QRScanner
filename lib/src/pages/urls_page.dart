import 'package:flutter/material.dart';
import 'package:qr_scanner/src/widgets/scan_tiles.dart';

class UrlsPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ScanTiles(
      tipo: 'http',
    );
  }
}
