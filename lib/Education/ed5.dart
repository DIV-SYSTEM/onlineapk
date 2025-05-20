import 'package:flutter/material.dart';

class AM5 extends StatelessWidget {
  const AM5({super.key});

  final List<Map<String, dynamic>> platforms = const [
    {
      'icon': Icons.school, // Canvas
      'title': 'Canvas',
      'description': 'Integrate with Canvas LMS for enhanced functionality.',
    },
    {
      'icon': Icons.laptop_chromebook, // Blackboard
      'title': 'Blackboard',
      'description': 'Connect with Blackboard Learn and Collaborate.',
    },
    {
      'icon': Icons.menu_book, // Moodle
      'title': 'Moodle',
      'description': 'Extend and enhance Moodle-based learning environments.',
    },
    {
      'icon': Icons.analytics, // PowerSchool
      'title': 'PowerSchool',
      'description': 'Integrate with PowerSchool SIS and analytics.',
    },
    {
      'icon': Icons.class_, // Google Classroom
      'title': 'Google Classroom',
      'description': 'Enhance Google Classroom with additional capabilities.',
    },
    {
      'icon': Icons.settings, // Custom Systems
      'title': 'Custom Systems',
      'description': 'Develop for proprietary educational platforms.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xFFF9F9F9),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Platforms We Support',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'We have extensive experience integrating with and developing for a wide range of educational platforms, ensuring seamless interoperability and compliance with platform-specific requirements.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 28),
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: platforms.map((platform) {
              return Container(
                width: screenWidth < 600 ? screenWidth * 0.9 : 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                      spreadRadius: 2,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      platform['icon'],
                      size: 32,
                      color: Colors.redAccent,
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            platform['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            platform['description'],
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
