import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: const Text('Plant Parameters', style: TextStyle(fontSize: 22)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final containerWidth = (constraints.maxWidth - 20) / 2;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // First Column with constrained width
                  Column(
                    children: [
                      _buildTextField("Start Water Meter Reading", width: containerWidth),
                      _buildTextField("End Water Meter Reading", width: containerWidth),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Row 1
                  _buildFieldRow("Product TDS", "Plant Production"),
                  // Single Field
                  _buildTextField("Plant Rejection"),
                  // Row 2
                  _buildFieldRow("Feed Pressure", "H.P. Pressure"),
                  // Row 3
                  _buildFieldRow("U.V. light status", "Dosing Pump Setting"),
                  _buildTextField('Position of Bore Water'),

                  _buildTextField('Back Wash date',width: containerWidth),
                  const SizedBox(height: 16),

                  _buildFieldRow('16 Ltr.CAN(in hand', 'Cap 19 ltr'),
                  _buildFieldRow('Filter(in hand)', 'Anti-Scalent(in hand)'),
                  _buildTextField('ADM Cards',width: containerWidth),
                  const SizedBox(height: 16),

                  _buildFieldRow('Expense Type', "Amount"),
                  const SizedBox(height: 8),

                  // additional notes
               TextField(
              maxLines: 5,
              decoration: InputDecoration(
              hintText: 'Additional Notes',
              hintStyle: TextStyle(color: Color(0xFFADB5BD),fontSize: 14,) ,
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
                  SizedBox(height: 8,),
                  // Photo Upload (Mock)

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFEFEFEF))
                    ),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1 Photo attached", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF5B5B5B))),
                        Spacer(),
                        IconButton(
                          icon: const Icon(Icons.camera_alt, color: Colors.blue),
                          onPressed: () {}, // Handle photo upload
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),





                  // Submit Button
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
              );
            },
          ),
        ),
      ),
    );
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
}