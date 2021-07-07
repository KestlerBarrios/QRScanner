import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner/src/pages/maps_page.dart';
import 'package:qr_scanner/src/pages/urls_page.dart';

import 'package:qr_scanner/src/providers/db_provider.dart';
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
            onPressed: () {
              DBProvider.db.deleteScans();
              AlertDialog();
            },
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

    //TODO: Temporal

    // final tempScan = ScanModel(valor: 'http://guatemaladigital.com');
    //Ingresar Datos
    // DBProvider.db.nuevoScan(tempScan);
    //Obtener Dato por Id
    // DBProvider.db.getScanById(8).then((scan) => print(scan.valor));
    //Obtener todos los scans
    // DBProvider.db.getScans().then(print)
    // Borrar todos los registros de la DB
    DBProvider.db.deleteScans().then(print);

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
