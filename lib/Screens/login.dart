import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_login_page/Screens/home.dart';
import 'package:project_login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);

  final _usenameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login Page',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formkey,
          child: Column(children: [
            Image.asset(
              'assets/images/logo5.jpg',
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _usenameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "username is empty";
                  } else if (value != 'a') {
                    return 'invalid username';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "password is empty";
                  } else if (value != '1') {
                    return 'invalid password';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                onPressed: () {
                  _formkey.currentState!.validate();
                  checklogin(context);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void checklogin(BuildContext ctx) async {
    if (_usenameController.text == 'a' && _passwordController.text == '1') {
      final _sharedpref = await SharedPreferences.getInstance();
      await _sharedpref.setBool(savekeyname, true);

      Navigator.pushReplacement(
          ctx, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      SnackBarBehavior.floating;
      ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(
        content: Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text(
            'please try again',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.amber,
      ));
    }
  }
}
