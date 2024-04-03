import 'package:apps/page2.dart';
import 'package:flutter/material.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
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
              Container(
                  margin: const EdgeInsets.only(top: 200),
                  child: const Text(
                    "Hello  , Welcome to \n Traveling App",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 350),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const pagetow();
                    }));
                  },
                  icon: const Icon(
                    Icons.arrow_circle_right,
                    size: 70,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
