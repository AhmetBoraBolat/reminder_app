import 'package:flutter/material.dart';

class ReminderBox extends StatelessWidget {
  final String reminderText;

  const ReminderBox({
    super.key,
    required this.reminderText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue[200],
        ),
        child: Text(reminderText),
      ),
    );
  }
}
