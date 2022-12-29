import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class DB extends StatefulWidget {
  const DB({Key? key}) : super(key: key);

  @override
  State<DB> createState() => _DBState();
}

class _DBState extends State<DB> {
  late DatabaseReference _dbref;
  String databasejson = "";
  int countvalue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();

    _dbref.child('').child('key_counter').onValue.listen((event) {
      setState(() {
        countvalue = event.snapshot.value as int;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  createDB() {
    _dbref.child('Users').set({'key_counter': '0', 'createby': 'Alikhan'});
    _dbref.child('Order').set({'id': '1', 'numof': '0'});
  }

  dbOnce() {
    _dbref.once().then((DatabaseEvent databaseEvent) {
      setState(() {
        databasejson = databaseEvent.snapshot.value.toString();
      });
    });
  }

  updateValueInDb() {
    _dbref.child('Users').update({'createby': 'wewew', 'key_counter': '1'});
    _dbref.child('Order').update({'id': '2', 'numof': '1'});
  }

  deleteValueFromDb() {
    _dbref.child('').remove();
  }
}
