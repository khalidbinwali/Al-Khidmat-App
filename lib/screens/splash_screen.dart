import 'package:al_khidmat_app/navigation/routes_name.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushNamed(context, RouteName.loginScreen);
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/AlkhidmatLogo.png',
                width: 250,
                height: 250),
            //FlutterLogo(
            //size: 150,
            //),
            SizedBox(height: 100),
            Text('Al-Khidmat Karachi',
              style: TextStyle(color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
