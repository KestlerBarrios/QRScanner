import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_scanner/src/pages/maps_page.dart';
import 'package:qr_scanner/src/pages/urls_page.dart';

import 'package:qr_scanner/src/providers/scan_list_provider.dart';
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
              Provider.of<ScanListProvider>(context, listen: false)
                  .borrarScans();
              showDialog(
                  context: context,
                  child: AlertDialog(
                    title: Text(
                      'Se borraron todos los registros',
                      style: TextStyle(fontSize: 16),
                    ),
                    content: Image(
                        height: 50,
                        width: 50,
                        image: AssetImage('assets/img/check.png')),
                  ));
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
    //TODO: Temporal
    // final tempScan = ScanModel(valor: 'http://guatemaladigital.com');
    //Ingresar Datos
    // DBProvider.db.nuevoScan(tempScan);
    //Obtener Dato por Id
    // DBProvider.db.getScanById(8).then((scan) => print(scan.valor));
    //Obtener todos los scans
    // DBProvider.db.getScans().then(print)
    // Borrar todos los registros de la DB
    // DBProvider.db.deleteScans().then(print);

    final uiProvider = Provider.of<UiProvider>(context);
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (uiProvider.selectedMenuOpt) {
      case 0:
        // scanListProvider.cargarScansPorTipo('geo');
        return MapsPage();
      case 1:
        return UrlsPage();
        break;
      default:
        return MapsPage();
    }
  }
}
