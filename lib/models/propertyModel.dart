import 'package:cloud_firestore/cloud_firestore.dart';

class PropertyModel {
  int bathrooms;
  int bedrooms;
  String description;
  String locationTitle;
  GeoPoint geoPoint;
  String title;
  List<dynamic> propertyImages;

  PropertyModel(
      {this.bathrooms,
      this.bedrooms,
      this.description,
      this.locationTitle,
      this.geoPoint,
      this.title,
      this.propertyImages});
}
