import 'package:flutter/material.dart';
import 'package:food_app/Components/ctl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Components/Category.dart';
import '../category_details/category_seeall_detail_page.dart';
import 'ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
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
              // Recede(context, 'assets/images/og_image_mall_web.jpg'),
              Container(
                // color:Colors.yellow ,
                height: 310,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 5,
              ),
              const Ctl(),
             ],
          ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ProfilePage()));
        },
        child: Image.asset(
          'assets/images/og_image_mall_web.jpg',
          fit: BoxFit.fitHeight, // Fixes border issues
          width: 380,
          height: 190,
        ),
      ),
    );
  }

}
//
