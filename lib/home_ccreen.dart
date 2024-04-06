import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final user =FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
        'Hello, your\'re signed in ',
        style: TextStyle(fontSize: 20,
        fontWeight: FontWeight.bold),
        ),
    Text(
    user.email!,
    style: const TextStyle(fontSize: 20,
    fontWeight: FontWeight.bold),
    ),
    MaterialButton(onPressed: (){
    FirebaseAuth.instance.signOut();
    },
    color: Colors.grey,
    child: const Text('sign out'),
    ),
        ],
  ),
  ),
  );
  }
}
