

import 'package:al_khidmat_app/navigation/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/extra_working_days.dart';
import '../screens/apply_for_break.dart';
import '../screens/Screen_thirteen.dart';
import '../screens/chat.dart';
import '../screens/login_screen.dart';
import '../screens/screenEleven.dart';
import '../screens/apply_leave.dart';
import '../screens/requisition_form.dart';
import '../screens/describe_fault.dart';
import '../screens/attendance_history.dart';
import '../screens/screen_twelve.dart';
import '../screens/splash_screen.dart';
import '../state_management/topBarScreen.dart';
import 'package:al_khidmat_app/screens/screen_two.dart';
import 'package:al_khidmat_app/screens/screen_three.dart';
import 'package:al_khidmat_app/screens/plant_parameter.dart';

import '../state_management/Bottom_Bar.dart';
class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){

      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (context)=>loginScreen());

      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context)=>ScreenTwo(onCheckInTap: () {  },));
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context)=>ScreenThree(onCheckOutTap: () {  },));

      case RouteName.plantParameter:
        return MaterialPageRoute(builder: (context)=>plantParameter());

      case RouteName.applyForLeave:
        return MaterialPageRoute(builder: (context)=>applyLeave());
      case RouteName.describeFault:
        return MaterialPageRoute(builder: (context)=>describeFault());
      case RouteName.requisitionForm:
        return MaterialPageRoute(builder: (context)=>requisitionForm());
      case RouteName.extraWorkingDays:
        return MaterialPageRoute(builder: (context)=>extraWorkingDays());

      case RouteName.applyForBreak:
        return MaterialPageRoute(builder: (context)=>applyForBreak());

      case RouteName.attendanceHistory:
        return MaterialPageRoute(builder: (context)=>attendanceHistory());

      case RouteName.screenEleven:
        return MaterialPageRoute(builder: (context)=>ScreenEleven());
      case RouteName.screenTwelve:
        return MaterialPageRoute(builder: (context)=>ScreenTwelve());

      case RouteName.screenThirteen:
        return MaterialPageRoute(builder: (context)=>ScreenThirteen());

      case RouteName.topBarScreen:
        return MaterialPageRoute(builder: (context)=>topBar());

      case RouteName.chatScreen:
        return MaterialPageRoute(builder: (context)=>ScreenChat());

      case RouteName.bottomBarScreen:
        return MaterialPageRoute(builder: (context)=>bottomBar());
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(child: Text('No Route Defined')),
          );
        });
    }
  }
}