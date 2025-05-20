import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [
  {
    'icon': Icons.bolt.codePoint.toString(),
    'title': 'Up-to-date Tech Stack',
    'desc': 'We stay on top of emerging technologies to ensure your solution is modern, efficient, and competitive.',
  },
  {
    'icon': Icons.layers.codePoint.toString(),
    'title': 'Scalable Architecture',
    'desc': 'Designed to expand with your company, our architecture handles growth seamlessly without needing major rework.',
  },
  {
    'icon': Icons.trending_up.codePoint.toString(),
    'title': 'SEO-Optimized Program',
    'desc': 'We build with SEO in mind, ensuring that your web presence ranks better and drives more organic traffic.',
  },
  {
    'icon': Icons.group.codePoint.toString(),
    'title': 'User-Centred Plan',
    'desc': 'Our design approach focuses on your target audience to deliver intuitive, engaging user experiences.',
  },
  {
    'icon': Icons.schedule.codePoint.toString(),
    'title': 'Quick Change & Support',
    'desc': 'We provide prompt changes, ongoing assistance, and reliable post-launch support to keep you running smoothly.',
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Our Methods for Developing Websites",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "To provide high-performing web solutions with total transparency, constant quality, and quantifiable impact, we adhere to a methodical, cooperative workflow.",
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