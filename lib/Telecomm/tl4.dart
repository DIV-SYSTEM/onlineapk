import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> solutions = [
    {
      'title': 'Next-Gen Network Infrastructure',
      'icon': Icons.directions_car_filled,
      'description':
          'Build high-performance and scalable telecom infrastructure. Our solutions support 5G, fiber optics, and core network enhancements to enable fast, reliable connectivity across urban and rural areas.',
      'features': [
        '5G and 6G readiness',
        'Fiber optic deployment',
        'Dynamic traffic management'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Telehealth%20Platform%20Implementation.jpg',
    },
    {
      'title': 'IoT & M2M Connectivity',
      'icon': Icons.factory,
      'description':
          'Enable seamless machine-to-machine communication with secure, scalable IoT networks. We provide frameworks to support smart devices, industrial sensors, and intelligent network management.',
      'features': [
        'Massive device connectivity',
        'Remote device management',
        'Low-power wide-area networks'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/7%20Telecom%20Providers%20Need%20Advanced%20IT%20Solutions.jpg',
    },
    {
      'title': 'Telecom Network Security',
      'icon': Icons.build_circle,
      'description':
          'Safeguard telecom infrastructure from evolving cyber threats. Our security solutions provide real-time monitoring, incident response, and regulatory compliance for telecom operators.',
      'features': [
        'Threat detection & prevention',
        'Network segmentation',
        'DDoS protection'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/11%20Telecom%20Network%20Security.jpg',
    },
    {
      'title': 'OSS/BSS Transformation',
      'icon': Icons.store,
      'description':
          'Modernize telecom business operations with advanced OSS/BSS platforms. We help telecom providers accelerate service delivery, automate billing, and improve customer experience.',
      'features': [
        'Digital billing systems',
        'Customer relationship management',
        'Real-time service provisioning'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/10%20Telecom%20Network%20Security.jpg',
    },
    {
      'title': 'Autonomous Driving Technologies',
      'icon': Icons.memory,
      'description':
          'Leverage AI and automation for proactive telecom operations. Our solutions improve uptime, detect anomalies, and optimize resource allocation across your telecom stack.',
      'features': [
        'Predictive maintenance',
        'Self-healing networks',
        'Traffic forecasting'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/13%20AI-Driven%20Network%20Operations.jpg',
    },
    {
      'title': 'Customer Experience Platforms',
      'icon': Icons.local_shipping,
      'description':
          'Deliver superior telecom customer experiences through personalized services, omnichannel engagement, and advanced analytics that track satisfaction and reduce churn.',
      'features': [
        'Unified customer view',
        'Real-time support systems',
        'Churn prediction & analytics'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/12%20OSS.BSS.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Telecommunication IT Solutions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'Empowering telecom providers with scalable, secure, and next-gen IT solutions that enable faster connectivity, better customer experiences, and streamlined operations.',
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
            }).toList(),
          ),

          const SizedBox(height: 20),

          if (selectedIndex != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    solutions[selectedIndex!]['title'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Row(
                        children: [
                          const Icon(Icons.check_circle, color: Colors.black),
                          const SizedBox(width: 8),
                          Expanded(child: Text(feature)),
                        ],
                      )),
                  const SizedBox(height: 16),
                  Image.network(
                    solutions[selectedIndex!]['image'],
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(
                      Icons.broken_image,
                      size: 100,
                      color: Colors.grey,
                    ),
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
