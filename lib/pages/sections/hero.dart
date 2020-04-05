import 'package:flutter/material.dart';
import 'package:toffee/utility/assets.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        child: Card(
          color: Color(0xffd9fffe),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset(
                  Images.family,
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(
                  Images.family,
                ),
              ),
            ],
          ),
        ),
        clipper: CustomClipPath(),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=48.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.arcToPoint(Offset(radius, size.height - radius), radius: Radius.circular(radius));
    path.lineTo(size.width - radius, size.height - radius);
    path.arcToPoint(Offset(size.width, size.height - (2*radius)), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}