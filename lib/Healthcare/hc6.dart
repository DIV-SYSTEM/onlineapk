import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [ { 'icon': Icons.speed_outlined.codePoint.toString(), 'title': 'Improved Compliance & Security', 'desc': 'Privacy and security are at the heart of our solutions. We help you stay audit-ready, resilient to cyberthreats, and compliant with HIPAA, HITECH, and new digital health regulations.' }, { 'icon': Icons.security.codePoint.toString(), 'title': 'Efficiency in Operations', 'desc': 'Simplify administrative and clinical workflows with smart automation tools. Increase productivity, save time, and reduce burnout.' }, { 'icon': Icons.settings.codePoint.toString(), 'title': 'Enhanced Results for Patients', 'desc': 'Empower care teams with tools and real-time analytics to improve care coordination and clinical accuracy.' }, { 'icon': Icons.thumb_up.codePoint.toString(), 'title': 'Data-Driven Insights', 'desc': 'Use real-time analytics and AI to transform complex healthcare data into actionable intelligence.' }, { 'icon': Icons.insights.codePoint.toString(), 'title': 'Increased Creativity', 'desc': 'Rapidly deploy and scale cutting-edge technologies like AI and blockchain to future-proof your healthcare delivery.' }, { 'icon': Icons.sync.codePoint.toString(), 'title': 'Seamless Integration', 'desc': 'Ensure smooth interaction between legacy and modern systems.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Our Healthcare IT Solutions Advantages",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "Modern healthcare need innovation with a human to functionality, Our healthcare IT solutions enable your business to function with intelligence, compassion, and confidence while providing long-lasting value throughout the care continuum",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.867)),
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