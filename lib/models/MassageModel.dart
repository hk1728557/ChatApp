import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  String? messageid;
  String? sender;
  String? text;
  bool? seen;
  DateTime? createdon; // msg sending time

  MessageModel({
    this.messageid,
    this.sender,
    this.text,
    this.seen,
    this.createdon,
  });

  MessageModel.fromMap(Map<String, dynamic> map) {
    messageid = map['messageid'];
    sender = map['sender'];
    text = map['text'];
    seen = map['seen'];
    final timestamp = map['createdon'] as Timestamp?;
    createdon = timestamp?.toDate(); // Convert Timestamp to DateTime
  }

  Map<String, dynamic> toMap() {
    return {
      'messageid': messageid,
      'sender': sender,
      'text': text,
      'seen': seen,
      'createdon': createdon,
    };
  }
}
