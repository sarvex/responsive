import 'package:flutter/material.dart';
import 'package:toffee/utility/assets.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xffd9fffe),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              Images.logo,
              height: 96.0,
            ),
          ],
        ),
      ),
    );
  }
}
