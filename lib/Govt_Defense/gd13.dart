import 'package:flutter/material.dart';

class AmTcSection extends StatelessWidget {
  const AmTcSection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> techCategories = const [
    {
      'icon': Icons.security,
      'title': 'Security Technologies',
      'techs': [
        'Zero Trust Architecture',
        'Multi-Level Security',
        'Cross-Domain Solutions',
        'PKI Infrastructure',
        'Secure Enclaves',
        'Threat Intelligence',
      ],
    },
    {
      'icon': Icons.cloud,
      'title': 'Cloud & Infrastructure',
      'techs': [
        'FedRAMP Cloud',
        'Private Government Cloud',
        'Hybrid Infrastructure',
        'Containerization',
        'Microservices',
        'Edge Computing',
      ],
    },
    {
      'icon': Icons.analytics,
      'title': 'Data & Analytics',
      'techs': [
        'Big Data Processing',
        'Predictive Analytics',
        'Machine Learning',
        'Geospatial Analysis',
        'Data Fusion',
        'Real-time Analytics',
      ],
    },
    {
      'icon': Icons.integration_instructions,
      'title': 'Integration & Interoperability',
      'techs': [
        'API Management',
        'Service Mesh',
        'Legacy System Integration',
        'Cross-Agency Data Sharing',
        'Secure Gateways',
        'Standardized Interfaces',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Technologies We Leverage',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'We employ cutting-edge technologies specifically suited for government and defense applications, ensuring security, compliance, and mission effectiveness.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ...techCategories.map((item) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
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
                      Icon(item['icon'], size: 28, color: Colors.blueGrey),
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
                  ...List<Widget>.from(item['techs'].map<Widget>((tech) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, size: 20, color: Colors.green), // New icon
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            tech,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ))),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
