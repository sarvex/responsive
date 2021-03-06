import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toffee/pages/sections/products.dart';
// import 'package:responsive_widgets/responsive_widgets.dart';
import 'sections/welcome.dart';
import 'sections/hero.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1440),
          child: ListView(
            children: <Widget>[HeroSection(), WelcomeContainer(), PruductsContainer()],
          ),
        ),
      ),
    );
  }
}
