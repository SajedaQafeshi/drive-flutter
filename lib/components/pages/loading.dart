import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, '/'));

    return Scaffold(
      backgroundColor: Color(0xff316686),
      body: Center(
        child: SpinKitFoldingCube(
            color: Colors.white,
            size: 70.0,
        ),
      ),
    );
  }
}
