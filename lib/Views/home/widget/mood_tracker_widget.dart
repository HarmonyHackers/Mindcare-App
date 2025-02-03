import 'package:flutter/material.dart';

class MoodTrackerWidget extends StatelessWidget {
  const MoodTrackerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.mood, color: Colors.amber, size: 40),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mood tracker",
                    style: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text("How are you feeling today?",
                    style: TextStyle(color: Colors.white)),
                SizedBox(height: 4),
                Text("Increase awareness by tracking your moods.",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
