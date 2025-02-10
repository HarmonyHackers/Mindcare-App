import 'package:flutter/material.dart';

class FeelingTestWidget extends StatelessWidget {
  const FeelingTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Feeling struggle?",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            _buildAssessmentCard("Anxiety self-assessment", "Feeling anxious?",
                Colors.purpleAccent),
            const SizedBox(width: 10),
            _buildAssessmentCard(
                "Overall self-assessment", "Not sure why?", Colors.deepPurple),
          ],
        ),
      ],
    );
  }

  Widget _buildAssessmentCard(String title, String description, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(description, style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white24),
              child: const Text("Take assessment"),
            ),
          ],
        ),
      ),
    );
  }
}
