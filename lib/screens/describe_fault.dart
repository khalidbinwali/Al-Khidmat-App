import 'package:flutter/material.dart';

class describeFault extends StatefulWidget {
  const describeFault({super.key});

  @override
  State<describeFault> createState() => _describeFaultState();
}

class _describeFaultState extends State<describeFault> {
  final Map<String, bool> faults = {
    'H.P. Pump Fault': true,
    'Feed Pump Fault': true,
    'Filling Pump Fault': true,
    'Boring Pump Fault': false,
    'U.V. Light Fault': false,
    'Dosing Pump Fault': false,
    'Boring empty or Less Water': false,
    'High TDS/Water Quality Issue': false,
    'Plumbing/Fitting/Membrane Leakages': false,
    'Storage Tank Leakages': false,
    'Control Panel Fault': false,
    'K.E. Fault': false,
    'Gauges Fault': false,
    'Pressure Switch Fault': false,
    'Filling/Rejection Valve Leaks': false,
    'Lighting & Others Fault': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Describe Fault'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ✅ Spread the list of CheckboxListTiles
            ...faults.entries.map((entry) {
              return CheckboxListTile(
                title: Text(
                  entry.key,
                  style: const TextStyle(fontSize: 14,color: Color(0xFF7B7B7B)),
                ),
                value: entry.value,
                onChanged: (bool? value) {
                  setState(() {
                    faults[entry.key] = value ?? false;
                  });
                },
                activeColor:Colors.white,
                checkColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),

                controlAffinity: ListTileControlAffinity.trailing,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              );
            }).toList(),

            const SizedBox(height: 16),

            // ✅ TextField for additional notes
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Additional Notes',
                hintStyle: TextStyle(
                  color: Color(0xFFADB5BD),
                  fontSize: 14,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(
                    color: Color(0xFFEFEFEF),
                    width: 1,
                  ),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),

            const SizedBox(height: 8),
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
          ],
        ),
      ),
    );
  }
}
