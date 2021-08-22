import 'package:cloud_firestore/cloud_firestore.dart';


class FireStore_Helper {
  FireStore_Helper._();

  static FireStore_Helper FireStoreHelper = FireStore_Helper._();
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  List<String> studentList=[];

  Future<void> add(String table, map) {
    // Call the user's CollectionReference to add a new user
    return fireStore
        .collection(table)
        .add(map)
        .then((value) => print(" Added"))
        .catchError((error) => print("Failed to add : $error"));
  }

  Future<void> update(id, map, collection) {
    return fireStore
        .collection(collection)
        .doc(id)
        .update(map)
        .then((value) => print("User Updated"))
        .catchError((error) => print("Failed to update user: $error"));
  }

  Future<void> delete(id, collection) {
    return fireStore
        .collection(collection)
        .doc(id)
        .delete()
        .then((value) => print("User Deleted"))
        .catchError((error) => print("Failed to delete user: $error"));
  }



}
