import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final PageController _pageController=PageController();
  int _currentindex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Al khidmat'),
          ),
          body: PageView(
            controller: _pageController,
            children: [
              Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
              Center(child: Text('Favorites Screen', style: TextStyle(fontSize: 24))),
              Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
              Center(child: Text('MOre Screen', style: TextStyle(fontSize: 24))),
            ],
            onPageChanged: (index){
              setState(() {
                _currentindex = index;
              });
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: _currentindex,
            onTap: (index){
              setState(() {
                _currentindex = index;
              });
              _pageController.jumpToPage(index);
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline_outlined),label: "Chats"),
              BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined),label: "Tickets"),
              BottomNavigationBarItem(icon: Icon(Icons.more_horiz),label: "More",),
            ],
          ),
        ));
  }
}
