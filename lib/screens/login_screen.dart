import 'package:al_khidmat_app/navigation/routes_name.dart';
import 'package:al_khidmat_app/screens/screen_two.dart';
import 'package:flutter/material.dart';

import '../state_management/Bottom_Bar.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Image.asset('assets/AlkhidmatLogo.png',
                      width: 150,
                      height: 150),
                ),
                SizedBox(height: 40),

                Text('Welcome back!', style: TextStyle(color: Color(0xFF0160AC))),
                SizedBox(height: 10),
                Text('Enter your credentials to continue', style: TextStyle(color: Colors.black45)),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: Color(0xFFF8F8F8),
                      prefixIcon: Icon(Icons.phone,color: Color(0xFFB1B1B1),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFDDDDDD),width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ) ,
                      labelText: 'Phone Number' ,labelStyle: TextStyle(color: Color(0xFFC7C7C7))),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF8F8F8),
                      prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xFFB1B1B1),),
                      suffixIcon: Icon(Icons.visibility_off_outlined,color: Color(0xFF0160AC),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFDDDDDD),width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ) ,
                      labelText: 'Phone Number' ,labelStyle: TextStyle(color: Color(0xFFC7C7C7))),
                ),
                SizedBox(height: 20),
                Text('Forgot Password?',style: TextStyle(color: Color(0xFF0160AC)),),
                SizedBox(height: 20),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RouteName.bottomBarScreen);
                  },
                  child: Center(
                    child: Container(
                      width: 343,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xFF0160AC),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text('Log in',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,))),
                    ),
                  ),
                ),

                SizedBox(height: 150,),
                 RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'By logging, you are agreeing with our ',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Use',
                          style: TextStyle(
                            color: Color(0xFF0160AC),
                          ),
                        ),
                        TextSpan(
                          text: ' and ',
                          style: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFF0160AC),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            )
        )
    );
  }
}
