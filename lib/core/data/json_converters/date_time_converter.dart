import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, int> {
  const DateTimeConverter();

  @override
  int toJson(DateTime date) => date.millisecondsSinceEpoch;

  @override
  DateTime fromJson(int milliseconds) =>
      DateTime.fromMillisecondsSinceEpoch(milliseconds);
}
