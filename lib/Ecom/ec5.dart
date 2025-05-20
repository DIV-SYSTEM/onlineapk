import 'package:flutter/material.dart';

class AM5 extends StatefulWidget { const AM5({super.key});

@override State<AM5> createState() => _AM5State(); }

class _AM5State extends State<AM5> { bool showPlatforms = false;

final List<Map<String, dynamic>> platforms = [ { 'icon': Icons.settings, 'title': 'AUTOSAR', 'description': 'Standardized automotive software architecture for ECU development.' }, { 'icon': Icons.android, 'title': 'Android Automotive', 'description': 'Open-source platform powering in-car infotainment systems.' }, { 'icon': Icons.memory, 'title': 'QNX', 'description': 'Reliable real-time OS for embedded automotive systems.' }, { 'icon': Icons.cloud, 'title': 'AWS IoT', 'description': 'Scalable cloud platform for connected vehicle solutions.' }, { 'icon': Icons.cloud_queue, 'title': 'Azure IoT', 'description': 'Microsoft’s cloud platform for vehicle data and management.' }, { 'icon': Icons.build, 'title': 'Custom Platform', 'description': 'Tailored platforms to meet specific automotive business needs.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        'Automotive Platforms We Support',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 12),
      const Text(
        'We have expertise across major automotive platforms and technologies, allowing us to implement the best solution for your specific requirements.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          setState(() {
            showPlatforms = !showPlatforms;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          'Check Our Platforms',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const SizedBox(height: 20),
      if (showPlatforms)
        Wrap(
          runSpacing: 16,
          spacing: 16,
          children: platforms.map((platform) {
            return Container(
              width: screenWidth < 600 ? screenWidth * 0.9 : 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(platform['icon'], size: 32, color: Colors.redAccent),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          platform['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          platform['description'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
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

} }