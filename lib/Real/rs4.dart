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
          'Our connected vehicle solutions enable seamless communication between vehicles, infrastructure, and cloud platforms.',
      'features': [
        'Real-time telematics',
        'Cloud connectivity',
        'Remote diagnostics'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Construction%20Project%20Management.jpg',
    },
    {
      'title': 'Automotive Manufacturing System',
      'icon': Icons.factory,
      'description':
          'Optimize manufacturing workflows with automated systems and integrated digital tools.',
      'features': [
        'Robotic automation',
        'Digital twin',
        'Smart factory integration'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/construction%20project%20management%20system.jpg',
    },
    {
      'title': 'Vehicle Diagnostic Solutions',
      'icon': Icons.build_circle,
      'description':
          'Ensure vehicle health and reduce downtime through advanced diagnostics and analytics.',
      'features': [
        'Predictive maintenance',
        'Error code tracking',
        'Mobile diagnostics'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/new%20era%20in%20construction%20technology.png',
    },
    {
      'title': 'Dealership Management System',
      'icon': Icons.store,
      'description':
          'Streamline operations and improve customer experiences with integrated DMS.',
      'features': [
        'Inventory tracking',
        'Sales management',
        'Customer relationship tools'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Real%20Estate%20CRM.jpg',
    },
    {
      'title': 'Autonomous Driving Technologies',
      'icon': Icons.memory,
      'description':
          'Leverage AI to develop safe and efficient autonomous driving capabilities.',
      'features': [
        'Sensor integration',
        'Path planning',
        'AI decision-making'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/A%20new%20era%20in%20construction%20technology.jpg',
    },
    {
      'title': 'Fleet Management Solutions',
      'icon': Icons.local_shipping,
      'description':
          'Manage large vehicle fleets with powerful tools for tracking, routing, and maintenance.',
      'features': [
        'GPS monitoring',
        'Maintenance scheduling',
        'Route optimization'
      ],
      'image':
          'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Real%20Estate%20Analytics%20%26%20CRM%20Platform.jpg',
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
