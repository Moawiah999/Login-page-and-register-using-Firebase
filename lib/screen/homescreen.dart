import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tesrfier/screen/welcomescreen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  TextEditingController myemail = TextEditingController();
  TextEditingController mypasword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'TutorialKart',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: myemail,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'myemail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: mypasword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Divider(
              height: 30,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('sign up'),
                onPressed: () async {
                  try {
                    var authobject = FirebaseAuth.instance;
                    UserCredential myuser =
                        await authobject.createUserWithEmailAndPassword(
                            email: myemail.text, password: mypasword.text);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("successfully registered")));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("The email is already registered")));
                  }
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text('log in'),
                onPressed: () async {
                  var authobject = FirebaseAuth.instance;
                  UserCredential myuser =
                      await authobject.signInWithEmailAndPassword(
                          email: myemail.text, password: mypasword.text);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Welcome_Screen();
                    },
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
