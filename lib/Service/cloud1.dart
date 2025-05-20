import 'package:flutter/material.dart';

class Cloud1 extends StatelessWidget {
  const Cloud1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Heading with red "Cloud Services"
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Enterprise-Grade ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: 'Cloud Services',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                TextSpan(
                  text: ' For Modern Businesses',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Subtitle
          const Text(
            'Secure, scalable, and reliable cloud solutions tailored to your business needs. From hosting to security, we\'ve got you covered.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {
              // Add navigation or functionality here
            },
            child: const Text(
              'Schedule a Cloud Consultation',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 40),

          // Grid of services
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              serviceBox('Cloud Hosting',
                  'Consistent, high-performance cloud hosting with 99.9% uptime, built to scale with your business and boost application speed.'),
              serviceBox('Cloud Security',
                  'Comprehensive security measures including firewalls, encryption, and threat detection to protect your data.'),
              serviceBox('Cloud Migration',
                  'Seamlessly move your existing infrastructure to the cloud with minimal downtime and zero data loss.'),
              serviceBox('Cloud Consulting',
                  'Expert guidance on selecting, deploying, and managing the best cloud strategy for your business.'),
            ],
          ),
        ],
      ),
    );
  }

  Widget serviceBox(String title, String description) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 8,
offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
