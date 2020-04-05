import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:toffee/widgets/landing/welcomeContainer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: <Widget>[WelcomeContainer()],
    )));
  }
}
