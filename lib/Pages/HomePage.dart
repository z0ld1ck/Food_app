import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino(1).dart';
import 'package:flutter/foundation(1).dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
     double _currentIndexPage=0.0;

    return Scaffold(
      backgroundColor: const Color(0xFF24272C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF24272C),
      ),
      body: Column(
        children: [
          Container(
            // color:Colors.yellow ,
            height: 320,
              child: PageView.builder(
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  }
              )
          ),
      DotsIndicator(
        dotsCount: 5,
        position: _currentIndexPage,
        decorator: DotsDecorator(
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin:const EdgeInsets.only(left:5,right:5,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:index.isEven?const Color(0xFF69c5df):const Color(0xFF9294cc),
        image:const DecorationImage(
          fit:BoxFit.cover,
          image:AssetImage('assets/images/og_image_mall_web.jpg',),
        ),
      ),
    );
  }
// Container(
//   height: 40,
//   width: size.width,
//   margin: const EdgeInsets.only(top: 10, left: 20),
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 260, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 20, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 250, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 0, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 250, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 0, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 250, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 0, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 250, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 0, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),
// Container(
//   child: Stack(
//     fit: StackFit.loose,
//     children: [
//       Container(
//         child: const Align(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             'Categories',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontFamily: 'Roboto',
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 250, top: 0),
//         child: Align(
//           alignment: Alignment.centerRight,
//           child: TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const SeeAll(),
//                 ),
//               );
//             },
//             child: const Text(
//               'See all',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 25,
//                 fontFamily: 'Roboto',
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
// Container(
//   height: 120,
//   margin: const EdgeInsets.only(top: 0, left: 10),
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       Categories('assets/images/pizza.jpg', 'Pizza'),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//       Categories(
//         'assets/images/pizza.jpg',
//         'Pizza',
//       ),
//     ],
//   ),
// ),

// onTap(){
//     Navigator.pushNamed(context,'SeeAll');
// };
}
//
