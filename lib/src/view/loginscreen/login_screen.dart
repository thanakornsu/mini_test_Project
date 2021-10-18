import 'package:flutter/material.dart';
import 'package:qrcan/src/view/loginscreen/body/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE5E1),
      body: Body(),
    );
  }
}
