import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_login_page/Screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            'Home Screen',
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: ()  {
              singout(context);
            },
            child: Text(
              'Log out',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(
        children: const [
          ListTile(
            title: Text('MohanLal'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/mohanlal.jpg'),
            ),
            subtitle: Text('How are you man'),
            trailing: Text('8:43 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Mammootty'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/mammootty.jpg'),
            ),
            subtitle: Text('it\'s ok we can meet tonight'),
            trailing: Text('3:45 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Dileep'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/dileep.jpg'),
            ),
            subtitle: Text('thankyou'),
            trailing: Text('2:17 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Indrans'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/indrans.jpg'),
            ),
            subtitle: Text('food kazhicho'),
            trailing: Text('1:09 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Pranav'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/pranav.jpg'),
            ),
            subtitle: Text('how is your exams going'),
            trailing: Text('12:40 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Nivin'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/nivin.jpg'),
            ),
            subtitle: Text('poyi irunnu padikkada vellathum'),
            trailing: Text('12:25 pm'),
          ),
          Divider(),
          ListTile(
            title: Text('Tovino'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/tovino.jpg'),
            ),
            subtitle: Text('ok nala kaana'),
            trailing: Text('11:15 am'),
          ),
          Divider(),
          ListTile(
            title: Text('Mukesh'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/mukesh.jpg'),
            ),
            subtitle: Text('velachil edukkaruth ketto'),
            trailing: Text('10:30 am'),
          ),
          Divider(),
          ListTile(
            title: Text('Suraj'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/suraj.jpg'),
            ),
            subtitle: Text('sugano mwone'),
            trailing: Text('8:00 am'),
          ),
          Divider(),
          ListTile(
            title: Text('Dulquer'),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/dulquer.jpg'),
            ),
            subtitle: Text('good morning brother'),
            trailing: Text('11:40 pm'),
          ),
          Divider(),
        ],
      ),
    );
  }

  singout(BuildContext ctx) async {
    final _sharedpref = await SharedPreferences.getInstance();
    _sharedpref.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => ScreenLogin()), (route) => false);
  }
}
