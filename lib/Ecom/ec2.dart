import 'package:flutter/material.dart';

class AM2Section extends StatelessWidget {
  const AM2Section({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 500;

    return Container(
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Comprehensive E-commerce IT Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 22 : 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "In today's competitive digital marketplace, your e-commerce platform needs to be more than just a website. It needs to be a powerful sales engine that delivers exceptional customer experiences, integrates seamlessly with your business systems, and scales with your growth.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 30),

          /// Cards aligned vertically now
          Column(
            children: const [
              _InfoCard(
                icon: Icons.settings_suggest,
                title: "End-to-End Solutions",
                description: "From strategy and design to development, integration, and ongoing optimization",
              ),
              SizedBox(height: 20),
              _InfoCard(
                icon: Icons.groups,
                title: "Expert Team",
                description: "Specialized e-commerce developers, designers, and strategists with proven experience",
              ),
              SizedBox(height: 20),
              _InfoCard(
                icon: Icons.trending_up,
                title: "Results-Driven",
                description: "Focus on measurable outcomes like conversion rates, performance, and ROI",
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
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 50, color: Colors.redAccent),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 18 : 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 15,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
