import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoodTrackerWidget extends StatelessWidget {
  const MoodTrackerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF35365f),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mood tracker",
                  style: GoogleFonts.urbanist(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "How are you feeling\ntoday?",
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Text("Increase awareness by tracking\nyour moods.",
                    style: GoogleFonts.urbanist(color: Colors.grey)),
              ],
            ),
          ),
          Image.asset(
            "assets/images/mood_tracker_person.png",
            height: 120,
            width: 130,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
