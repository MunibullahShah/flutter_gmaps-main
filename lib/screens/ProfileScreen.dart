import 'package:flutter/material.dart';
import 'package:flutter_gmaps/models/dealerModel.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatefulWidget {
  DealerModel dealer;

  ProfileScreen({@required this.dealer});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String nameText = "A. Lisa";
  String cityText = " NY, New York";
  List<String> urls = [
    "https://picsum.photos/200",
    "https://picsum.photos/205",
    "https://picsum.photos/210",
    "https://picsum.photos/220",
    "https://picsum.photos/100",
    "https://picsum.photos/240",
    "https://picsum.photos/255",
    "https://picsum.photos/260",
    "https://picsum.photos/270",
    "https://picsum.photos/180",
    "https://picsum.photos/290",
    "https://picsum.photos/295",
    "https://picsum.photos/101",
    "https://picsum.photos/222",
    "https://picsum.photos/103",
    "https://picsum.photos/204",
    "https://picsum.photos/206",
    "https://picsum.photos/212",
    "https://picsum.photos/120",
    "https://picsum.photos/121",
  ];

  @override
  void initState() {
    nameText = widget.dealer.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Stack(
            children: [
              Positioned(
                child: Container(),
              ),
              Positioned(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image:
                            NetworkImage("https://www.fillmurray.com/640/360"),
                        fit: BoxFit.fill),
                  ),
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.28 - 20,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color.fromRGBO(23, 21, 32, 1),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                      ),
                      Text(
                        nameText,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            cityText,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.065,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                final Uri launchUri = Uri(
                                  scheme: 'sms',
                                  path: "03120944035",
                                );
                                try {
                                  var bool = await launch(launchUri.toString());
                                } catch (e) {
                                  print(e);
                                }
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(22, 173, 78, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(0.4),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.065,
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(23, 21, 32, 1),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.message_rounded,
                                          color: Color.fromRGBO(22, 173, 78, 1),
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "Message",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(22, 173, 78, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.035,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                final Uri launchUri = Uri(
                                  scheme: 'tel',
                                  path: "03120944035",
                                );
                                try {
                                  var bool = await launch(launchUri.toString());
                                } catch (e) {
                                  print(e);
                                }
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.065,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(22, 173, 78, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.call,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Call",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.065,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(42, 44, 60, 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text("253", style: numberTextStyle),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Property",
                                              style: headingTextStyle)
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text("15", style: numberTextStyle),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Awards",
                                              style: headingTextStyle)
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            "270",
                                            style: numberTextStyle,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Apartment",
                                              style: headingTextStyle)
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromRGBO(23, 21, 32, 1),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            const Text(
                                              "Portfolios",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                            Expanded(child: Container()),
                                            IconButton(
                                              onPressed: () {
                                                setState(() {});
                                              },
                                              icon: Container(
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey,
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(1.0),
                                                  child: Icon(
                                                    Icons.list,
                                                    color: Color.fromRGBO(
                                                        23, 21, 32, 1),
                                                  ),
                                                ),
                                              ),
                                              color: Colors.grey,
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: GridView.builder(
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                childAspectRatio: 432 / 304,
                                              ),
                                              itemCount: 20,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: index % 2 == 0
                                                      ? const EdgeInsets
                                                              .fromLTRB(
                                                          60, 0, 30, 20)
                                                      : const EdgeInsets
                                                              .fromLTRB(
                                                          30, 0, 60, 20),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              urls[index]),
                                                          fit: BoxFit.fill),
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(15),
                                                      ),
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height * 0.28 -
                        (MediaQuery.of(context).size.height * 0.1102) * 0.5) -
                    20,
                left: MediaQuery.of(context).size.width / 2 -
                    MediaQuery.of(context).size.width * 0.2083 * 0.5,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  height: MediaQuery.of(context).size.height * 0.1102,
                  width: MediaQuery.of(context).size.width * 0.2083,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6.83,
                      width: MediaQuery.of(context).size.width / 4.11,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.placecage.com/200/200")),
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 30,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle numberTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);

const TextStyle headingTextStyle = TextStyle(
    color: Colors.white,
    //fontWeight: FontWeight.bold,
    fontSize: 16);
