import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RelaxWidget extends StatelessWidget {
  const RelaxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildOptionCard("Reduce anxiety", Icons.spa, Colors.purple, "7 min"),
        _buildOptionCard(
            "Sleep sounds", Icons.bedtime, Colors.indigo, "15 min"),
      ],
    );
  }

  Widget _buildOptionCard(
      String title, IconData icon, Color color, String duration) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
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
              duration,
              style: GoogleFonts.urbanist(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
