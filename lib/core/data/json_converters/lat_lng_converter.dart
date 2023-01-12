import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

class LatLngConverter implements JsonConverter<LatLng, GeoPoint> {
  const LatLngConverter();

  @override
  GeoPoint toJson(LatLng latLng) => GeoPoint(latLng.latitude, latLng.longitude);

  @override
  LatLng fromJson(GeoPoint geoPoint) =>
      LatLng(geoPoint.latitude, geoPoint.longitude);
}
