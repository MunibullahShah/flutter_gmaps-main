import 'package:flutter_gmaps/models/propertyModel.dart';

class DealerModel {
  String name;
  String email;
  String contact;
  String profilePic;
  List<PropertyModel> properties;

  DealerModel(
      {this.name, this.email, this.contact, this.properties, this.profilePic});
}
