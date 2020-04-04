import 'package:flutter/material.dart';
import 'package:responsive/widgets/responsive_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(builder: (context, sizingInformation) {
      return Scaffold(body: Center(child: Text(sizingInformation.toString()),),);
    });
  }
}
