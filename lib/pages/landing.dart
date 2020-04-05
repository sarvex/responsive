import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toffee/utility/assets.dart';
import 'package:toffee/utility/responsive_widget.dart';

import '../utility/responsive_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: WelcomeContainer(),
      desktop: WelcomeContainer(),
      tablet: WelcomeContainer(),
      mobile: WelcomeContainer(),
    );
  }
}

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Images.family_group),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
