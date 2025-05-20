import 'package:flutter/material.dart';

class AM8 extends StatefulWidget {
  const AM8({super.key});

  @override
  State<AM8> createState() => _AM8State();
}

class _AM8State extends State<AM8> {
  bool showStats = false;

  final List<Map<String, String>> statItems = [
    {
      'number': '38',
      'title': 'Increase in Student Engagement',
      'desc': 'Our educational platforms significantly boost student participation and motivation.',
    },
    {
      'number': '45',
      'title': 'Reduction in Administrative Time',
      'desc': 'Automation dramatically improves efficiency for educational staff.',
    },
    {
      'number': '99.9',
      'title': 'System Uptime',
      'desc': 'Our education solutions maintain exceptional reliability for continuous learning.',
    },
    {
      'number': '3.2',
      'title': 'ROI on EdTech Investment',
      'desc': 'Our clients experience strong returns on their technology investments.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xFF1C1C1C),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Automotive Success by the Numbers',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Our automotive IT solutions deliver measurable results that drive business growth and technological advancement.',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            ),
            onPressed: () {
              setState(() {
                showStats = !showStats;
              });
            },
            child: const Text('Check our Impressive numbers'),
          ),
          if (showStats)
            const SizedBox(height: 30),
          if (showStats)
            ...statItems.map(
                  (item) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: width < 500 ? double.infinity : 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TweenAnimationBuilder<double>(
                        tween: Tween(begin: 0, end: double.parse(item['number']!)),
                        duration: const Duration(seconds: 3),
                        builder: (context, value, child) {
                          return Text(
                            value.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['title']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['desc']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
