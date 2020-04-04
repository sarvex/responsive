import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive/pages/home.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
