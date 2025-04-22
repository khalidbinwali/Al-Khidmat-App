import 'package:al_khidmat_app/screens/Screen_thirteen.dart';
import 'package:al_khidmat_app/screens/screenEleven.dart';
import 'package:al_khidmat_app/screens/screen_twelve.dart';
import 'package:flutter/material.dart';
class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  int selectedIndex=1;
  final List<String> options=['Fault','Leave','Requisition'];
  final List<Widget> _ticketScreens=[
    const ScreenTwelve(),
    const ScreenEleven(),
    const ScreenThirteen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(),
        title: Text('Tickets',style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(options.length, (index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFF0160AC) : Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 30,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Text(
                    options[index],
                    style: TextStyle(
                      color: isSelected ? Colors.white : const Color(0xFF243465),
                    ),
                  ),
                ),
              );
            }),
          ),
          ),
          // Display the selected screen
          Expanded(child: _ticketScreens[selectedIndex]),
        ],
      ),
    );
  }
}