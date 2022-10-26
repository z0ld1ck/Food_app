import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
import 'package:food_app/Database/DB.dart';
import 'package:food_app/SearchPage.dart';
import 'package:intl/intl.dart';

class CartPage extends StatelessWidget {
  final controllerName = TextEditingController();
  final controllerAge = TextEditingController();
  final controllerDate = TextEditingController();

  final format = DateFormat("yyyy-MM-dd");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:const Color(0xFF2C2C33),
        title: const Text('Add User'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          TextField(
            controller: controllerName,
            decoration: decoration('Name'),
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            controller:controllerAge,
            decoration: decoration('Age'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 24,
          ),
          DateTimeField(
            controller: controllerDate,
            decoration: decoration('Birthday'),
            format: DateFormat('yyyy-MM-dd'),
            onShowPicker: (context, currentValue) => showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
              initialDate: currentValue ?? DateTime.now(),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
            child: const Text('Create'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage()),
              );
              final user=User(
                name:controllerName.text,
                age:int.parse(controllerAge.text),
                birthday:DateTime.parse(controllerDate.text), id: '',
              );

              createUser(user);


              // Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  InputDecoration decoration(String label) => InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      );
  Future createUser(User user) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    user.id=docUser.id;

    final json = user.toJson();
    await docUser.set(json);

    await docUser.set(json);
  }

}
