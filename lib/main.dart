import 'package:counselingcbt_decisionsupport_app/screens/therapy_process.dart';
import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomeScreen(),
      routes: {
        TheraphyProcess.routName: (context) => const TheraphyProcess(),
        // routes to control pages and how to navigate between screens
      },
    );
  }
}
