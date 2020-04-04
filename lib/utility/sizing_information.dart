import 'package:flutter/material.dart';
import './device_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceType deviceType;
  final Size screenSize;
  final Size widgetSize;

  SizingInformation({this.orientation, this.deviceType, this.screenSize, this.widgetSize});

  @override 
  String toString()  => 'Orientation: $orientation DeviceType: $deviceType ScreenSize: $screenSize WidgetSize: $widgetSize';
}