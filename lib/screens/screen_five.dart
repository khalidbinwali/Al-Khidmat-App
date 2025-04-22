import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('Apply for  Leave', style: TextStyle(fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Row 1
                  _buildFieldRow("Enter Name", "Enter Designation"),
                  // Row 2
                  _buildFieldRow("Enter Plant Name", "Enter Department"),
                  // Row 3
                  _buildFieldRow("Enter Working Hours", "Enter Applied for Leave"),

                  _buildFieldRow('Leave Ends', 'Leave Starts'),
                  _buildFieldRow('Total Leave Days', 'Reason for Leave'),
                  const SizedBox(height: 500),
                  Center(
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
                            child: const Text("Submit", style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF))),
                          ))),

                  const SizedBox(height: 30),
                ],
              )
    )
    ),
    );
            }
  }

  Widget _buildFieldRow(String firstHint, String secondHint) {
    return Row(
      children: [
        Expanded(child: _buildTextField(firstHint)),
        const SizedBox(width: 20),
        Expanded(child: _buildTextField(secondHint)),
      ],
    );
  }

  Widget _buildTextField(String label, {double? width, int maxLine = 1}) {
    return SizedBox(
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            maxLines: maxLine,
            decoration: InputDecoration(
              hintText: label,
              hintStyle: TextStyle(color: Color(0xFFADB5BD),fontSize: 12,) ,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: Color(0xFFEFEFEF), // 👈 Border color when not focused
                  width: 1,
                ),

              ),
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 12),
            ),
          ),
        ));
  }