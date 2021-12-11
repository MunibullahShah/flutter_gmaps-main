import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  getUserByUserName(String username) async {
    return await FirebaseFirestore.instance
        .collection('users')
        .where('userName', isEqualTo: username)
        .get();
  }

  uploadUserInfo(userMap) {
    FirebaseFirestore.instance.collection('users').add(userMap).catchError((e) {
      print("Error $e");
    });
  }

  getDealers() async {
    var result = await FirebaseFirestore.instance
        .collection('dealers')
        .get()
        .catchError((e) {
      print(e);
    });
    return result.docs;
  }
}
