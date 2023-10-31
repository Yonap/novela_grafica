import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const MaterialApp(
    home: UserPage(),
    debugShowCheckedModeBanner: false,
  ));
}
