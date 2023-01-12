import 'dart:html';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettt/controllers/auth_controller.dart';
import 'package:gettt/views/screens/auth/login_screen.dart';
import 'package:gettt/views/widgets/glitch.dart';
import 'package:gettt/views/widgets/text_input.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController _confirmPasswordController =
      new TextEditingController();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _setPasswordController = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              GlithEffect(
                child: const Text(
                  "Welcome to TikTok",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"),
                  radius: 65,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Icon(Icons.edit, size: 20, color: Colors.black)))
              ]),
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
                  controller: _setPasswordController,
                  myLabelText: "Password",
                  myIcon: Icons.lock,
                  toHide: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextInputField(
                  controller: _confirmPasswordController,
                  myLabelText: "Confirm Password",
                  myIcon: Icons.lock,
                  toHide: true,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextInputField(
                  controller: _usernameController,
                  myLabelText: "Username",
                  myIcon: Icons.person,
                ),
              ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Get.to(SignupScreen());
                },
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: Text("Sign Up"))
              ),SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    Get.to(LoginScreen(name:'Vk'));
                  },
                  child: Text("back"))
            ]),
          ),
        ),
      ),
    ));
  }
}
