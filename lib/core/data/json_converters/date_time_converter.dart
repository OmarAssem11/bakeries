import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, Timestamp> {
  const DateTimeConverter();

  @override
  Timestamp toJson(DateTime dateTime) => Timestamp.fromDate(dateTime);

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();
}
