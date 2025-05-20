import 'package:flutter/material.dart';

class Cloud3 extends StatelessWidget {
  const Cloud3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      color: const Color(0xFFF2F2F2), // Light grey background
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          const Text(
            'Why Choose Our Cloud Services',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Description
          const Text(
            'Our cloud solutions are designed to provide tangible benefits to your business, from improved performance to enhanced security and cost savings.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Info Cards
          Column(
            children: [
              infoCard(
                title: 'Proven Track Record',
                description:
                    'We have assisted companies in a variety of industries in updating their IT systems with adaptable, safe cloud solutions.',
                icon: Icons.attach_money,
                bgColor: Colors.lightBlue.shade100,
              ),
              infoCard(
                title: 'Certified Platform Experts',
                description:
                    'Our team includes certified professionals with deep knowledge of AWS, Azure, and Google Cloud.',
                icon: Icons.verified,
                bgColor: Colors.lightBlue.shade100,
              ),
              infoCard(
                title: 'End-to-End Support',
                description:
                    'We provide full lifecycle support—from planning and deployment to management and optimization.',
                icon: Icons.support_agent,
                bgColor: Colors.lightBlue.shade100,
              ),
              infoCard(
                title: 'Personalized & Scalable Solutions',
                description:
                    'We tailor our services to meet the specific needs and growth trajectory of your business.',
                icon: Icons.settings,
                bgColor: Colors.lightBlue.shade100,
              ),
              infoCard(
                title: 'Always-On Availability',
                description:
                    'With proactive monitoring and automated recovery, we ensure maximum uptime.',
                icon: Icons.access_time,
                bgColor: Colors.lightBlue.shade100,
              ),
              infoCard(
                title: 'Local Speed, Global Performance',
                description:
                    'We leverage CDNs and geo-located servers for fast access, wherever your users are.',
                icon: Icons.public,
                bgColor: Colors.lightBlue.shade100,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget infoCard({
    required String title,
    required String description,
    required IconData icon,
    required Color bgColor,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: bgColor.withOpacity(0.4),
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(icon, color: Colors.black87),
          ),
          const SizedBox(height: 10),

          // Title
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 6),

          // Description
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}