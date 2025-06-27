import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/home_screen/home_main_screen.dart';
import 'package:instagram/main/tab_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static final List<Widget> _widgetOptions = <Widget>[
    HomeMainScreen(),
    Text('Index 1: Business', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
    Text('Index 2: School', style: optionStyle),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomTabBar(
        selectedIndex: _selectedIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
