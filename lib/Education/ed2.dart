import 'package:flutter/material.dart';

class AM2Section extends StatelessWidget {
  const AM2Section({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 500;

    return Container(
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Comprehensive Education IT Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 22 : 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 1.2, // Added letter spacing for modern look
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "In today's fast-evolving academic landscape, your education platform needs to be more than just a system; it must be a strong, scalable, and intelligent learning ecosystem. Our solutions enhance digital learning experiences, streamline administration, and improve student engagement and outcomes.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.black54,
              height: 1.5, // Increased line height for better readability
            ),
          ),
          const SizedBox(height: 40),

          // Changed ListView to a Column to stack the cards vertically
          Column(
            children: const [
              _InfoCard(
                  icon: Icons.settings_suggest,
                  title: "End-to-End Solutions",
                  description: "From digital strategy and UX design to platform development, integration, and continuous support."
              ),
              SizedBox(height: 20), // Added spacing between cards
              _InfoCard(
                  icon: Icons.directions_car_filled,
                  title: "Automotive Expertise",
                  description: "Experienced education technologists, developers, and learning designers with domain-specific expertise."
              ),
              SizedBox(height: 20), // Added spacing between cards
              _InfoCard(
                  icon: Icons.auto_graph,
                  title: "Future-Ready",
                  description: "Focused on improving learning outcomes, operational efficiency, and student satisfaction."
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 500;

    return Container(
      width: isSmall ? width * 0.9 : 320, // Adjust width for responsiveness
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.blueAccent), // Changed to blueAccent for consistency
          const SizedBox(height: 14),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 18 : 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.black54,
              height: 1.5, // Better readability with increased line height
            ),
          ),
        ],
      ),
    );
  }
}
