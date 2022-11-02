import 'package:flutter/cupertino(1).dart';
import 'package:flutter/material.dart';

Widget Recede(String image) {
  return Row(
    children: [
      Container(
        margin:const EdgeInsets.only(left: 10,right:20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        height: 160,
        width:350,
        child: Image.asset(image),
      ),
    ],
  );
}
