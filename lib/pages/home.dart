import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Choice _selectedChoice = choices[0];
  PageController _pageController;

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

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
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(choices[0].icon),
            onPressed: () {
              _select(choices[0]);
            },
          ),
          IconButton(
            icon: Icon(choices[1].icon),
            onPressed: () {
              _select(choices[1]);
            },
          ),
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ChoiceCard(choice: _selectedChoice),
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
            title: Text('HOME'),
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

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
