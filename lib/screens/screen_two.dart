import 'package:al_khidmat_app/screens/screen_three.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Gulistan e Jauhar ',
              style: TextStyle(fontSize: 23),
            ),
            subtitle: Text(
              'Supervisor Izaan Atif ',
              style: TextStyle(fontSize: 16, color: Color(0xFF535353)),
            ),
            leading: Image.asset(
              'assets/pin.png',
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            trailing: Image.asset(
              'assets/notification.png',
              width: 19,
              height: 20,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Mark your attendance',
              style: TextStyle(fontSize: 16, color: Color(0xFF535353)),
            ),
          ),
          SizedBox(height: 4),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ScreenThree())); // Ensure ScreenThree exists
            },
            child: Center(
              child: Container(
                width: 355,
                height: 43.06,
                decoration: BoxDecoration(
                    color: Color(0xFF0160AC),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text('Check In',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600))),
              ),
            ),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('QUICK ACCESS',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF5B5B5B),
                    fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 115,
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Attendance',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF5B5B5B))),
                            SizedBox(height: 1),
                            Text('20',
                                style: TextStyle(
                                    fontSize: 24, color: Color(0xFF243465))),
                            SizedBox(height: 1),
                            Text('Last Month ',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF5B5B5B))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: SizedBox(
                    height: 115,
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Daily Plant',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF5B5B5B))),
                            SizedBox(height: 10),
                            Text('Parameters',
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF5B5B5B))),
                            SizedBox(height: 3),
                            Text('Status: Done ',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF848A9C))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/Mask.png',
                              width: 24, height: 24),
                          SizedBox(width: 10),
                          Text('Plant Inventory',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF5B5B5B))),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Card(
                    color: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Image.asset('assets/plant.png',
                              width: 24, height: 24),
                          SizedBox(width: 10),
                          Text('Plant Sales',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF5B5B5B))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Forms',
                style: TextStyle(fontSize: 14, color: Color(0xFF243465))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 1,
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/submit.png', width: 24, height: 24),
                title: Text('Submit Fault Form',
                    style: TextStyle(fontSize: 14, color: Color(0xFF243465))),
                subtitle: Text('view more',
                    style: TextStyle(fontSize: 14, color: Color(0xFF848A9C))),
                trailing: Icon(Icons.navigate_next_sharp),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 1,
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/submit.png', width: 24, height: 24),
                title: Text('Submit Requisition Form',
                    style: TextStyle(fontSize: 14, color: Color(0xFF243465))),
                subtitle: Text('view more',
                    style: TextStyle(fontSize: 14, color: Color(0xFF848A9C))),
                trailing: Icon(Icons.navigate_next_sharp),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 1,
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/submit.png', width: 24, height: 24),
                title: Text('Apply For Leave',
                    style: TextStyle(fontSize: 14, color: Color(0xFF243465))),
                subtitle: Text('view more',
                    style: TextStyle(fontSize: 14, color: Color(0xFF848A9C))),
                trailing: Icon(Icons.navigate_next_sharp),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 1,
              color: Color(0xFFF0F0F0),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Extra Working Day',
                        style:
                        TextStyle(fontSize: 16, color: Color(0xFF243465))),
                    Image.asset('assets/plus.png', width: 22, height: 21)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 300),
        ],
      ),
    );
  }
}