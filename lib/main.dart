import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gmaps/helper/local_storage.dart';
import 'package:flutter_gmaps/screens/signin_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

Future getDeviceInfo() async {
  try {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String token = await messaging.getToken();
    print("FCM token >>>>>>>>>> $token");
    LocalStorageService().setToken(token);
  } catch (e) {
    print(e);
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SignIn(),
    );
  }
}

initFirebase() async {
  try {
    await Firebase.initializeApp().whenComplete(() {
      print("Completed");
    });
  } catch (e) {
    print(e);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling a background message: ${message.messageId}");
  NotificationHandler.handleNotification(message.data);
}

class NotificationHandler {
  static handleNotification(Map<String, dynamic> notification) {
    switch (int.parse(notification["notificationId"])) {
      case 4:
      //Navigator.push(currentContext!,Transitions(page: Promo()));
    }
  }
}
