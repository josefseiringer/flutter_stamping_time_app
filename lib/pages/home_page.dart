
import 'package:flutter/material.dart';
import '../constants.dart';

class MyHomePage extends StatelessWidget {
  static const namedRoute = '/home-page';
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Here is a Home-Page Template',style: kMyTextStyle ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
