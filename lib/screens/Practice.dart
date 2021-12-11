import 'package:flutter/material.dart';
import 'package:flutter_gmaps/screens/MapScreen.dart';

class Practice extends StatelessWidget {
  const Practice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          SingleChildScrollView(
            child: Stack(
              overflow: Overflow.visible,
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
                                    builder: (builder) => MapScreen()));
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
                  height: 245,
                  width: MediaQuery.of(context).size.width - 0.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: new NetworkImage(
                              "https://images.unsplash.com/photo-1599809275671-b5942cabc7a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 222,
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
                                "Artificial Apartment",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 35),
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
                                "NY. New York",
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
                                    "4 Bedrooms",
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
                                      "2 Bathrooms",
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
                                      "4 Bedrooms",
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
                                "Description is the pattern of the naritive development\n"
                                "that drive to make the viva and the extreme peak on \nunderstanding",
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
                                          "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
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
                                              "Johnson Baker",
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
