import 'package:flutter/material.dart';

class Cloud4 extends StatelessWidget {
  const Cloud4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Heading
          const Text(
            'Healthcare Case Studies',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Explore how our solutions have helped healthcare organizations overcome challenges, enhance patient care, and achieve operational excellence.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Cards
          Column(
            children: [
              successCard(
                imageUrl: 'https://via.placeholder.com/400x200',
                domain: 'Healthcare',
                title: 'Regional Health System EHR Optimization',
                description:
                    'Implemented comprehensive EHR optimization for a 12-hospital regional health system, enhancing clinical workflows, reducing documentation time, and improving care coordination. The solution included custom clinical templates, streamlined order sets, and integrated decision support tools, resulting in a 42% reduction in documentation time and 35% improvement in clinician satisfaction scores.',
              ),
              successCard(
                imageUrl: 'https://via.placeholder.com/400x200',
                domain: 'Healthcare',
                title: 'Telehealth Platform Implementation',
                description:
                    'Developed and deployed an enterprise telehealth platform for a large healthcare network, enabling virtual care delivery across multiple specialties. The solution included secure video consultations, remote monitoring integration, and EHR connectivity, resulting in 68% increase in patient access, 24% reduction in no-show rates, and 4.2M(USD) annual savings in operational costs.',
              ),
              successCard(
                imageUrl: 'https://via.placeholder.com/400x200',
                domain: 'Healthcare',
                title: 'Healthcare Analytics Platform',
                description:
                    'Implemented an advanced healthcare analytics platform for a major academic medical center, integrating clinical, operational, and financial data to drive improvements. The solution provided real-time dashboards, predictive models for patient deterioration, and population health insights, resulting in 15% reduction in readmissions, 22% improvement in resource utilization, and enhanced quality metrics across service lines.',
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget successCard({
    required String imageUrl,
    required String domain,
    required String title,
    required String description,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),

          // Domain Tag
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              domain,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
// Title
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Description
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 10),

          // Read More
          TextButton(
            onPressed: () {},
            child: const Text(
              'Read More',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}