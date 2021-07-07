import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/src/providers/scan_list_provider.dart';
import 'package:qr_scanner/src/widgets/scan_tiles.dart';

class UrlsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);
    scanListProvider.cargarScansPorTipo('http');
    return ScanTiles(
      tipo: 'http',
    );
  }
}
