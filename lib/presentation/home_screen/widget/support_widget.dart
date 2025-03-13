import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF16213E),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(Icons.flag, color: Colors.green, size: 40),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Goal",
                      style: GoogleFonts.urbanist(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("Losing motivation?",
                      style: GoogleFonts.urbanist(color: Colors.white)),
                  const SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Set a goal"),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF16213E),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const Icon(Icons.support_agent, color: Colors.orange, size: 40),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Consultant",
                      style: GoogleFonts.urbanist(
                          color: Colors.orange, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("Feeling left-out?",
                      style: GoogleFonts.urbanist(color: Colors.white)),
                  const SizedBox(height: 4),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    child: const Text("Book a session"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
