import 'package:flutter/material.dart';
import 'package:toffee/utility/responsive_widget.dart';
import 'package:toffee/widgets/familyProductWidget.dart';
import 'package:toffee/widgets/singleProductWidget.dart';

class PruductsContainer extends StatelessWidget {
  const PruductsContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      screen: DesktopProductContainer(),
      desktop: DesktopProductContainer(),
      mobile: MobileProductContainer(),
    );
  }
}

class DesktopProductContainer extends StatelessWidget {
  const DesktopProductContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Best of three, rolled in one',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Health Insurance + Life Insurance + Household Insurance',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Thrice the coverage, twice the convenience, zero extra paperwork. Yay!',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontWeight: FontWeight.w200,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxWidth: 439),
                  child: SingleProductWidget(),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 439),
                  child: FamilyProductWidget(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileProductContainer extends StatelessWidget {
  const MobileProductContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 50, right: 50, bottom: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Best of three, rolled in one',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 24),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Health Insurance + Life Insurance + Household Insurance',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Thrice the coverage, twice the convenience, zero extra paperwork. Yay!',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontWeight: FontWeight.w200,
                          height: 1.38,
                          letterSpacing: .6,
                          fontSize: 13),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
            Container(
              constraints: BoxConstraints(maxWidth: 439),
              child: SingleProductWidget(),
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 439),
              child: FamilyProductWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
