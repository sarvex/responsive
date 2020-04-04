import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toffee/utility/responsive_widget.dart';

class LandingPage extends ResponsiveWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(16.0),
      );
}
