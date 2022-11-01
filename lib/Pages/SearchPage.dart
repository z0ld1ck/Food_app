// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:flutter/services(1).dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../Database/DB.dart';

//
// class DB extends StatefulWidget {
//   const DB({Key? key}) : super(key: key);
//
//   @override
//   State<DB> createState() => _DBState();
// }
//
// class _DBState extends State<DB> {
//   late DatabaseReference dbref;
//   String databasejson = "";
//
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     dbref = FirebaseDatabase.instance.ref();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // final controller = TextEditingController();
  final black = Colors.black;
  final yellow = Colors.yellow;
  final customAppBarColor = const Color(0xFF2C2C33);
  final white1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarColor: customAppBarColor,
      //   ),
      //   backgroundColor: customAppBarColor,
      // ),
      // body: Container(
      //   width: 500,
      //   height: 110,
      //   color: customAppBarColor,
      //   child: Padding(
      //     padding: const EdgeInsets.only(top:30.0,left:10,right:8,bottom:10),
      //     child: Container(
      //       width: 300,
      //       height: 50,
      //       decoration: BoxDecoration(
      //           borderRadius:BorderRadius.circular(10),
      //           border: Border.all(
      //         color: Colors.white,
      //         width: 2,
      //         style: BorderStyle.solid,
      //       )),
      //       // child: Padding(
      //         // padding: const EdgeInsets.only(top: 5),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             icon: Icon(
      //               FontAwesomeIcons.search,
      //               color: white1,
      //             ),
      //             // iconColor:Colors.white,
      //             border: InputBorder.none,
      //             hintText: 'Search',
      //             hintStyle: TextStyle(
      //               color: white1,
      //               fontSize: 24,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      body: Container(
        color:customAppBarColor,
        width: 500,
        height:120,
        child: Container(
          margin: const EdgeInsets.only(top:50, left:10, right:10,bottom:30),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            // boxShadow: const [
            //   BoxShadow(
            //     color: Colors.grey,
            //     offset: Offset(0, 10),
            //     blurRadius: 15,
            //     spreadRadius: 0,
            //   ),
            // ],
          ),
          height: 60,
          width: size.width,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child:TextField(
                    maxLines: 1,
                    autofocus: false,
                    style: const TextStyle(
                      color: Color(0xff107163),
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle:TextStyle(color:white1,fontSize:20)
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color:black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
