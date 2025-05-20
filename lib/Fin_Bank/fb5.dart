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
      'icon': Icons.account_balance,
      'title': 'Temenos',
      'description': 'We connect and work with Temenos core and digital banking systems.',
    },
    {
      'icon': Icons.integration_instructions,
      'title': 'Finastra',
      'description': 'We build and integrate custom solutions using Finastra banking platforms.',
    },
    {
      'icon': Icons.cloud_done,
      'title': 'Mambu',
      'description': 'We offer cloud-based banking solutions using the Mambu platform.',
    },
    {
      'icon': Icons.sync_alt,
      'title': 'FIS',
      'description': 'We customize and connect FIS banking and payment tools.',
    },
    {
      'icon': Icons.precision_manufacturing,
      'title': 'Fiserv',
      'description': 'We build and improve banking systems based on Fiserv technology.',
    },
    {
      'icon': Icons.auto_fix_high,
      'title': 'Custom Solutions',
      'description': 'We also create fully customized financial platforms designed just for your business.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Financial Platforms We Work With',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'We have experience with all major financial platforms. This helps us suggest and set up the best solution that fits your business needs.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.black54, height: 1.5),
          ),
          const SizedBox(height: 28),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                showPlatforms = !showPlatforms;
              });
            },
            icon: const Icon(Icons.visibility, size: 20),
            label: const Text(
              'Check Our Platforms',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              elevation: 4,
            ),
          ),
          const SizedBox(height: 32),
          if (showPlatforms)
            Wrap(
              runSpacing: 24,
              spacing: 24,
              alignment: WrapAlignment.center,
              children: platforms.map((platform) {
                return Container(
                  width: screenWidth < 600 ? screenWidth * 0.9 : 320,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(platform['icon'], size: 28, color: Colors.redAccent),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              platform['title'],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              platform['description'],
                              style: const TextStyle(
                                fontSize: 15,
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
