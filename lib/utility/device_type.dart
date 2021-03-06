import 'package:flutter/material.dart';

enum DeviceType {
  Mobile, 
  Desktop,
  Screen,
}

DeviceType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = mediaQuery.size.width;
  // double deviceWidth = orientation == Orientation.landscape ? mediaQuery.size.width : mediaQuery.size.height;
  debugPrint('$deviceWidth');
  if (deviceWidth > 1338) { 
    return DeviceType.Screen;
  } else if (deviceWidth > 1000) {
    return DeviceType.Desktop;
  } else {
    return DeviceType.Mobile;
  } 
} 