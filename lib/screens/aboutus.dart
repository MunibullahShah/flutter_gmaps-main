import 'package:flutter/material.dart';
import 'package:flutter_gmaps/screens/contact.dart';

class Practicee extends StatelessWidget {
  const Practicee({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff123456),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: 450,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new NetworkImage(
                            "https://media.istockphoto.com/photos/trust-in-our-business-picture-id627909282?k=20&m=627909282&s=612x612&w=0&h=tjCxE3iXV7ygTL8UiZNm3ZlWYKnc8txLscyrD47LO3g="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 200),
                        child: Text(
                          "\"We are on a mission to clear the complexity of people investing in property\"",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      height: 450,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 360),
                    child: Stack(
                      children: [
                        Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text(
                                    "\nWORLDS OF SOBHA\n\n"
                                    "SOBHA projects signify the start of a new era\n   An era where quality meets consistency,technology meets aesthetics and passion meets perfection.\nMr. PNC Menon, Founder & Chairman a thought\n leader and a pillar of society, encourages each\n employee to be a specialist in his/her own field.\nToday, more than 3,500 motivated Sobhaites \npractice the group’s strong belief \n- Passion At Work",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: TextButton(
                                        onPressed: () => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => abc()),
                                          ),
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                "Contact Us",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            height: 350,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xff123456),
                              borderRadius: BorderRadius.circular(40),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
