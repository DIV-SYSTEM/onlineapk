import 'package:flutter/material.dart';

class Am7 extends StatefulWidget {
  const Am7({super.key});

  @override
  State<Am7> createState() => _Am7State();
}

class _Am7State extends State<Am7> {
  bool showMethods = false;

  final List<Map<String, String>> methods = [
    {
      'no': '01',
      'icon': 'search',
      'title': 'Discovery & Analysis',
      'description':
      'We begin by understanding your business goals, target audience, and current e-commerce capabilities. We analyze your market, competitors, and identify opportunities for improvement.'
    },
    {
      'no': '02',
      'icon': 'insights',
      'title': 'Strategy & Planning',
      'description':
      'Based on our findings, we develop a comprehensive e-commerce strategy that aligns with your business objectives. We create detailed project plans, timelines, and resource allocations.'
    },
    {
      'no': '03',
      'icon': 'design_services',
      'title': 'Design & Prototyping',
      'description':
      'Our designers create intuitive, conversion-focused user interfaces and experiences. We develop interactive prototypes to visualize the solution before development begins.'
    },
    {
      'no': '04',
      'icon': 'integration_instructions',
      'title': 'Development & Integration',
      'description':
      'Our development team brings the designs to life, building robust e-commerce functionality and integrating with necessary systems and services.'
    },
    {
      'no': '05',
      'icon': 'rule_folder',
      'title': 'Testing & Quality Assurance',
      'description':
      'We rigorously test all aspects of your e-commerce solution to ensure it works flawlessly across devices, browsers, and user scenarios.'
    },
    {
      'no': '06',
      'icon': 'rocket_launch',
      'title': 'Deployment & Launch',
      'description':
      'We handle the deployment process, ensuring your e-commerce solution launches smoothly and securely on your chosen hosting environment.'
    },
    {
      'no': '07',
      'icon': 'support_agent',
      'title': 'Ongoing Support & Optimization',
      'description':
      'Our relationship continues after launch with ongoing support, maintenance, and performance optimization services to ensure your e-commerce success.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() => showMethods = !showMethods);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              ),
              child: const Text(
                'Our Methods of Development',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24),
          if (showMethods)
            ...methods.map(
                  (item) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['no']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      _getIcon(item['icon']!),
                      size: 28,
                      color: Colors.indigoAccent,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'search':
        return Icons.search;
      case 'insights':
        return Icons.insights;
      case 'design_services':
        return Icons.design_services;
      case 'integration_instructions':
        return Icons.integration_instructions;
      case 'rule_folder':
        return Icons.rule_folder;
      case 'rocket_launch':
        return Icons.rocket_launch;
      case 'support_agent':
        return Icons.support_agent;
      default:
        return Icons.device_hub;
    }
  }
}
