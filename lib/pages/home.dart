import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toffee'),
        leading: IconButton(
          icon: Icon(Icons.apps),
          onPressed: () {},
        ),
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(FontAwesomeIcons.shoppingBasket),
        backgroundColor: Theme.of(context).accentColor,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('LIFE'),
            icon: Icon(FontAwesomeIcons.heartbeat),
            activeColor: Theme.of(context).accentColor,
            textAlign: TextAlign.right,
          ),
          BottomNavyBarItem(
            title: Text('DETAILS'),
            icon: Icon(FontAwesomeIcons.bullhorn),
            activeColor: Theme.of(context).accentColor,
            textAlign: TextAlign.right,
          ),
          BottomNavyBarItem(
            title: Text('FAQs'),
            icon: Icon(FontAwesomeIcons.question),
            activeColor: Theme.of(context).accentColor,
            textAlign: TextAlign.right,
          ),
          BottomNavyBarItem(
            title: Text('CALL'),
            icon: Icon(FontAwesomeIcons.phone),
            activeColor: Theme.of(context).accentColor,
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
