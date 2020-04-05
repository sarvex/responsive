import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xd9fffe),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10)),
            side: BorderSide(width: 5, color: Colors.green)),
        child: ListTile(),
      ),
    );
  }
}
