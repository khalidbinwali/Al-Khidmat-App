import 'package:flutter/material.dart';

class ScreenTen extends StatelessWidget {
  final List<Map<String, String>> attendenceData = List.generate(
    11,
        (index) => {
      'date': '11/Mar',
      'checkIn': '09:25am',
      'checkout': '06:25pm',
      'workingHr': '08h 00m',
    },
  );

  ScreenTen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Attendance History'), leading: BackButton()),
      body:
      Column(
        children: [
          SizedBox(height: 5,),
          Container(
            color: Color(0xFFF5F1F6),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/cup.png', width: 24, height: 24),
                    const SizedBox(width: 8),
                    Text(
                      'Break Time From 02:00 PM to 03:00 PM',
                      style: TextStyle(fontSize: 14, color: Color(0xFF243465)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/calender.png', width: 24, height: 24),
                    const SizedBox(width: 8),
                    Text(
                      'January 2024',
                      style: TextStyle(fontSize: 14, color: Color(0xFF243465)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              children: [
                _headerCell('Date'),
                _headerCell('Check In'),
                _headerCell('Check Out'),
                _headerCell('Working Hr'),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, __) => Divider(height: 1),
              itemCount: attendenceData.length,
              itemBuilder: (context, index) {
                final data = attendenceData[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      _dataCell(data['date']!),
                      _dataCell(data['checkIn']!),
                      _dataCell(data['checkout']!),
                      _dataCell(data['workingHr']!),

                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _headerCell(String title) =>
    Expanded(child: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)));

Widget _dataCell(String value) =>
    Expanded(child: Text(value, style: TextStyle(fontSize: 14)));
