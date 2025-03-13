import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommend for you",
          style: GoogleFonts.urbanist(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildRecommendationCard(
                  "Focus", "Podcast: 10 MIN", Icons.center_focus_strong),
              _buildRecommendationCard(
                  "Affirmation", "Podcast: 50 MIN", Icons.self_improvement),
              _buildRecommendationCard("Happiness", "Podcast: 20 MIN",
                  Icons.sentiment_satisfied_alt),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendationCard(
      String title, String subtitle, IconData icon) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 40),
          SizedBox(height: 10),
          Text(
            title,
            style: GoogleFonts.urbanist(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            subtitle,
            style: GoogleFonts.urbanist(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
