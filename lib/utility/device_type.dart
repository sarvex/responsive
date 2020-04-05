import 'package:flutter/material.dart';

enum DeviceType {
  Mobile, 
  Desktop,
  Screen,
}

DeviceType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  double deviceWidth = orientation == Orientation.landscape ? mediaQuery.size.height : mediaQuery.size.width;

  if (deviceWidth > 1400) { 
    return DeviceType.Screen;
  } else if (deviceWidth > 950) {
    return DeviceType.Desktop;
  } else {
    return DeviceType.Mobile;
  } 
} 