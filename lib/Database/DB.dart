// import 'package:firebase_database/firebase_database.dart';
//
// class DB{
//   late DatabaseReference _dbref;
//   String databasejson = "";
//   int countvalue = 0;
//
//   createDB() {
//     _dbref.child('Users').set({'key_counter': '0', 'createby': 'Alikhan'});
//     _dbref.child('Order').set({'id': '1', 'numof': '0'});
//   }
//
//   _dbOnce() {
//     _dbref.once().then((DatabaseEvent databaseEvent) {
//       print('read once-' + databaseEvent.snapshot.value.toString());
//       setState(() {
//         databasejson = databaseEvent.snapshot.value.toString();
//       });
//     });
//   }
//
//   _updateValueInDb() {
//     _dbref.child('Users').update({'createby': 'wewew', 'key_counter': '1'});
//     _dbref.child('Order').update({'id': '2', 'numof': '1'});
//   }
//
//   _deleteValueFromDb() {
//     _dbref.child('').remove();
//   }
//
// }


// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/material.dart';
//
// class DB extends StatefulWidget {
//   const DB({Key? key}) : super(key: key);
//
//   @override
//   State<DB> createState() => _DBState();
// }
//
// class _DBState extends State<DB> {
//
//   late DatabaseReference _dbref;
//   String databasejson = "";
//   int countvalue = 0;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _dbref = FirebaseDatabase.instance.ref();
//
//     _dbref.child('').child('key_counter').onValue.listen((event) {
//       setState(() {
//         countvalue = event.snapshot.value as int;
//       });
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
//
//   _createDB() {
//     _dbref.child('Users').set({'key_counter': '0', 'createby': 'Alikhan'});
//     _dbref.child('Order').set({'id': '1', 'numof': '0'});
//   }
//
//   _dbOnce() {
//     _dbref.once().then((DatabaseEvent databaseEvent) {
//       setState(() {
//         databasejson = databaseEvent.snapshot.value.toString();
//       });
//     });
//   }
//
//   _updateValueInDb() {
//     _dbref.child('Users').update({'createby': 'wewew', 'key_counter': '1'});
//     _dbref.child('Order').update({'id': '2', 'numof': '1'});
//   }
//
//   _deleteValueFromDb() {
//     _dbref.child('').remove();
//   }
//
// }
