import 'SearchPage.dart';
import 'CartPage.dart';
import 'MainPage.dart';
import 'ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _deepBlue = Colors.orange[600];
  final _backBottNavBar = const Color(0xFF2C2C33);
  final backScreenColor = Colors.white;

  int index = 0;

  final screenList=[
    const MainPage(),
    const SearchPage(),
    CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screenList[index],
      backgroundColor: backScreenColor,
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor:_deepBlue,
          backgroundColor: _backBottNavBar,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: [
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.bellConcierge,
                color: backScreenColor,
                size: 30,
              ),
              label: 'Restaraunts',
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.search,
                color: backScreenColor,
                size: 30,
              ),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.shoppingBag,
                color: backScreenColor,
                size: 30,
              ),
              label: 'Bag',
            ),
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.userCircle,
                color: backScreenColor,
                size: 30,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
