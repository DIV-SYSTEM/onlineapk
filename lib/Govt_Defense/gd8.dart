import 'package:flutter/material.dart';
import 'dart:async';

class AM8 extends StatefulWidget {
  const AM8({super.key});

  @override
  State<AM8> createState() => _AM8State();
}

class _AM8State extends State<AM8> {
  bool showStats = false;

  final List<Map<String, dynamic>> statItems = [
    {
      'number': 99.999, // already double
      'suffix': '%',
      'title': 'System Availability',
      'desc': 'Our mission-critical solutions maintain exceptional reliability for defense operations.',
    },
    {
      'number': 75.0, // change to double
      'suffix': '%',
      'title': 'Reduction in Processing Time',
      'desc': 'Digital transformation dramatically improves government service delivery efficiency.',
    },
    {
      'number': 90.0, // change to double
      'suffix': '%',
      'title': 'Threat Detection Rate',
      'desc': 'Advanced cybersecurity solutions identify and mitigate the vast majority of threats.',
    },
    {
      'number': 4.2, // already double
      'suffix': 'x',
      'title': 'ROI on IT Modernization',
      'desc': 'Our government clients experience strong returns on their technology investments.',
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
            'Government & Defense Impact',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Our solutions deliver measurable results for government and defense organizations, enhancing security, efficiency, and mission effectiveness.',
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
          if (showStats) ...[
            const SizedBox(height: 30),
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
                        tween: Tween(begin: 0, end: item['number']),
                        duration: const Duration(seconds: 2),
                        builder: (context, value, child) {
                          return Text(
                            "${value.toStringAsFixed(item['number'] < 10 ? 1 : 3)}${item['suffix']}",
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
                        item['title'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        item['desc'],
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
            ),
          ]
        ],
      ),
    );
  }
}
