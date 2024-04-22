import 'package:flutter/foundation.dart';

class RooModel {
  final String id;
  final String lastMessage;
  final String lastMessageTime;
  final String createdAt;
  final List members;

  RooModel(
      {required this.id,
      required this.lastMessage,
      required this.lastMessageTime,
      required this.createdAt,
      required this.members});
  factory RooModel.fromjson(Map<String, dynamic> jsondata) {
    return RooModel(
        id: jsondata['id'] ?? '',
        lastMessage: jsondata['lastMessage'] ?? '',
        lastMessageTime: jsondata['lastMessagetime'] ?? '',
        createdAt: jsondata['createdAt'] ?? "",
        members: ['members'] ?? []);
  }

  Map<String, dynamic> tojson() {
    return {
      'id': id,
      "lastMessage": lastMessage,
      'lastMessagetime': lastMessageTime,
      'createdAt': createdAt,
      'members': createdAt
    };
  }
}
