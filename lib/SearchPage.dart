import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: TextField(
            controller: controller,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  final name = controller.text;

                  createUser(name: name);
                },
                icon: const FaIcon(FontAwesomeIcons.plus)),
          ],
        ),
    // body:StreamBuilder<List<User>>(
    //   stream: readUsers(),
    //   builder:(context,snapshot){
    //     if(snapshot.hasData){
    //       final users=snapshot.data!;
    //
    //       return ListView(children:users.map(buildUser).toList());
    //     }
    //   }),
      );

  Stream<List<User>> readUsers()=>FirebaseFirestore.instance
      .collection('users')
      .snapshots()
      .map((snapshot) =>
          snapshot.docs.map((doc) =>User.fromJson(doc.data())).toList());

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
}

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
