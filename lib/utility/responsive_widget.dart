import 'package:flutter/material.dart';
import './device_type.dart';
import './sizing_information.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveWidget({Key key, this.builder}) : super(key: key);

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

        return builder(context, sizingInformation);
      },
    );
  }
}
