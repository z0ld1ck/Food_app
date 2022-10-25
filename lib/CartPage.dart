import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield_new.dart';
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
              Navigator.pop(context);
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
}
