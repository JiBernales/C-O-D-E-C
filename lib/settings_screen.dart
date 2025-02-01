import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final Function(ThemeMode) changeThemeMode;
  final ThemeMode currentThemeMode;

  SettingsScreen({
    required this.changeThemeMode,
    required this.currentThemeMode,
  });

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late bool _isDarkMode;

  @override
  void initState() {
    super.initState();
    _isDarkMode = widget.currentThemeMode == ThemeMode.dark;
  }

  @override
  void didUpdateWidget(SettingsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentThemeMode != widget.currentThemeMode) {
      setState(() {
        _isDarkMode = widget.currentThemeMode == ThemeMode.dark;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Settings',
              style: Theme.of(context).textTheme.displayLarge
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: _isDarkMode,
              onChanged: (bool value) {
                setState(() {
                  _isDarkMode = value;
                });
                widget.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
              },
            ),
          ],
        ),
      ),
    );
  }
}