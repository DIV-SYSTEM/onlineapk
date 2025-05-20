import 'package:flutter/material.dart';

// Custom extension to map icon names to actual Flutter icons
extension IconHelper on Icons {
  static IconData getIconData(String iconName) {
    switch (iconName) {
      case 'book':
        return Icons.book;
      case 'public':
        return Icons.public;
      case 'shield':
        return Icons.shield;
      case 'smartphone':
        return Icons.smartphone;
      case 'settings':
        return Icons.settings;
      default:
        return Icons.help_outline; // Fallback icon
    }
  }
}

class Am6 extends StatefulWidget {
  const Am6({super.key});

  @override
  State<Am6> createState() => _Am6State();
}

class _Am6State extends State<Am6> {
  bool _showBenefits = false;

  final List<Map<String, String>> benefits = [
    {
      'icon': 'book', // Better Learning Results
      'title': 'Better Learning Results',
      'desc': 'Interactive features, real-time assessments, and personalized content improve academic performance.',
    },
    {
      'icon': 'public', // Increased Educational Access
      'title': 'Increased Educational Access',
      'desc': 'Mobile systems, multilingual support, and remote learning ensure inclusive education for all.',
    },
    {
      'icon': 'shield', // Better Safety & Data Security
      'title': 'Better Safety & Data Security',
      'desc': 'End-to-end encryption and GDPR compliance support strong educational data protection.',
    },
    {
      'icon': 'smartphone', // Mobile-First Opportunities
      'title': 'Mobile-First Opportunities',
      'desc': 'Built-in apps allow students to access learning anytime, anywhere, on any device.',
    },
    {
      'icon': 'settings', // Simplified Academic Processes
      'title': 'Simplified Academic Processes',
      'desc': 'Automate grading, admissions, and reporting to boost productivity and reduce manual workload.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: BoxDecoration(
        color: Colors.grey.shade100.withOpacity(0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Advantages of Our IT Solutions for Education",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          const Text(
            "Experience measurable improvements in learning quality, administrative efficiency, and engagement.",
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
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              elevation: 6,
              shadowColor: Colors.redAccent.withOpacity(0.3),
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
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 6),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        IconHelper.getIconData(benefit['icon']!), // Using Flutter built-in icons dynamically
                        size: 36,
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
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              benefit['desc']!,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                                height: 1.4,
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
  }
}
