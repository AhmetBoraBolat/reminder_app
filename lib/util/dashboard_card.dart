import 'package:flutter/material.dart';

class DashCard extends StatelessWidget {
  final String taskName;
  final String taskTime;
  final bool taskCompleted;
  const DashCard({
    super.key,
    required this.taskName,
    required this.taskTime,
    required this.taskCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        title: Text(
          taskName, // yeni reminder eklerken elle girilecek kısım
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '$taskTime - ${taskCompleted ? 'completed' : 'skipped'}',
        ), // completed seçeneği tick olacak diğer screen de
        leading: const Icon(Icons
            .phonelink_lock), // Eklenen hatırlatma ne ile alakalıysa o icon
        trailing: const Icon(Icons.chevron_right), // sabit ikon
      ),
    );
  }
}
