import 'package:chatapp/Models/rom_model.dart';
import 'package:chatapp/firebase/firebase_Auth/fire_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class firedata {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  final String myUid = FirebaseAuth.instance.currentUser!.uid;

  Future creatRoom(String email) async {
    QuerySnapshot userEmail = await firebaseFirestore
        .collection("users")
        .where('email', isEqualTo: email)
        .get();
    if (userEmail.docs.isNotEmpty) {
      String UuserId = userEmail.docs.first.id;
      List<String> members = [myUid, UuserId]..sort((a, b) => a.compareTo(b));
      QuerySnapshot roomexist = await firebaseFirestore
          .collection('rooms')
          .where('members', isEqualTo: members)
          .get();

      if (roomexist.docs.isEmpty) {
        RooModel rooModel = RooModel(
            id: members.toString(),
            lastMessage: "lastMessage",
            lastMessageTime: DateTime.now().toString(),
            createdAt: DateTime.now().toString(),
            members: members);
        firebaseFirestore
            .collection('rooms')
            .doc(members.toString())
            .set(rooModel.tojson());
      }
    }
    print('try again');
  }
}
