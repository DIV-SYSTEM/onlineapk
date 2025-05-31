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
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          ),
          child: const Text(
            'Why Your E-commerce Business Needs Specialized IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      if (isExpanded) ...[
        const SizedBox(height: 16),
        const Text(
          "E-commerce businesses face unique technical challenges that require specialized solutions. From handling high-volume transactions and managing complex product catalogs to ensuring security and integrating with multiple systems, e-commerce platforms demand expertise beyond general web development.",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 20),
        _buildCheckItem('Complex Integrations:', 'Connect with payment gateways, shipping providers, ERP systems, and more'),
        _buildCheckItem('Performance Demands:', 'Handle traffic spikes and maintain fast load times'),
        _buildCheckItem('Security Requirements:', 'Protect customer data and comply with regulations'),
        _buildCheckItem('Scalability Needs:', 'Grow your platform alongside your business'),

        const SizedBox(height: 20),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/2need to e commence (1280 x 800 px).jpg',
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
