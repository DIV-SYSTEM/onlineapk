import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [ { 'icon': Icons.speed_outlined.codePoint.toString(), 'title': 'Accelerated Innovation', 'desc': 'Drive product and process innovation with cutting-edge IT tools.' }, { 'icon': Icons.security.codePoint.toString(), 'title': 'Improved Security', 'desc': 'Protect data, systems, and users with advanced security protocols.' }, { 'icon': Icons.settings.codePoint.toString(), 'title': 'Operational Efficiency', 'desc': 'Streamline processes and reduce costs across operations.' }, { 'icon': Icons.thumb_up.codePoint.toString(), 'title': 'Excellent UX', 'desc': 'Enhance user experience across digital touchpoints.' }, { 'icon': Icons.insights.codePoint.toString(), 'title': 'Actionable Insights', 'desc': 'Leverage data to drive smarter decisions and innovation.' }, { 'icon': Icons.sync.codePoint.toString(), 'title': 'Seamless Integration', 'desc': 'Ensure smooth interaction between legacy and modern systems.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Advantages of Our IT Services for Automobiles",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "Our comprehensive automotive IT solutions deliver tangible benefits that drive innovation, enhance efficiency, and create competitive advantages for your business.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
        onPressed: () => setState(() => _showBenefits = !_showBenefits),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          "Check Benefits",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      const SizedBox(height: 24),
      if (_showBenefits)
        Column(
          children: benefits.map((benefit) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconData(int.parse(benefit['icon']!), fontFamily: 'MaterialIcons'),
                    size: 32,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          benefit['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          benefit['desc']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
    ],
  ),
);

} }