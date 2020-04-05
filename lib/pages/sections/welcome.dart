import 'package:flutter/material.dart';
import 'package:toffee/utility/assets.dart';

import '../../utility/responsive_widget.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: DesktopWelcomeContainer(),
      desktop: DesktopWelcomeContainer(),
      mobile: MobileWelcomeContainer(),
    );
  }
}

class DesktopWelcomeContainer extends StatelessWidget {
  const DesktopWelcomeContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(
            Images.welcome,
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 65, 70, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    Images.logo,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.39),
                        // margin: EdgeInsetsDirectional.only(
                        //     top: MediaQuery.of(context).size.height * 0.2),
                        child: Padding(
                            padding: EdgeInsets.only(top: 35),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(bottom: 8),
                                  child: Text(
                                    'The all-in-one insurance plan for everyone',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                            color: Color(0xff2f394a),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.8,
                                            fontSize: 40),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10, top: 22),
                                  child: RichText(
                                    softWrap: true,
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          .copyWith(
                                              height: 2.13,
                                              fontSize: 16,
                                              color: Color(0xff2f394a)),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Your most important insurance needs are met with a single Toffee insurance plan. Get all the convenience of',
                                        ),
                                        TextSpan(
                                            text:
                                                ' health insurance, life insurance and insurance for your household',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: ' in just one combo-plan.'),
                                        TextSpan(
                                            text: ' Easy as A-B-C!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                RaisedButton(
                                  hoverColor: Color(0xffc44848),
                                  color: Color(0xffff585d),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding:
                                      const EdgeInsets.fromLTRB(28, 14, 28, 14),
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
                              ],
                            ))),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 1,
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 62),
                            child: Image.asset(
                              Images.family_group,
                              width: MediaQuery.of(context).size.width * .44,
                              fit: BoxFit.cover,
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
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
          Container(
            color: Color(0xffd9fffe),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Image.asset(
                  Images.logo,
                  height: 45,
                  width: 78,
                )),
                Container(
                    child: Image.asset(
                  Images.family_group,
                  fit: BoxFit.fill,
                )),
                Container(
                    margin: EdgeInsetsDirectional.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsetsDirectional.only(bottom: 18),
                          child: Text(
                            'The all-in-one insurance plan for everyone',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontWeight: FontWeight.bold),
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
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                      height: 1.8,
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
                                  Text(
                                    'Easy as A-B-C!',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(
                                            // height: 2,
                                            letterSpacing: .23,
                                            color: Color(0xff2f394a),
                                            fontWeight: FontWeight.bold),
                                  ),
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
                                        28, 14, 28, 14),
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
