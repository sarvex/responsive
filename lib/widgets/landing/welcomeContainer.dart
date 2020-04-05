import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toffee/utility/assets.dart';

import '../../utility/responsive_widget.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: MobileWelcomeContainer(),
      desktop: MobileWelcomeContainer(),
      mobile: MobileWelcomeContainer(),
    );
  }
}

class MobileWelcomeContainer extends StatelessWidget {
  const MobileWelcomeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          SvgPicture.asset(
            Assets.welcome,
            fit: BoxFit.cover,
            allowDrawingOutsideViewBox: true,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Image.asset(
                  Assets.logo,
                  height: 45,
                  width: 78,
                )),
                Container(
                    child: Image.asset(
                  Assets.family_group,
                  fit: BoxFit.cover,
                )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 18),
                          child: Text(
                            'The all-in-one insurance plan for everyone',
                            style: TextStyle(
                                color: Color(0xff2f394a),
                                fontSize: 24,
                                letterSpacing: .39,
                                fontWeight: FontWeight.bold,
                                height: 1.2),
                            textScaleFactor: 1.2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Divider(
                          color: Color(0xff979797).withOpacity(.2),
                          thickness: 2.3,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 12, top: 10, right: 10, left: 10),
                          child: RichText(
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 2,
                                  letterSpacing: .23,
                                  color: Color(0xff2f394a)),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Your most important insurance needs are met with a single Toffee insurance plan. Get all the convenience of',
                                ),
                                TextSpan(
                                    text:
                                        ' health insurance, life insurance and insurance for your household',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: ' in just one combo-plan.')
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Color(0xff979797).withOpacity(.2),
                          thickness: 2.3,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Easy as A-B-C!',
                                      style: TextStyle(
                                          fontSize: 14,
                                          height: 2,
                                          letterSpacing: .23,
                                          color: Color(0xff2f394a),
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  RaisedButton(
                                    hoverColor: Color(0xffc44848),
                                    color: Color(0xffff585d),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 17, 30, 17),
                                    textColor: Colors.white,
                                    onPressed: () => {},
                                    child: Text(
                                      "SEE PLANS",
                                      style: TextStyle(
                                          fontSize: 16,
                                          height: 1.36,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2),
                                    ),
                                  )
                                ]))
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
