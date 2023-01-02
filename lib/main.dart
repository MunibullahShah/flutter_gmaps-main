import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/screens/MapScreen.dart';
import 'package:flutter_gmaps/screens/dealersScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initFirebase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MapScreen(),
    );
  }

  initFirebase() async {
    try {
      await Firebase.initializeApp().whenComplete(() {
        print("Completed");
      });
    } catch (e) {
      print(e);
    }
    setState(() {});
  }
}
