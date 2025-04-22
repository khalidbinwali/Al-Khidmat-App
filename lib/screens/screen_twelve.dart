import 'package:flutter/material.dart';
class ScreenTwelve extends StatefulWidget {
  const ScreenTwelve({super.key});

  @override
  State<ScreenTwelve> createState() => _ScreenTwelveState();
}

class _ScreenTwelveState extends State<ScreenTwelve> {
  final List<Map<String, String>> tickets = [
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'K.E Issues',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'H.P.Pump Fault...',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Close',
      'title': 'Feed Pump Fault..',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'Feed Pump Fault..',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'Feed Pump Fault..',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'Boring Pump Fau..',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Close',
      'title': 'K.E Issues',
      'date': '09/10/2024'
    },
    {
      'ticket No': '#0999',
      'status': 'Open',
      'title': 'H.P.Pump Fault...',
      'date': '09/10/2024'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 14, color: Color(0xFFADB5BD)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.25),
                      ),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),

          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: tickets.length,
                (context, index) {
              final ticket = tickets[index];
              return Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black12),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${ticket['ticket No']} | ${ticket['status']}',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF000000).withOpacity(0.5),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '${ticket['title']}',
                              style: TextStyle(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${ticket['date']}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF000000).withOpacity(0.5),
                            ),
                          ),
                          SizedBox(height: 2),
                          Icon(Icons.arrow_forward_ios_sharp),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 20),
        ),
        SliverToBoxAdapter(
          child:  Center(
              child: SizedBox(
                  width: 350,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0160AC),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text("Add Fault Ticket", style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF))),
                  ))),
        ),
      ],
    );
  }
}