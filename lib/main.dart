import 'package:apps/auth.dart';
import 'package:apps/page1.dart';
import 'package:apps/page2.dart';
import 'package:apps/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: const Auth(),
      routes: {
        '/':(context) =>   const pageone(),
        '/homescreen':(context) =>  const pagetow(),
        '/sigbupscreen' :(context) => const signupscreen(),
        '/loginscreen':(context) => const signupscreen(),

      },
    );
  }
}