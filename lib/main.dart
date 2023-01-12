import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gettt/constants.dart';
import 'package:gettt/controllers/auth_controller.dart';
import 'package:gettt/views/product_screen.dart';
import 'package:gettt/views/screens/auth/Myst.dart';
import 'package:gettt/views/screens/auth/login_screen.dart';
import 'package:gettt/views/screens/auth/signup_screen.dart';

void main() async{
  //firebase
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value){
  //   Get.put(AuthController());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tik Tok Clone',
      defaultTransition: Transition.circularReveal,
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: SignupScreen(),
      getPages:[
        GetPage(name: '/', page: ()=>LoginScreen(name:'Vk')),
        GetPage(name: '/SignUp', page: ()=>SignupScreen()),
        GetPage(name: '/Myst', page: ()=>MySt()),
        
      ]
    );
  }
}
