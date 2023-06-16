import 'package:cloud_firestore/cloud_firestore.dart';

class ChatRoomModel {
  String? chatroomid;
  Map<String, dynamic>? participants;
  String? lastMessage;
  List<dynamic>? users;
  DateTime? createdon;

  ChatRoomModel(
      {this.chatroomid,
      this.participants,
      this.lastMessage,
      this.users,
      this.createdon});

  ChatRoomModel.fromMap(Map<String, dynamic> map) {
    chatroomid = map["chatroomid"];
    participants = map["participants"];
    lastMessage = map["lastMessage"];
    users = map["users"];
    // final timestamp = map['createdon'] as Timestamp?;
    // createdon = timestamp?.toDate();
    createdon = map["createdon"].toDate();
  }

  Map<String, dynamic> toMap() {
    return {
      "chatroomid": chatroomid,
      "participants": participants,
      "lastMessage": lastMessage,
      "users": users,
      "createdon": createdon
    };
  }
}
