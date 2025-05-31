import 'package:flutter/material.dart';

class AM3 extends StatefulWidget { const AM3({super.key});

@override State<AM3> createState() => _AM3State(); }

class _AM3State extends State<AM3> { bool isExpanded = false;

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width; final isSmallScreen = screenWidth < 600;

return Container(
  color: Colors.grey.shade200,
  padding: const EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() => isExpanded = !isExpanded);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red.shade700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          ),
          child: const Text(
            'Why Telecom Providers Need Advanced IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      if (isExpanded) ...[
        const SizedBox(height: 16),
        const Text(
          "As data demand surges and technologies like 5G, IoT, and AI reshape communication, telecom operators must modernize their IT ecosystems. Our telecom-focused solutions drive operational efficiency, enhance security, and support network innovation.",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20),
        _buildCheckItem('Next-Gen Network Support:', 'Enable 5G, VoIP, and fiber deployments with intelligent infrastructure'),
        _buildCheckItem('Cybersecurity Resilience:', 'Protect critical communication systems from evolving threats'),
        _buildCheckItem('Scalable Infrastructure:', 'Adapt to growing demand with modular, cloud-native platforms'),
        
        _buildCheckItem('Seamless Legacy Integration:', 'Modernize without disruption to existing networks and OSS/BSS systems'),
        const SizedBox(height: 20),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2%20digi%20mar.jpg',
              width: isSmallScreen ? screenWidth * 0.9 : screenWidth * 0.6,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]
    ],
  ),
);

}

Widget _buildCheckItem(String title, String desc) { return Padding( padding: const EdgeInsets.symmetric(vertical: 8.0), child: Row( crossAxisAlignment: CrossAxisAlignment.start, children: [ const Text('✅️ ', style: TextStyle(fontSize: 18)), Expanded( child: RichText( text: TextSpan( style: const TextStyle(color: Colors.black, fontSize: 15), children: [ TextSpan( text: title, style: const TextStyle(fontWeight: FontWeight.bold), ), TextSpan(text: ' $desc'), ], ), ), ), ], ), ); } }
