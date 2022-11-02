import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

// import 'package:flutter/animation.dart';
import '../Database/DB.dart';
import '/Pages/new.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF24272C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2C33),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF8D59AD),
                        Color(0xFF2D115C),
                      ]),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                height: 200,
                // child: Padding(
                //   padding: const EdgeInsets.only(top:200.0,),
                //   child: Container(
                //     width:500,
                //     height: 100,
                //     decoration: const BoxDecoration(
                //       gradient: LinearGradient(
                //           begin: Alignment.bottomLeft,
                //           end: Alignment.topRight,
                //           colors: [
                //             Color(0xFF8D59AD),
                //             Color(0xFF2D115C),
                //           ]),
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
              ),
              child: Container(
                width: 500,
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF8D59AD),
                        Color(0xFF2D115C),
                      ]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

// Widget buildUser(User user) => ListTile(
//       title: Text(user.name),
//     );
}
