import 'package:flutter/material.dart';

class AM2Section extends StatelessWidget { const AM2Section({super.key});

@override Widget build(BuildContext context) { final width = MediaQuery.of(context).size.width; final isSmall = width < 500;

return Container(
  color: const Color(0xFFF5F5F5),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Comprehensive Automotive IT Solutions",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isSmall ? 22 : 28,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        "In today's rapidly evolving automotive landscape, technology is the driving force behind innovation, efficiency, and competitive advantage. Our specialized automotive IT solutions help manufacturers, suppliers, dealerships, and fleet operators navigate the digital transformation journey.",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isSmall ? 14 : 16,
          color: Colors.black54,
        ),
      ),
      const SizedBox(height: 30),
      SizedBox(
        height: 220,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            _InfoCard(
              icon: Icons.settings_suggest,
              title: "End-to-End Solutions",
              description: "Integrated IT solutions that cover the entire automotive value chain."
            ),
            _InfoCard(
              icon: Icons.directions_car_filled,
              title: "Automotive Expertise",
              description: "Years of experience building reliable systems for the auto industry."
            ),
            _InfoCard(
              icon: Icons.auto_graph,
              title: "Future-Ready",
              description: "Innovative technologies to future-proof your automotive business."
            ),
          ],
        ),
      )
    ],
  ),
);

} }

class _InfoCard extends StatelessWidget { final IconData icon; final String title; final String description;

const _InfoCard({ required this.icon, required this.title, required this.description, });

@override Widget build(BuildContext context) { final width = MediaQuery.of(context).size.width; final isSmall = width < 500;

return Container(
  width: isSmall ? 260 : 300,
  margin: const EdgeInsets.symmetric(horizontal: 10),
  padding: const EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        offset: const Offset(0, 6),
      ),
    ],
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 48, color: Colors.redAccent),
      const SizedBox(height: 14),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isSmall ? 16 : 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isSmall ? 13 : 14,
          color: Colors.black54,
        ),
      ),
    ],
  ),
);

} }