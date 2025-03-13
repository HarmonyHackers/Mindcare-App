import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalmWidget extends StatelessWidget {
  const CalmWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF35365f),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Calm",
                style: GoogleFonts.urbanist(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text("Evening meditation\nto relax.",
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
              SizedBox(height: 4),
              Text(
                "5 Min",
                style: GoogleFonts.urbanist(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            "assets/images/calm_stones.png",
            height: 100,
            width: 120,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
