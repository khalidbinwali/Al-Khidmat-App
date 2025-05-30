import 'package:al_khidmat_app/navigation/routes.dart';
import 'package:al_khidmat_app/navigation/routes_name.dart';
import 'package:al_khidmat_app/screens/extra_working_days.dart';
import 'package:al_khidmat_app/screens/apply_for_break.dart';
import 'package:al_khidmat_app/screens/Screen_thirteen.dart';
import 'package:al_khidmat_app/screens/chat.dart';
import 'package:al_khidmat_app/screens/screenEleven.dart';
import 'package:al_khidmat_app/screens/apply_leave.dart';
import 'package:al_khidmat_app/screens/plant_parameter.dart';
import 'package:al_khidmat_app/screens/requisition_form.dart';
import 'package:al_khidmat_app/screens/describe_fault.dart';
import 'package:al_khidmat_app/screens/attendance_history.dart';
import 'package:al_khidmat_app/screens/screen_twelve.dart';
import 'package:al_khidmat_app/screens/screen_two.dart';
import 'package:al_khidmat_app/state_management/Bottom_Bar.dart';
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
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

