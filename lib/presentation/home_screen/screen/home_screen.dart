import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/calm_widget.dart';
import '../widget/feeling_test_widget.dart';
import '../widget/mood_tracker_widget.dart';
import '../widget/recommend_widget.dart';
import '../widget/relax_widget.dart';
import '../widget/support_widget.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String getFormattedDate() {
    final DateTime now = DateTime.now();
    return DateFormat('MMM dd').format(now);
  }

  @override
  Widget build(BuildContext context) {
    final String formattedDate = getFormattedDate();

    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 60,
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                formattedDate,
                style: GoogleFonts.urbanist(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Good Evening,\nAnish Hazra",
              style: GoogleFonts.urbanist(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            CalmWidget(),
            SizedBox(height: 20),
            Text(
              "Choose your way to relax",
              style: GoogleFonts.urbanist(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            RelaxWidget(),
            SizedBox(height: 30),
            MoodTrackerWidget(),
            SizedBox(height: 30),
            FeelingTestWidget(),
            SizedBox(height: 30),
            RecommendWidget(),
            SizedBox(height: 30),
            SupportWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1A1A2E),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Today'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Goals'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
