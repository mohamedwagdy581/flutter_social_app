import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maintenance/modules/login/login_screen.dart';
import 'package:maintenance/shared/components/components.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(milliseconds: 1500),
            ()=> navigateAndFinish(context, LoginScreen())
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 60,
              child: Image(
                image: AssetImage(
                    'assets/images/logo.jpeg',
                ),
                fit: BoxFit.cover,
                height: 200.0,
                width: 200.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            Text(
              'Baruzik',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
