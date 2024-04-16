import 'package:chatapp/Models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class fireauth {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  static User user = auth.currentUser!;

  static Future createuser() async {
    UserModel userModel = UserModel(
        id: user.uid,
        name: user.displayName ?? "",
        image: "",
        createdat: DateTime.now().toString(),
        LasteActivated: "",
        online: false,
        about: "",
        catchtoken: "");
    firebaseFirestore.collection("users").doc(user.uid).set(userModel.tojson());
  }
}
