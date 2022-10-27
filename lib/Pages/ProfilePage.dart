import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2C2C33),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final docUser =
                    FirebaseFirestore.instance
                        .collection('users')
                        .doc('myQqY0t5OqLdXSda9xF5');

                docUser.update({'name': 'loh'});
              },
              child: const Text('Update'),
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              onPressed: () {
                final docUser =
                    FirebaseFirestore.instance
                        .collection('users')
                        .doc('2KXuozZiz3hcNogB5vTw');


                docUser.delete();
              },
              child:const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
