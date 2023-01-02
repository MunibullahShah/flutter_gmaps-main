import 'package:flutter/material.dart';
import 'package:flutter_gmaps/models/dealerModel.dart';
import 'package:flutter_gmaps/screens/MapScreen.dart';

class Practice extends StatelessWidget {
  DealerModel dealer;

  Practice({this.dealer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 145, left: 20),
                          child: Text(
                            "\$2500",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150.0, left: 2),
                          child: Text(
                            '/ per 10 square ft.',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 130),
                          child: Container(
                            child: GestureDetector(
                              onTap: () {
                                print("Pressed");
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (builder) => MapScreen(
                                          geoPoint:
                                              dealer.properties[0].geoPoint,
                                        )));
                              },
                              child: Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                            ),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 1.5,
                  width: MediaQuery.of(context).size.width - 0.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: new NetworkImage(
                              dealer.properties[0].propertyImages[0]),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 380,
                  child: Container(
                    height: 700,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black87,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 20),
                              child: Text(
                                dealer.properties[0].title,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 180.0, top: 35),
                              child: Container(
                                child: Icon(
                                  Icons.save_rounded,
                                  color: Colors.white,
                                ),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 14, top: 0),
                              child: Icon(
                                Icons.room,
                                color: Colors.white,
                                size: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                dealer.properties[0].locationTitle,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Row(
                            children: [
                              Column(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white70),
                                    child: Icon(
                                      Icons.bed_rounded,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, left: 10),
                                  child: Text(
                                    "${dealer.properties[0].bedrooms} Bedrooms",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                )
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(left: 60.0),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white70),
                                      child: Icon(
                                        Icons.bed_rounded,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "${dealer.properties[0].bathrooms} Bathrooms",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white70),
                                      child: Icon(
                                        Icons.bed_rounded,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      "Belcony",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 7),
                              child: Text(
                                dealer.properties[0].description,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0, right: 5),
                          child: Container(
                            height: 130,
                            width: 600,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black87),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, top: 17),
                                      child: ClipOval(
                                        child: Image.network(
                                          dealer.profilePic,
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, top: 10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Text(
                                              dealer.name,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Text(
                                            "Property Owner",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 140.0,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8.0, top: 5),
                                        child: Container(
                                            height: 45,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.black54),
                                            child: TextButton(
                                              onPressed: () => {},
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Get Schedule",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20.0,
                                      ),
                                      child: Container(
                                          width: 110,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.green),
                                          child: TextButton(
                                            onPressed: () => {},
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.phone,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    "Call",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
