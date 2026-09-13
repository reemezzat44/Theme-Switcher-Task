import 'package:assignment_17/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Assignment17());
}

class Assignment17 extends StatefulWidget {
  const Assignment17({super.key});

  @override
  State<Assignment17> createState() => _Assignment17State();
}

class _Assignment17State extends State<Assignment17> {
  bool isDark = false;

  void toggleTheme(bool value) {
    setState(() {
      isDark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: ProfileScreen(
        isDark: isDark,
        onThemeChanged: toggleTheme,
      ),
    );
  }
}
