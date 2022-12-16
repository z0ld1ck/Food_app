import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food_app/Pages/HomePage.dart';
import 'package:food_app/Pages/SearchPage.dart';
import 'package:food_app/SplashScreen/SplashScreen.dart';
import 'NavBarPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:NavBar(),
    );
  }
}
