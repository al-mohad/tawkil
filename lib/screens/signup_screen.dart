import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String id = 'signin';
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Text('Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}
