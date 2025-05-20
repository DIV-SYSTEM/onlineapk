import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [ { 'icon': Icons.speed_outlined.codePoint.toString(), 'title': 'AI to Make Wise Choices', 'desc': 'Assisting executives in the fields of logistics, finance, and healthcare in making quicker, better decisions' }, { 'icon': Icons.security.codePoint.toString(), 'title': 'Automation Driven by AI', 'desc': 'Utilizing self-learning technologies and intelligent workflows to decrease manual labor and errors' }, { 'icon': Icons.settings.codePoint.toString(), 'title': 'Self-governing AI Agents', 'desc': 'An AI that is capable of real-time thought, action, and adaptation without human input.' }, { 'icon': Icons.thumb_up.codePoint.toString(), 'title': 'AI for R&D and Innovation', 'desc': 'Use predictive modelling to speed up innovations in clean technology, pharmaceuticals, and aerospace.' }, { 'icon': Icons.insights.codePoint.toString(), 'title': 'Actionable Insights', 'desc': 'Leverage data to drive smarter decisions and innovation.' }, { 'icon': Icons.sync.codePoint.toString(), 'title': 'Seamless Integration', 'desc': 'Ensure smooth interaction between legacy and modern systems.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "What Sets Us Apart?",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "Strong performance benchmarks, ethical standards and bias reduction, user-friendly integration, secure, compliant deployment, and continuous improvement and maintenance are all benefits of clear business alignment.",
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