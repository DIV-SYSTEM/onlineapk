import 'package:flutter/material.dart';

class AM2Section extends StatelessWidget {
  const AM2Section({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 500;

    return Container(
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Comprehensive Government & Defense IT Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 22 : 30,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF1A1A1A),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "In today's complex security landscape, government and defense organizations require specialized technology solutions that meet stringent security requirements while enabling mission success.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.grey[700],
              height: 1.6,
            ),
          ),
          const SizedBox(height: 40),

          const _InfoCard(
            icon: Icons.security,
            title: "Security-First Design",
            description:
            "Solutions built with security as a foundational element, not an afterthought.",
          ),
          const SizedBox(height: 24),
          const _InfoCard(
            icon: Icons.verified_user,
            title: "Compliance Expertise",
            description:
            "Deep understanding of government standards and regulatory requirements.",
          ),
          const SizedBox(height: 24),
          const _InfoCard(
            icon: Icons.shield,
            title: "Mission Resilience",
            description:
            "Reliable systems designed to operate in challenging and contested environments.",
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
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.redAccent),
          const SizedBox(height: 18),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 18 : 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.grey[700],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
