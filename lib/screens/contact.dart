import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class abc extends StatelessWidget {
  const abc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _Launched;
    String phoneNumber = "";
    String _url = 'http://www.zameen.com';
    String _launchMailUrl = 'http://www.gmail.com';

    @override
    Future<void> _launchInBrowser(String url) async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    Future<void> _launchInMail(String MailUrl) async {
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

    final Number = '+923094412127';

    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Stack(
                // overflow: Overflow.visible,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: new NetworkImage(
                            "https://previews.123rf.com/images/sdecoret/sdecoret1712/sdecoret171200794/91520064-hand-drawn-contacts-and-emails-sketch-on-grey-background.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Text(
                          "Get In Touch",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.5),
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Stack(
                      children: [
                        Container(
                            child: Column(
                              children: [
                                Text(
                                  "\nTimings",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30.0),
                                  child: Text(
                                    "Open Time\t 9.00 AM\nOffice Timings\t\t 2.30PM to 12.00AM\n Closing Time 12.00 AM \n\n Holidays: Saturday, Sunday",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: TextButton(
                                        onPressed: () =>
                                            {_launchInBrowser(_url)},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Icon(
                                                  Icons.open_in_browser,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Visit Website",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: TextButton(
                                        onPressed: () =>
                                            {_launchInMail(_launchMailUrl)},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Icon(
                                                  Icons.mail,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Message Us",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                      width: 150,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: TextButton(
                                        onPressed: () =>
                                            {launch('tel://$Number')},
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 17.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Icon(
                                                  Icons.phone,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                "Call Us",
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
                            height: MediaQuery.of(context).size.height / 1.5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: primaryColor,
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
