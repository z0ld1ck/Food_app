import 'package:flutter/material.dart';

Widget Categories(String image, String name) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    width: 90,
    height: 100,
    decoration: BoxDecoration(
      // color: const Color(0xff28475a),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Image.asset(image),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          // margin: const EdgeInsets.only(top: 10),
          // padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: const Color(0xffd9fffa).withOpacity(.07),
          ),
        ),
      ],
    ),
  );
}
