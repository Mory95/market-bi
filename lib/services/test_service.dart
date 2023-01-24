// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';
//Import firestore database
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:market_bi/models/test_model.dart';

CollectionReference users = FirebaseFirestore.instance.collection('users');

TestModel? use;
TestModel test = const TestModel(name: '');
List<TestModel> listUsers = [];
// TestModel test;
GetUser() {
  listUsers = [];

  FirebaseFirestore.instance
      .collection('users')
      .get()
      .then((QuerySnapshot querySnapshot) {
    querySnapshot.docs.forEach((doc) {
      // use = TestModel(name: doc["name"]);
      listUsers.add(TestModel(name: doc["name"]));
    });
    // print(use?.name);
    for (var element in listUsers) {
      print(element.name);
    }
  });
}

TestModel? ReadData() {
  // FirebaseFirestore.instance
  //     .collection('users')
  //     .get()
  //     .then((QuerySnapshot querySnapshot) {
  //   querySnapshot.docs.forEach((doc) {
  //     doc.get('name');
  //     // use.name = 'tes';
  //     TestModel(name: doc['name']);
  //     // use.id;
  //     // use.name = doc["name"];
  //     // print(use.name);
  //   });
  // });

  return use;
}
