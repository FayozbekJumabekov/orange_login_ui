import 'package:flutter/material.dart';
import 'package:orange_login_ui/pages/intro_page.dart';
import 'package:orange_login_ui/pages/sign_in_page.dart';
import 'package:orange_login_ui/pages/sign_up_page.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: IntroPage(),
      routes: {

        IntroPage.id:(context)=>IntroPage(),
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage()

      },

    );
  }
}
