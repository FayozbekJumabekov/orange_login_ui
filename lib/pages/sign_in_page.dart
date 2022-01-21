import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static final String id   = "sign_in_page";

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Stack(
        children: [

          Column(
            children: [
              Text("Your Logo")

            ],

          )
        ],

      )
    );
  }
}
