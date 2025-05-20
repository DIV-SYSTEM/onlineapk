import 'package:flutter/material.dart';

class AmTcSection extends StatelessWidget {
  const AmTcSection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> techCategories = const [
    {
      'icon': Icons.school,
      'title': 'Learning Platforms',
      'techs': [
        'Learning Management Systems',
        'Virtual Classrooms',
        'Adaptive Learning',
        'Microlearning',
        'Mobile Learning',
        'Gamification'
      ]
    },
    {
      'icon': Icons.admin_panel_settings,
      'title': 'Administrative Systems',
      'techs': [
        'Student Information Systems',
        'Enrollment Management',
        'Scheduling Solutions',
        'Resource Planning',
        'Financial Aid Systems',
        'Alumni Management'
      ]
    },
    {
      'icon': Icons.analytics,
      'title': 'Data & Analytics',
      'techs': [
        'Learning Analytics',
        'Predictive Modeling',
        'Student Success Metrics',
        'Institutional Research',
        'Performance Dashboards',
        'Outcomes Assessment'
      ]
    },
    {
      'icon': Icons.security,
      'title': 'Integration & Security',
      'techs': [
        'Single Sign-On',
        'Data Integration',
        'API Management',
        'Identity Management',
        'Privacy Controls',
        'Compliance Frameworks'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Technologies We Leverage',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'We employ cutting-edge technologies specifically suited for educational applications, ensuring security, compliance, and pedagogical effectiveness.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ...techCategories.map((item) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(item['icon'], size: 28, color: Colors.black),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            item['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ...item['techs'].map<Widget>((tech) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle,
                              size: 22, color: Colors.green),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              tech,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
