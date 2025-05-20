import 'package:flutter/material.dart';

class AM5 extends StatefulWidget {
  const AM5({super.key});

  @override
  State<AM5> createState() => _AM5State();
}

class _AM5State extends State<AM5> {
  bool showPlatforms = false;

  final List<Map<String, dynamic>> platforms = [
    {
      'icon': Icons.cloud,
      'title': 'FedRAMP Cloud',
      'description': 'Deploy secure solutions on FedRAMP-authorized cloud platforms.',
    },
    {
      'icon': Icons.settings,
      'title': 'DoD Systems',
      'description': 'Integrate with Department of Defense networks and systems.',
    },
    {
      'icon': Icons.memory,
      'title': 'Intelligence Platforms',
      'description': 'Connect with intelligence community systems and frameworks.',
    },
    {
      'icon': Icons.cloud_queue,
      'title': 'Public Sector ERP',
      'description': 'Implement and enhance government resource planning systems.',
    },
    {
      'icon': Icons.build,
      'title': 'GIS Platforms',
      'description': 'Leverage geospatial information systems for government applications.',
    },
    {
      'icon': Icons.android,
      'title': 'Custom Platforms',
      'description': 'Develop bespoke platforms tailored to specific agency requirements.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xFFF9F9F9), // Light background
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
            'We have extensive experience integrating with and developing for a wide range of government and defense platforms, ensuring seamless interoperability and compliance with platform-specific requirements.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () {
              setState(() {
                showPlatforms = !showPlatforms;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            ),
            child: const Text(
              'Check Our Platforms',
              style: TextStyle(fontSize: 16 , color: Colors.white),
            ),
          ),
          const SizedBox(height: 28),
          if (showPlatforms)
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
