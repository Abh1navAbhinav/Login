import 'package:flutter/material.dart';
import 'package:project_login_page/Screens/splash.dart';

const savekeyname = 'UserLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Splashscreen(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

