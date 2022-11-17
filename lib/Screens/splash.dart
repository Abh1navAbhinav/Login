import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_login_page/Screens/home.dart';

import 'package:project_login_page/Screens/login.dart';
import 'package:project_login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Lottie.asset('assets/images/106560-banana.json'),
      ),
    );
  }

  Future<void> gotologin() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ScreenLogin()));
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedpref = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedpref.getBool(savekeyname);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotologin();
    } else {
      await Future.delayed(const Duration(milliseconds: 2500));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => const HomeScreen()));
    }
  }
}
