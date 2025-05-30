import 'package:flutter/material.dart';
class requisitionForm extends StatefulWidget {
  const requisitionForm({super.key});

  @override
  State<requisitionForm> createState() => _requisitionFormState();
}

class _requisitionFormState extends State<requisitionForm> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('Requisition Form', style: TextStyle(fontSize: 22)),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Row 1
                  _buildFieldRow("Filters", "Chemical/Antiscalant"),
                  // Row 2
                  _buildFieldRow("Cap 19 Ltr", "Can 16 Ltr"),
                  // Row 3
                  _buildTextField('ADM Cards.(Only for 3 Plants)'),
                  SizedBox(height: 380),
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
