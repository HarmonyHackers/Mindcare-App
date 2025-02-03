import 'package:flutter/material.dart';

class CalmWidget extends StatelessWidget {
  const CalmWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF16213E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          Icon(Icons.self_improvement, color: Colors.orange, size: 40),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Calm",
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text("Evening meditation to relax.",
                  style: TextStyle(color: Colors.white)),
              SizedBox(height: 4),
              Text("5 Min", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
