import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'home_screen.dart';
import 'learn_screen.dart';
import 'review_screen.dart';
import 'settings_screen.dart';
import 'templates_screen.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  void _changeThemeMode(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ICT App',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue[900],
        useMaterial3: true,
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 1.5,
          margin: EdgeInsets.all(8),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
          bodySmall: TextStyle(fontFamily: 'monospace'),
          displayLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: TextStyle(fontSize: 14, color: Colors.black),
          labelLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          labelMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          headlineMedium: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      /*darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.black,
        useMaterial3: true,
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 1.5,
          margin: EdgeInsets.all(8),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Colors.white),
          bodyMedium: TextStyle(fontSize: 14, fontFamily: 'Roboto', color: Colors.white),
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Roboto', color: Colors.white),
        ),
      ),*/
      themeMode: ThemeMode.light,
      home: HomeScreen(
        changeThemeMode: _changeThemeMode,
        currentThemeMode: _themeMode,
      ),
      routes: {
        // '/': (context) => LoginSignupScreen(),
        // '/details': (context) => DetailsScreen(),
        '/learn': (context) => LearnScreen(),
        '/review': (context) => ReviewScreen(),
        '/about': (context) => AboutScreen(),
        // '/search': (context) => SearchScreen(),
        /*'/settings': (context) => SettingsScreen(
          changeThemeMode: _changeThemeMode,
          currentThemeMode: _themeMode,
        ),*/
        // '/splash': (context) => Splash(),
        '/templates': (context) => TemplatesScreen(),
        // '/terms': (context) => TermsScreen(),
      },
    );
  }
}
