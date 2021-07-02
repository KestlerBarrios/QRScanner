import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_scanner/src/pages/maps_page.dart';
import 'package:qr_scanner/src/pages/urls_page.dart';
import 'package:qr_scanner/src/providers/ui_provider.dart';
import 'package:qr_scanner/src/widgets/custom_navigationbar.dart';
import 'package:qr_scanner/src/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {},
          )
        ],
      ),
      body: _BodyContent(),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _BodyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    switch (uiProvider.selectedMenuOpt) {
      case 0:
        return MapsPage();
      case 1:
        return UrlsPage();
        break;
      default:
        return MapsPage();
    }
  }
}
