import 'package:flutter/material.dart';

import '../category_details/category_seeall_detail_page.dart';
import 'Category.dart';

class Ctl extends StatelessWidget {
  const Ctl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
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
                padding: const EdgeInsets.only(left: 260, top: 0),
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
                  padding: const EdgeInsets.only(left: 260, top: 0),
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
                padding: const EdgeInsets.only(left: 260, top: 0),
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
      ],
    );
  }
}
