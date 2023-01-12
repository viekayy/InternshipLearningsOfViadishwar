import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettt/views/screens/auth/Myst.dart';
import 'package:gettt/views/screens/auth/signup_screen.dart';
import 'package:gettt/views/widgets/glitch.dart';
import 'package:gettt/views/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
  String name;

  LoginScreen({Key? key, required this.name}) : super(key: key);

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Screen' + this.name),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GlithEffect(
                      child: const Text(
                        "TikTok Clone",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: TextInputField(
                        controller: _emailController,
                        myLabelText: "Email",
                        myIcon: Icons.email,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: TextInputField(
                        controller: _passwordController,
                        myLabelText: "Password",
                        myIcon: Icons.lock,
                        toHide: true,
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed('./Myst');
                          // Navigator.push(
                          //     context, MaterialPageRoute(builder: (context) => MySt()));
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: Text("Login"))),
                    SizedBox(height: 10),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 46, 137, 248),
                        ),
                        onPressed: () {
                          // Get.to(SignupScreen());
                          Get.toNamed('./SignUp');
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 46, vertical: 10),
                            child: Text("Sign Up")))
                  ]),
            ),
          ),
        ));
  }
}
