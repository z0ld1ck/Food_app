import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class User {
  late String id;
  late String name;
  late int age;
  late DateTime birthday;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.birthday,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'age': age,
    'birthday': birthday,
  };


  static User fromJson(Map<String,dynamic> json)=>User(
    id:json['id'],
    name:json['name'],
    age:json['age'],
    birthday:(json['birthday'] as Timestamp).toDate(),
  );
}



Future createUser({required String name}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();

  final user = User(
    id: docUser.id,
    name:name,
    age: 19,
    birthday: DateTime(2003, 6, 26),
  );
  final json = user.toJson();
  // final json = {
  //   'name':name,
  //   'age':21,
  //   'birthday':DateTime(2001,7,28),
  // };

  await docUser.set(json);
}
Stream<List<User>> readUsers() =>
    FirebaseFirestore.instance
        .collection('users')
        .snapshots()
        .map((snapshot) =>
        snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

Widget buildUser(User user) =>
    ListTile(
      leading: CircleAvatar(child: Text('${user.age}'),),
      title: Text(user.name),
      subtitle: Text(user.birthday.toIso8601String()),
    );
