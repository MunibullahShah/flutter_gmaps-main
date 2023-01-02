// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_gmaps/helper/database.dart';
import 'package:flutter_gmaps/models/dealerModel.dart';
import 'package:flutter_gmaps/models/propertyModel.dart';
import 'package:flutter_gmaps/screens/Practice.dart';
import 'package:flutter_gmaps/screens/aboutus.dart';
import 'package:flutter_gmaps/screens/signin_screen111.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gmaps/constants.dart';
import 'package:flutter_gmaps/screens/ProfileScreen.dart';

class DealersScreen extends StatefulWidget {
  const DealersScreen({Key key}) : super(key: key);

  @override
  _DealersScreenState createState() => _DealersScreenState();
}

class _DealersScreenState extends State<DealersScreen> {
  TextEditingController searchController = TextEditingController();

  DatabaseMethods _db = DatabaseMethods();

  List<DealerModel> dealers = [];

  @override
  void initState() {
    getDealers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(
            child: Text("Builders"),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => Practicee()));
                },
                child: Icon(Icons.info),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => SignIn()));
                },
                child: Icon(Icons.logout),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black26,
              ),
              margin: EdgeInsets.fromLTRB(10, 30, 10, 15),
              child: TextFormField(
                controller: searchController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  focusColor: Colors.grey,
                  hoverColor: Color(0xff25283a),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: dealers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => ProfileScreen(
                                        dealer: dealers[index],
                                      )));
                            },
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image:
                                      NetworkImage(dealers[index].profilePic),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            title: Text(
                              dealers[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              dealers[index].email,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            trailing: Container(
                              width: 90,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        final Uri launchUri = Uri(
                                          scheme: 'sms',
                                          path: dealers[index].contact,
                                        );
                                        try {
                                          var bool = await launch(
                                              launchUri.toString());
                                        } catch (e) {
                                          print(e);
                                        }
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.chat,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        callTo(index);
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.call_outlined,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width - 10,
                              height: 120,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: dealers[index].properties.length,
                                  itemBuilder: (BuildContext context, int ind) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (builder) => Practice(
                                                      dealer: dealers[index],
                                                    )));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        width: 100,
                                        height: 170,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(16.0),
                                          ),
                                          image: DecorationImage(
                                              image: NetworkImage(dealers[index]
                                                  .properties[ind]
                                                  .propertyImages[0]),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    );
                                  })),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> smsTo() async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: "03120944035",
    );
    try {
      var bool = await launch(launchUri.toString());
    } catch (e) {
      print(e);
    }
  }

  Future<void> callTo(int index) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: dealers[index].contact,
    );
    try {
      var bool = await launch(launchUri.toString());
    } catch (e) {
      print(e);
    }
  }

  getDealers() async {
    var docs = await _db.getDealers();
    docs.forEach((element) {
      List<PropertyModel> properties = [];
      element.data()['properties'].forEach((propertyElement) {
        properties.add(PropertyModel(
          bathrooms: propertyElement['bathrooms'],
          bedrooms: propertyElement['bedrooms'],
          description: propertyElement['description'],
          locationTitle: propertyElement['location title'],
          geoPoint: propertyElement['location'],
          propertyImages: propertyElement['propertyImage'],
          title: propertyElement['title'],
        ));
      });
      dealers.add(DealerModel(
        name: element.data()['name'],
        email: element.data()['email'],
        contact: element.data()['contact'],
        profilePic: element.data()['profilePic'],
        properties: properties,
      ));
    });

    setState(() {});

    // Map<String, dynamic> uploadProperty = {
    //   "bathrooms": dealers[0].properties[0].bathrooms,
    //   'bedrooms': properties[0].bedrooms,
    //   'description': properties[0].description,
    //   'location title': properties[0].locationTitle,
    //   'location': properties[0].geoPoint,
    //   'propertyImage': properties[0].propertyImages,
    //   'title': properties[0].title,
    // };
    //
    // List<Map<String, dynamic>> propertyMapList = [
    //   uploadProperty,
    //   uploadProperty,
    //   uploadProperty
    // ];
    //
    // Map<String, dynamic> uploadDoc = {
    //   'properties': propertyMapList,
    //   "name": dealers[0].name,
    //   'contact': dealers[0].contact,
    //   'email': dealers[0].email,
    //   "profilePic": dealers[0].profilePic
    // };

    // _db.uploadDealersData(uploadDoc);
  }
}
