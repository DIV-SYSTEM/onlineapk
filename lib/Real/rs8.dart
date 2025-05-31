import 'package:flutter/material.dart';

class AM8 extends StatefulWidget {
  const AM8({super.key});

  @override
  State<AM8> createState() => _AM8State();
}

class _AM8State extends State<AM8> {
  bool showStats = false;

  final List<Map<String, dynamic>> statItems = [
    {
      'number': 22,
      'suffix': '%',
      'title': 'Reduction in Administrative Tasks',
      'desc':
      'Our automation solutions significantly reduce manual paperwork and administrative overhead.'
    },
    {
      'number': 45,
      'suffix': '%',
      'title': 'Increase in Lead Conversion',
      'desc':
      'Digital marketing and CRM platforms dramatically improve client engagement and conversion rates.'
    },
    {
      'number': 3.2,
      'suffix': 'x',
      'title': 'ROI on Technology Investment',
      'desc':
      'Our cli.'
    },
    {
      'number': 99.9,
      'suffix': '%',
      'title': 'System Uptime',
      'desc':
      'Our real estate and construction solutions maintain exceptional reliability for critical business operations.'
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
            'Real Estate & Construction Impact',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Our solutions drive measurable impact across real estate and construction projects—boosting project efficiency, cost-effectiveness, and stakeholder satisfaction from planning to completion.',
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
                  padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                        tween: Tween<double>(
                            begin: 0, end: item['number'].toDouble()),
                        duration: const Duration(seconds: 2),
                        builder: (context, value, _) => Text(
                          '${value.toStringAsFixed(1)}${item['suffix']}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
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
            )
          ]
        ],
      ),
    );
  }
}
