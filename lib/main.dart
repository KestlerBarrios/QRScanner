import 'package:flutter/material.dart';
import 'package:qr_scanner/src/pages/home_page.dart';
import 'package:qr_scanner/src/pages/maps_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        'maps': (BuildContext context) => MapsPage(),
      },
    );
  }
}
