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
            'Why Your Automotive Business Needs Specialized IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      if (isExpanded) ...[
        const SizedBox(height: 16),
        const Text(
          "The automotive industry is undergoing a profound digital transformation, driven by connected vehicles, autonomous technologies, electrification, and changing consumer expectations. To thrive in this evolving landscape, automotive businesses need specialized IT solutions that address industry-specific challenges.",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20),
        _buildCheckItem('Digital Shift:', 'Adapt quickly to changing tech trends.'),
        _buildCheckItem('Scalability:', 'Easily expand as your business grows.'),
        _buildCheckItem('Real-time Analytics:', 'Monitor performance and make quick decisions.'),
        _buildCheckItem('Customer Experience:', 'Deliver more personalized services.'),
        _buildCheckItem('Integration:', 'Connect all departments and platforms seamlessly.'),
        const SizedBox(height: 20),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://images.unsplash.com/photo-1519589327869-9f7aa1dcd0e6',
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