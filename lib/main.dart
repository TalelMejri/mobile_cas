import 'package:flutter/material.dart';
import 'package:mobile_cas/Screens/HomePage.dart';
import 'package:mobile_cas/Widgets/Loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  late Widget main;

  @override
  void initState() {
    super.initState();
      main = const Loading();
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        main = const HomePage(); 
      });
    });
  }

 @override
  Widget build(BuildContext context) {
    return MaterialApp
    (
      home: main,
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
       ),
    );
  }
}