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

    _dbref.child('').child('key_counter').onValue.listen((event) {
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
            child: Center(
              child: Column(
                children: [
                  Text(
                    countvalue.toString() + ' databases -' + databasejson,
                    style: const TextStyle(fontSize: 24),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _createDB();
                    },
                    child: const Text('create db'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _dbOnce();
                    },
                    child: const Text('read DB'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _updateValueInDb();
                    },
                    child: const Text('update DB'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _deleteValueFromDb();
                    },
                    child: const Text('delete DB'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

  _createDB() {
    _dbref.child('Users').set({'key_counter': '0', 'createby': 'Alikhan'});
    _dbref.child('Order').set({'id': '1', 'numof': '0'});
  }

  _dbOnce() {
    _dbref.once().then((DatabaseEvent databaseEvent) {
      print('read once-' + databaseEvent.snapshot.value.toString());
      setState(() {
        databasejson = databaseEvent.snapshot.value.toString();
      });
    });
  }

  _updateValueInDb() {
    _dbref.child('Users').update({'createby': 'wewew', 'key_counter': '1'});
    _dbref.child('Order').update({'id': '2', 'numof': '1'});
  }

  _deleteValueFromDb() {
    _dbref.child('').remove();
  }
}
