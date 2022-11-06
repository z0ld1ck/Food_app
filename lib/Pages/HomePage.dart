import 'package:flutter/cupertino(1).dart';
import 'package:flutter/foundation(1).dart';
import 'package:flutter/material.dart';
import 'package:food_app/Components/Category.dart';
import 'package:food_app/Components/recede_carousel.dart';
import 'package:food_app/category_details/category_seeall_detail_page.dart';

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
        backgroundColor: const Color(0xFF24272C),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Recede('assets/images/загруженное.jpg'),
                        Recede('assets/images/загруженное.jpg'),
                        Recede('assets/images/загруженное.jpg'),
                        Recede('assets/images/загруженное.jpg'),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFF8D59AD),
                          Color(0xFF2D115C),
                        ],
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    height: 200,
                  ),
                ),
              ),
              Container(
                height: 40,
                width: size.width,
                margin: const EdgeInsets.only(top: 10, left: 20),
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 20, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 0, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 0, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 0, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 0, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
              Container(
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      child: const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, top: 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SeeAll(),
                              ),
                            );
                          },
                          child: const Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                margin: const EdgeInsets.only(top: 0, left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories('assets/images/pizza.jpg', 'Pizza'),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                    Categories(
                      'assets/images/pizza.jpg',
                      'Pizza',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//
