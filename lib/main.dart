import 'package:flutter/material.dart';
import 'components/driverComponent/addComponent/add.dart';
import 'components/driverComponent/driversComponent/drivers.dart';
import 'components/pages/loading.dart';
void main() => runApp(MainApp());


class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Driver(),
        '/loading' : (context) => LoadingPage(),
        '/add': (context) => AddDriver(),
      },
      initialRoute: '/loading',
    );
  }
}

