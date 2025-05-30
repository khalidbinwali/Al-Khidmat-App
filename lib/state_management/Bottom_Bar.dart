import 'package:flutter/material.dart';
import '../screens/chat.dart';
import '../screens/screen_three.dart';
import '../screens/screen_two.dart';
import 'topBarScreen.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({super.key});

  @override
  State<bottomBar> createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int _currentIndex = 0;
  bool showScreenThree = false;

  Widget _getCurrentScreen() {
    if (_currentIndex == 0 && showScreenThree) {
      return ScreenThree(
        onCheckOutTap: () {
          setState(() {
            showScreenThree = false;
          });
        },
      );
    } else if (_currentIndex == 0) {
      return ScreenTwo(
        onCheckInTap: () {
          setState(() {
            showScreenThree = true;
          });
        },
      );
    } else if (_currentIndex == 1) {
      return const ScreenChat();
    } else if (_currentIndex == 2) {
      return const topBar();
    } else {
      return const Center(child: Text("More"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getCurrentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            showScreenThree = false; // reset to ScreenTwo when returning to Home
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
                'assets/Vector.png',
              color: _currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
               'assets/chat.png',
              color: _currentIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
             'assets/ticket.png',
              color: _currentIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
              color: _currentIndex == 3 ? Colors.blue : Colors.grey,
            ),
            label: "More",
          ),
        ],
      ),
    );
  }
}
