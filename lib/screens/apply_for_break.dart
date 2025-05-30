import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class applyForBreak extends StatefulWidget {
  const applyForBreak({super.key});

  @override
  State<applyForBreak> createState() => _applyForBreakState();
}

class _applyForBreakState extends State<applyForBreak> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController shiftIdController = TextEditingController();

  TimeOfDay? startTime;
  TimeOfDay? endTime;

  String? replacementOperator;
  final List<String> operators = ['Ali', 'Ahmed', 'Zara', 'Sara'];

  Duration? get duration {
    if (startTime != null && endTime != null) {
      final start = DateTime(2023, 1, 1, startTime!.hour, startTime!.minute);
      final end = DateTime(2023, 1, 1, endTime!.hour, endTime!.minute);
      return end.difference(start);
    }
    return null;
  }

  Future<void> pickTime(BuildContext context, bool isStart) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        if (isStart) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  String formatTime(TimeOfDay? time) {
    if (time == null) return '';
    final now = DateTime.now();
    final dt = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    return DateFormat.jm().format(dt);
  }

  String formatDuration(Duration? dur) {
    if (dur == null || dur.inMinutes < 0) return '0 mins';
    final mins = dur.inMinutes;
    return '$mins mins';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Apply for a break'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // First row: Name + Shift ID
            Row(
              children: [
                Expanded(
                  child: _buildTextField('Name', controller: nameController),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: _buildTextField(
                    'Shift ID / Shift Timing',
                    controller: shiftIdController,
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            // Second row: Start Time + End Time
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => pickTime(context, true),
                    child: AbsorbPointer(
                      child: _buildTextField(
                        'Start Time',
                        value: startTime != null ? formatTime(startTime) : null,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: GestureDetector(
                    onTap: () => pickTime(context, false),
                    child: AbsorbPointer(
                      child: _buildTextField(
                        'End Time',
                        value: endTime != null ? formatTime(endTime) : null,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            // Duration display
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Duration:',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  Text(
                    formatDuration(duration),
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            // Dropdown
            DropdownButtonFormField<String>(
              value: replacementOperator,
              decoration: InputDecoration(
                hintText: 'Replacement Operator Name',
                hintStyle: TextStyle(color: Color(0xFFADB5BD), fontSize: 14),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(
                      0xFFEFEFEF,
                    ), // 👈 Border color when not focused
                    width: 1,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(
                      0xFFEFEFEF,
                    ), // 👈 Border color when not focused
                    width: 1,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              items:
                  operators
                      .map((op) => DropdownMenuItem(value: op, child: Text(op)))
                      .toList(),
              onChanged: (value) {
                setState(() {
                  replacementOperator = value;
                });
              },
            ),
            SizedBox(height: 350),
            Center(
              child: SizedBox(
                width: 350,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0160AC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Submit for Approval",
                    style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
    String hint, {
    TextEditingController? controller,
    String? value,
  }) {
    return TextField(
      controller: controller,
      readOnly: value != null,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(
            color: Color(0xFFEFEFEF), // 👈 Border color when not focused
            width: 1,
          ),
        ),
        hintText: value ?? hint,
        hintStyle: TextStyle(color: Color(0xFFADB5BD), fontSize: 14),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      ),
    );
  }
}
