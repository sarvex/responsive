import 'package:flutter/material.dart';

import './device_type.dart';
import './sizing_information.dart';
import 'device_type.dart';

class ResponsiveWidget extends StatelessWidget {
    final Widget screen;
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;
  // final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveWidget({Key key, this.screen, this.desktop, this.tablet, this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    
    return LayoutBuilder(
      builder: (context, boxContraints) {
        var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          widgetSize: Size(boxContraints.maxWidth, boxContraints.maxHeight),
        );
        debugPrint('$sizingInformation');

        switch(getDeviceType(mediaQuery)) {
          case DeviceType.Watch:
            return null;
            break;
          case DeviceType.Mobile:
            return mobile;
            break;
          case DeviceType.Tablet:
            return tablet;
            break;
          case DeviceType.Desktop:
            return desktop;
            break;
          case DeviceType.Screen:
            return screen;
            break;
          default: 
            return desktop;
        } 
      },
    );
  }
}
