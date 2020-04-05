import 'package:flutter/material.dart';
import 'package:toffee/utility/assets.dart';
import 'package:toffee/utility/device_type.dart';

class SingleProductWidget extends StatelessWidget {
  const SingleProductWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
     final device = getDeviceType(mediaQuery);
    return Padding(
              padding: device == DeviceType.Mobile ? EdgeInsets.only(right: 10, left: 10) : EdgeInsets.only(left: 10),
              child: Card(
                color: Color(0xfffafafa),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 1.5, color: Color(0xfff1f1f1))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 24, top: 32, right: 24),
                      child: Column(
                        children: <Widget>[
                          Center(
                            child: Image.asset(
                              Images.single_toffee,
                              height: 68,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 23, bottom: 8),
                            child: Text(
                              '3-in-1 plan for your life, your family’s health and household',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                      fontWeight: FontWeight.w200,
                                      height: 1.4,
                                      letterSpacing: .63,
                                      fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 42, bottom: 28),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Starting From',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(
                                            fontWeight: FontWeight.w200,
                                            height: 1.4,
                                            letterSpacing: .63,
                                            fontSize: 14),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '₹880',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 5,
                                            fontSize: 40),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    'Per Month',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle2
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                            fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )),
                          OutlineButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                                            borderSide: BorderSide(color: Color(0xffff585d)),
                            padding: const EdgeInsets.fromLTRB(28, 14, 28, 14),
                            onPressed: () => {},
                            child: Text(
                              "KNOW MORE",
                              style: TextStyle(
                                  color: Color(0xffff585d),
                                  fontSize: 16,
                                  height: 1.36,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  top: 47, bottom: 33, right: 12.5, left: 12.5),
                              child: Divider(
                                thickness: 1.3,
                                color: Colors.black.withOpacity(0.2),
                              )),
                          Padding(
                            padding: EdgeInsets.only(bottom: 32),
                            child: Text(
                              'Family Plan Benefits',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2
                                  .copyWith(
                                      fontWeight: FontWeight.bold,
                                      height: 1.4,
                                      letterSpacing: .63,
                                      fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          benefitWidget(
                              'Health Insurance of ₹5 Lakhs',
                              context),
                          benefitWidget('Life Insurance of ₹50 Lakhs', context),
                          benefitWidget(
                              'Household Insurance of ₹1.25\nLakhs', context),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 18),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        color: Color(0xff2f2f2f),
                        height: 41,
                        child: Center(
                            child: Text(
                          'COVERS COVID-19 (CORONA VIRUS) PANDEMIC',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                              height: 1.4,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.white),
                          textAlign: TextAlign.left,
                        )))
                  ],
                ),
              ),
            );
  }

  Widget benefitWidget(String txt, context) {
    return Container(
        margin: EdgeInsets.only(bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  right: 15,
                  top: 5,
                ),
                child: CircleAvatar(
                  backgroundColor: Color(0xff7bbb4a),
                  radius: 4,
                )),
            Expanded(
                child: Text(
              '$txt',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(height: 1.4, letterSpacing: 1.4, fontSize: 13),
              textAlign: TextAlign.center,
            )),
          ],
        ));
  }
}