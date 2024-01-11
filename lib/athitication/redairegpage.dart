import 'package:bikash/athitication/loginpage.dart';
import 'package:bikash/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Redairegpage extends StatelessWidget {
  const Redairegpage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return HomePage();
        } else {
          return loginpage();
        }
      },
    );
  }
}
