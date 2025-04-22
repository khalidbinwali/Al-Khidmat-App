import 'package:al_khidmat_app/screens/Screen_eight.dart';
import 'package:al_khidmat_app/screens/Screen_nine.dart';
import 'package:al_khidmat_app/screens/Screen_thirteen.dart';
import 'package:al_khidmat_app/screens/chat.dart';
import 'package:al_khidmat_app/screens/screenEleven.dart';
import 'package:al_khidmat_app/screens/screen_five.dart';
import 'package:al_khidmat_app/screens/screen_four.dart';
import 'package:al_khidmat_app/screens/screen_seven.dart';
import 'package:al_khidmat_app/screens/screen_six.dart';
import 'package:al_khidmat_app/screens/screen_ten.dart';
import 'package:al_khidmat_app/screens/screen_twelve.dart';
import 'package:al_khidmat_app/screens/screen_two.dart';
import 'package:al_khidmat_app/state_management/Main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  ScreenChat (),
      debugShowCheckedModeBanner: false,
    );
  }
}

