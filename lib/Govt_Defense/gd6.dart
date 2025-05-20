import 'package:flutter/material.dart';

class Am6 extends StatefulWidget {
  const Am6({super.key});

  @override
  State<Am6> createState() => _Am6State();
}

class _Am6State extends State<Am6> {
  bool _showBenefits = false;

  final List<Map<String, String>> benefits = [
    {
      'icon': Icons.security.codePoint.toString(),
      'title': 'Enhanced Security',
      'desc': 'Implement robust security measures that protect sensitive government data and systems against sophisticated threats while meeting stringent compliance requirements.',
    },
    {
      'icon': Icons.settings.codePoint.toString(),
      'title': 'Operational Efficiency',
      'desc': 'Streamline government processes, reduce manual work, and optimize resource allocation through intelligent automation and workflow optimization.',
    },
    {
      'icon': Icons.public.codePoint.toString(),
      'title': 'Mission Effectiveness',
      'desc': 'Enhance the ability to execute critical missions through improved situational awareness, faster decision-making, and more reliable systems.',
    },
    {
      'icon': Icons.people.codePoint.toString(),
      'title': 'Improved Citizen Services',
      'desc': 'Deliver more responsive, accessible, and effective services to citizens through digital transformation and user-centered design.',
    },
    {
      'icon': Icons.cloud.codePoint.toString(),
      'title': 'Data-Driven Insights',
      'desc': 'Transform government data into actionable intelligence that drives strategic decisions, identifies opportunities, and enhances operational effectiveness.',
    },
    {
      'icon': Icons.rocket_launch.codePoint.toString(),
      'title': 'Technological Advantage',
      'desc': 'Maintain technological superiority through the adoption of cutting-edge solutions that provide strategic and tactical advantages in defense and security operations.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const primaryColor = Color(0xFF0A1D37);
    const accentColor = Color(0xFFF4B400); // warm gold
    const bgColor = Color(0xFFF5F7FA);

    return Container(
      width: double.infinity,
      color: bgColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Benefits of Our Government & Defense Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w800,
              color: primaryColor,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 16),
          const SizedBox(
            width: 800,
            child: Text(
              "Our specialized solutions deliver significant advantages for government and defense organizations, enhancing security, efficiency, and mission effectiveness.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => setState(() => _showBenefits = !_showBenefits),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              elevation: 6,
            ),
            child: const Text(
              "Explore Key Benefits",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          const SizedBox(height: 32),
          if (_showBenefits)
            Column(
              children: benefits.map((benefit) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        IconData(
                          int.parse(benefit['icon']!),
                          fontFamily: 'MaterialIcons',
                        ),
                        size: 32,
                        color: accentColor,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              benefit['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: primaryColor,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              benefit['desc']!,
                              style: const TextStyle(
                                fontSize: 14.5,
                                color: Colors.black87,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      )
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
