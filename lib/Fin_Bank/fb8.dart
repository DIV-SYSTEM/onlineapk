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
      'number': 99.99,
      'suffix': '%',
      'title': 'Uptime for Critical Financial Systems',
      'desc':
      'Our financial solutions maintain exceptional reliability for mission-critical operations.'
    },
    {
      'number': 60,
      'suffix': '%',
      'title': 'Reduction in Operational Costs',
      'desc':
      'Financial institutions typically see significant cost savings through automation and digitization.'
    },
    {
      'number': 3,
      'suffix': 'x',
      'title': 'Faster Customer Onboarding',
      'desc':
      'Digital onboarding solutions dramatically reduce the time to acquire new customers.'
    },
    {
      'number': 85,
      'suffix': '%',
      'title': 'Reduction in Fraud Incidents',
      'desc':
      'Our advanced fraud detection systems significantly reduce financial fraud and associated losses.'
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
            'Financial Technology Success by the Numbers',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Our finance and banking IT solutions deliver measurable results that drive business growth and success.',
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
            child: const Text('Check Our Impressive Numbers'),
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
    tween: Tween<double>(begin: 0, end: (item['number'] as num).toDouble()),
    duration: const Duration(seconds: 2),
    builder: (context, value, _) {
    String displayValue = item['suffix'] == 'x'
    ? value.toStringAsFixed(1)
        : value.toStringAsFixed(0);
    return Text(
    '$displayValue${item['suffix']}',
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
            )
          ]
        ],
      ),
    );
  }
}
