import 'package:flutter/material.dart';
import 'package:sql_netcore/screens/homescreen.dart';
import 'package:sql_netcore/screens/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: {
          '/': (_) => const LoginScreen(),
          'home': (_) => const HomeScreen(),
        });
  }
}
