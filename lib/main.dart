import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_tutorial/screens/home.dart';

import 'models/counter_model.dart';

void main() {
  runApp(Provider(
      create: (context) => CounterModel(counter: 0), child: (const MainApp())));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.purpleM3,
        useMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.purpleM3,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.light,
      home: const Home(),
    );
  }
}
