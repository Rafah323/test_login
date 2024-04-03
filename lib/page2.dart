import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class pagetow extends StatefulWidget {
  const pagetow({super.key});

  @override
  State<pagetow> createState() => _pagetowState();
}

class _pagetowState extends State<pagetow> {
  @override
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
                    "Let's Go \nTraveling Arround the World.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(children: [
                    Container(
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefix: Icon(Icons.email),
                            hintText: "email",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefix: Icon(Icons.lock),
                            hintText: "password",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
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
                    Container(
                      width: 300,
                      height: 200,
                      margin: EdgeInsets.only(top: 125),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create Account",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("|"),
                          Text(
                            "    Forget passowrd",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
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
