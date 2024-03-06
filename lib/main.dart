import 'package:flutter/material.dart';

import 'component/Navigator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.fallback(),
      home: Navigatorbar(),
    );
  }
}
