import 'package:flutter/material.dart';

class Am4 extends StatefulWidget { const Am4({super.key});

@override State<Am4> createState() => _Am4State(); }

class _Am4State extends State<Am4> { int? selectedIndex;

final List<Map<String, dynamic>> solutions = [
  {
    'title': 'Secure Communication Systems',
    'icon': Icons.radio, // Approximating JSX icon
    'description': 'Develop robust, encrypted communication systems that protect sensitive government and defense information. Our secure communication solutions ensure confidentiality, integrity, and availability of critical data across various security classifications.',
    'features': [
      'End-to-end encryption',
      'Multi-level security architecture',
      'Secure voice and video communications',
      'Cross-domain solutions',
      'Secure messaging and file transfer',
      'Emergency communication systems',
    ],
    'image': 'assets/secure_communication.png',
  },
  {
    'title': 'Intelligence & Surveillance',
    'icon': Icons.remove_red_eye, // Approximating JSX icon
    'description': 'Implement advanced intelligence gathering and surveillance systems that provide actionable insights for government and defense operations. Our solutions integrate multiple data sources and employ sophisticated analytics to enhance situational awareness and decision-making capabilities.',
    'features': [
      'Multi-source intelligence fusion',
      'Real-time surveillance analytics',
      'Pattern recognition and anomaly detection',
      'Geospatial intelligence systems',
      'Signal intelligence processing',
      'Secure data collection and dissemination',
    ],
    'image': 'assets/images/1  Intelligence & Surveillance.jpg',
  },
  {
    'title': 'Cybersecurity Solutions',
    'icon': Icons.security, // Approximating JSX icon
    'description': 'Protect critical government and defense infrastructure with comprehensive cybersecurity solutions. Our systems defend against sophisticated cyber threats, ensure compliance with security standards, and provide continuous monitoring and incident response capabilities.',
    'features': [
      'Advanced threat detection and prevention',
      'Security information and event management',
      'Vulnerability assessment and management',
      'Incident response automation',
      'Zero trust architecture implementation',
      'Supply chain security assurance',
    ],
    'image': 'assets/images/2 CYBERSECURITY.jpg',
  },
  {
    'title': 'Mission-Critical Systems',
    'icon': Icons.memory, // Approximating JSX icon
    'description': 'Develop and maintain high-reliability systems for mission-critical government and defense operations. Our solutions are engineered for exceptional performance, availability, and resilience in demanding environments and high-stakes scenarios.',
    'features': [
      'High-availability architecture',
      'Fault-tolerant system design',
      'Real-time processing capabilities',
      'Disaster recovery solutions',
      'Redundant infrastructure',
      'Performance optimization',
    ],
    'image': 'assets/images/4  Mission-Critical Systems.jpg',
  },
  {
    'title': 'Public Sector Digital Transformation',
    'icon': Icons.apartment, // Approximating JSX icon
    'description': 'Modernize government operations with comprehensive digital transformation solutions. Our approach combines technology innovation with process optimization to enhance citizen services, improve operational efficiency, and enable data-driven decision making across public sector organizations.',
    'features': [
      'Citizen service portals',
      'Digital workflow automation',
      'Legacy system modernization',
      'Cloud migration strategies',
      'Data integration and analytics',
      'Mobile government solutions',
    ],
    'image': 'assets/digital_transformation.png',
  },
  {
    'title': 'Defense Logistics & Supply Chain',
    'icon': Icons.language, // Approximating JSX icon
    'description': 'Optimize defense logistics and supply chain operations with intelligent management systems. Our solutions provide end-to-end visibility, enhance resource allocation, and improve operational readiness through advanced tracking, forecasting, and inventory management capabilities.',
    'features': [
      'Asset tracking and management',
      'Inventory optimization',
      'Predictive maintenance',
      'Supply chain visibility',
      'Logistics planning and simulation',
      'Secure supplier collaboration',
    ],
    'image': 'assets/images/5 defense Logistics chains.jpg',
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Our Government & Defense IT Solutions',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      const Text(
        'We offer a comprehensive suite of IT solutions designed to address the unique challenges and security requirements of government and defense organizations.',
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(height: 20),

      Wrap(
        spacing: 8,
        runSpacing: 8,
        children: List.generate(solutions.length, (index) {
          return ChoiceChip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(solutions[index]['icon'], size: 18),
                const SizedBox(width: 6),
                Flexible(
                  child: Text(
                    solutions[index]['title'],
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            selected: selectedIndex == index,
            onSelected: (_) {
              setState(() {
                selectedIndex = selectedIndex == index ? null : index;
              });
            },
            selectedColor: Colors.redAccent.shade100,
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.grey),
            ),
          );
        }),
      ),

      const SizedBox(height: 20),

      if (selectedIndex != null)
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 8)
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                solutions[selectedIndex!]['title'],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                solutions[selectedIndex!]['description'],
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text('Key Features:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(child: Text(feature)),
                    ],
                  )),
              const SizedBox(height: 16),
              Image.asset(
                solutions[selectedIndex!]['image'],
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
    ],
  ),
);

} }