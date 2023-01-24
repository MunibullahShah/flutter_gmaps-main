// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gmaps/constants.dart';
import 'package:flutter_gmaps/helper/firebaseMethods.dart';
import 'package:flutter_gmaps/screens/dealersScreen.dart';
import 'package:flutter_gmaps/screens/signup_screen.dart';

class SignIn extends StatefulWidget {
  SignIn();

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
  }

  bool _isloading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: const CircularProgressIndicator(),
          )
        : SafeArea(
            child: Scaffold(
              backgroundColor: primaryColor,
              body: _isloading
                  ? Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              colors: [
                            Color.fromRGBO(23, 21, 32, 1),
                            Colors.white,
                          ])),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/icon3.png"))),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              controller: emailController,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white),
                                hoverColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white,
                              controller: passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                focusColor: Colors.white,
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                                hoverColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                suffixIcon: Icon(
                                  Icons.password,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () async {
                              setState(() {
                                _isloading = true;
                              });
                              var result = await authMethods
                                  .signInWithEmail(emailController.text,
                                      passwordController.text, context)
                                  .catchError((e) {
                                print(e);
                              });
                              if (result != null) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DealersScreen()));
                              } else {
                                _isloading = !_isloading;
                                setState(() {});
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
                                    Text(
                                      "Sign In",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.login,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (builder) => SignUp()));
                              });
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(22, 173, 78, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          );
  }


  AuthMethods authMethods = AuthMethods();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}
