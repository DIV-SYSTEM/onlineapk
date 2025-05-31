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
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          ),
          child: const Text(
            'A New Era in Construction Technology',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      if (isExpanded) ...[
        const SizedBox(height: 16),
        const Text(
          "Modern real estate and construction require intelligent, secure, and integrated ecosystems that go beyond digital tools to meet project demands and stakeholder expectations throughout the entire development lifecycle.",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20),
        _buildCheckItem('Safety Driven Development:', 'Every solution is built on safety protocols and building code compliance foundations.'),
        _buildCheckItem('Construction Intelligence:', 'Our systems mirror real-world construction workflows and project management practices.'),
        _buildCheckItem('Seamless Project Flow:', 'Dependable tools to ensure continuous project progression across all phases and stakeholders.'),
      
        const SizedBox(height: 20),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/new%20era%20in%20construction%20technology.png',
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
