import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late DatabaseReference _dbref;
  String databasejson = "";
  int countvalue = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbref = FirebaseDatabase.instance.ref();

    _dbref.child('myCountKey').child('key_counter').onValue.listen((event) {
      print('counter update' + event.snapshot.value.toString());
      setState(() {
        countvalue = event.snapshot.value as int;
      });
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: const Color(0xFF2C2C33),
      title: const Text('CRUD'),
    ),
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(countvalue.toString() + ' database -' + databasejson),
            TextButton(
                onPressed: () {
                  _createDB();
                },
                child: const Text('Create DB')),
            TextButton(
                onPressed: () {
                  _dbOnce();
                },
                child: const Text('Read DB')),
            TextButton(
                onPressed: () {
                  _readOnceChild();
                },
                child: const Text('read once child')),
            TextButton(
                onPressed: () {
                  _updateValueInDb();
                },
                child: const Text('update DB')),
            TextButton(
                onPressed: () {
                  _deleteValueFromDb();
                },
                child: const Text('delete DB')),
          ],
        ),
      ),
    ),
  );

  _createDB() {
    _dbref.child('myCountKey').set({'key_counter': '0', 'createby': 'Alikhan'});
  }

  _dbOnce() {
    _dbref.once().then((DatabaseEvent databaseEvent) {
      print('read once-' + databaseEvent.snapshot.value.toString());
      setState(() {
        databasejson = databaseEvent.snapshot.value.toString();
      });
    });
  }

  _readOnceChild() {
    _dbref
        .child('Admin profile')
        .child('website2')
        .once()
        .then((DatabaseEvent databaseEvent) {
      print('read once-' + databaseEvent.snapshot.value.toString());
      setState(() {
        databasejson = databaseEvent.snapshot.value.toString();
      });
    });
  }

  _updateValueInDb() {
    _dbref
        .child('Admin profile')
        .update({'website2': 'https://github.com/z0ld1ck1'});
  }

  _deleteValueFromDb() {
    _dbref.child('').remove();
  }
}
