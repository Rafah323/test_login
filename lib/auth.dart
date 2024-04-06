import 'package:apps/home_ccreen.dart';
import 'package:apps/page2.dart';
import 'package:apps/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
     body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
         if (snapshot.hasData) {
           if(FirebaseAuth.instance.currentUser !=null) {
             Navigator.pushNamed(context,'/');

           }
             return const Homescreen();

          } else {

            return pagetow();
         }
        }),
      ),
    );
  }
}
