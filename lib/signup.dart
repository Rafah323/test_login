import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


 class signupscreen extends StatefulWidget {
   const signupscreen({super.key});

   @override
   State<signupscreen> createState() => _signupscreenState();
 }

 class _signupscreenState extends State<signupscreen> {
   final _emailController=TextEditingController();
   final _passwordCntroller=TextEditingController();

   bool secourTxet =true;
   Future signup() async{
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
       email: _emailController.text.trim(),
       password: _passwordCntroller.text.trim(),
     );
     Navigator.of(context).pushNamed('/homescreen');
   }
   void openSignupScreen(){
     Navigator.of(context).pushReplacementNamed('/sigbupscreen');
   }
   @override
   void dispose(){
     super.dispose();
     _emailController.dispose();
     _passwordCntroller.dispose();

   }
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         body: Container(
             width: double.infinity,
             height: 950,
             decoration: const BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage(
                         "images/891f7ec5-a4e6-4339-b44c-61eba7c3fec2.jpg"),
                     fit: BoxFit.fill)),
             child: Column(
               children: [
                 const Padding(
                   padding: EdgeInsets.only(top: 100),
                   child: Text(
                     "SIGN UP \nWelcome Here You Can Sign Up",
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: 25,
                         fontWeight: FontWeight.bold),
                   ),
                 ),
                 const SizedBox(
                   height: 50,
                 ),
                 Container (
                   child: Column(children: [
                     Container (
                       width: 300,
                       height: 50,
                       child: TextFormField(
                         controller: _emailController,
                         decoration: InputDecoration(
                             prefix: const Icon (Icons.email),
                             hintText: "Email",
                             fillColor: Colors.white,
                             filled: true,
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(25),
                                 borderSide:
                                 const  BorderSide (color: Colors.blue, width: 1))),
                       ),
                     ),
                     const SizedBox (
                       height: 20,
                     ),
                     Container (
                       width: 300,
                       height: 50,
                       child: TextField(
                         controller:  _passwordCntroller,
                         obscureText: secourTxet,
                         decoration: InputDecoration(
                             prefix:const Icon (Icons.lock),
                             hintText: "password",
                             suffixIcon: IconButton(onPressed: (){
                               setState(() {
                                 secourTxet=!secourTxet;

                               });
                             },icon: Icon(secourTxet ? Icons.visibility_off:Icons.visibility),),
                             fillColor: Colors.white,
                             filled: true,
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(25),
                                 borderSide:
                                 const  BorderSide (color: Colors.blue, width: 1))),
                       ),
                     ),
                     const SizedBox (height: 10,),
                     GestureDetector(
                       onTap: signup,
                       child: Container(
                         width: 300,
                         height: 50,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25),
                         ),
                         child: Center(
                           child: Text(
                             "log in",
                             style: TextStyle(
                                 color: Colors.pink[700],
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20),
                           ),
                         ),
                       ),
                     ),
                     Container(
                       width: 300,
                       height: 200,
                       margin: const EdgeInsets.only (top: 125),
                       child: Row (
                         mainAxisAlignment:  MainAxisAlignment.center,
                         children: [
                           const Text (
                             "Not yat a member?",
                             style: TextStyle (
                                 fontSize: 17,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold),
                           ),
                           const SizedBox (
                             width:10,
                           ),

                           GestureDetector(
                             onTap: openSignupScreen,
                             child: const Text (
                               "Sign in here",
                               style: TextStyle (
                                   fontSize: 17,
                                   color: Colors.white,
                                   fontWeight: FontWeight.bold),
                             ),
                           ),
                           const SizedBox (
                               width: 10
                           ),
                         ],
                       ),
                     )
                   ]),
                 )
               ],
             )),
       ),
     );
   }
 }


