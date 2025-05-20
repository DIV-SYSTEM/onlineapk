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
      'title': 'Optical Character Recognition (OCR)',
      'icon': Icons.visibility,
      'description': 'With OCR, our systems read and convert text from images into machine-readable format, enabling automated data entry.',
      'features': [
        'Digitization of documents',
        'Automated data extraction',
        'Form and Reciept Processing'
      ],
      'image': 'assets/connected_vehicle.png',
    },
    {
      'title': 'Form Autofill Prediction',
      'icon': Icons.assignment,
      'description': 'Optimize manufacturing workflows with automated systems and integrated digital tools.',
      'features': [
        'Robotic automation',
        'Digital twin',
        'Smart factory integration'
      ],
      'image': 'assets/manufacturing.png',
    },
    {
      'title': 'Face Detection and Verification',
      'icon': Icons.face,
      'description': 'Ensure vehicle health and reduce downtime through advanced diagnostics and analytics.',
      'features': [
        'Predictive maintenance',
        'Error code tracking',
        'Mobile diagnostics'
      ],
      'image': 'assets/diagnostic.png',
    },
    {
      'title': 'AI Chatbot Integration',
      'icon': Icons.smart_toy,
      'description': 'Streamline operations and improve customer experiences with integrated DMS.',
      'features': [
        'Inventory tracking',
        'Sales management',
        'Customer relationship tools'
      ],
      'image': 'assets/dealership.png',
    },
    {
      'title': 'Language Translation',
      'icon': Icons.language,
      'description': 'Leverage AI to develop safe and efficient autonomous driving capabilities.',
      'features': [
        'Sensor integration',
        'Path planning',
        'AI decision-making'
      ],
      'image': 'assets/autonomous.png',
    },
    {
      'title': 'Product Recommendations System',
      'icon': Icons.recommend,
      'description': 'Manage large vehicle fleets with powerful tools for tracking, routing, and maintenance.',
      'features': [
        'GPS monitoring',
        'Maintenance scheduling',
        'Route optimization'
      ],
      'image': 'assets/fleet.png',
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
            'Our AI Services',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We offer a wide range of advanced AI services, delivering innovative solutions powered by the latest trends and technologies, all backed by robust, high-quality security to ensure trust, efficiency, and performance.',
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
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features']
                      .map<Widget>((feature) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.check_circle,
                                  color: Colors.green, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Text(
                                feature,
                                style: const TextStyle(fontSize: 16),
                              )),
                            ],
                          ))
                      .toList(),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      solutions[selectedIndex!]['image'],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // You can add navigation or a link here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}