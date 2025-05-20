import 'package:flutter/material.dart';

class AM2Section extends StatelessWidget {
  const AM2Section({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 600;

    return Container(
      color: const Color(0xFFF9FAFB),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "One-stop shop IT Solutions for Banking and Finance",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 22 : 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            "The financial world of today is dynamic. Strong, safe, and intelligent technology is essential for financial institutions to stay ahead of the competition, adhere to regulations, and provide excellent customer service.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.black54,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 36),

          // Vertical Cards
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _InfoCard(
                icon: Icons.shield_outlined,
                title: "Robust Security",
                description: "We employ cutting-edge security measures to protect your financial information and transactions.",
              ),
              SizedBox(height: 24),
              _InfoCard(
                icon: Icons.rule_folder_outlined,
                title: "Observe the Guidelines",
                description: "Our tools are designed to comply with regulations such as Basel III, PSD2, GDPR, and others.",
              ),
              SizedBox(height: 24),
              _InfoCard(
                icon: Icons.memory_outlined,
                title: "Contemporary Technology",
                description: "We employ the latest technology to enhance client satisfaction and streamline operations.",
              ),
            ],
          )
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
    final isSmall = MediaQuery.of(context).size.width < 600;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.redAccent),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 16 : 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 13 : 14,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
