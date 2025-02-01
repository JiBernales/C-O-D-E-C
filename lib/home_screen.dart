import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'learn_screen.dart';
import 'review_screen.dart';
import 'search_screen.dart';
import 'settings_screen.dart';
import 'templates_screen.dart';

class HomeScreen extends StatefulWidget {
  final Function(ThemeMode) changeThemeMode;
  final ThemeMode currentThemeMode;

  HomeScreen({
    required this.changeThemeMode,
    required this.currentThemeMode,
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  late List<Widget> _children;

  @override
  void initState() {
    super.initState();
    _updateChildren();
  }

  void _updateChildren() {
    _children = [
      LearnScreen(),
      ReviewScreen(),
      TemplatesScreen(),
      AboutScreen(),
      /*SettingsScreen(
        changeThemeMode: widget.changeThemeMode,
        currentThemeMode: widget.currentThemeMode,
      ),*/
    ];
  }

  @override
  void didUpdateWidget(HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentThemeMode != widget.currentThemeMode) {
      _updateChildren();
    }
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.blue[900],
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh),
            label: 'Review',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Templates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),*/
        ],
      ),
    );
  }
}
