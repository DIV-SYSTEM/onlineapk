import 'package:flutter/material.dart';

class AM1 extends StatelessWidget { const AM1({super.key});

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey[900],
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
  width: double.infinity,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Accelerate Your\nAutomotive Innovation\nWith Advanced IT Solutions',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: screenWidth < 400 ? 22 : 28,
          color: Colors.white,
          fontFamily:'Poppins',
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'From connected vehicles and autonomous technologies to manufacturing systems and dealership solutions, we provide comprehensive IT services to drive the future of automotive innovation.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: screenWidth < 400 ? 14 : 16,
          color: Colors.white70,
          fontFamily:"Inter",
          fontWeight:FontWeight.bold,
          height: 1.5,
        ),
      ),
      const SizedBox(height: 30),

      // Symbols and titles
      Wrap(
        spacing: 16,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: const [
          _SymbolCard(icon: Icons.directions_car, label: 'Connected Vehicle'),
          _SymbolCard(icon: Icons.precision_manufacturing, label: 'Manufacturing'),
          _SymbolCard(icon: Icons.build_circle, label: 'Diagnostics'),
          _SymbolCard(icon: Icons.smart_toy, label: 'Autonomous'),
          _SymbolCard(icon: Icons.local_shipping, label: 'Fleet Management'),
        ],
      ),
    ],
  ),
);

} }

class _SymbolCard extends StatelessWidget { final IconData icon; final String label;

const _SymbolCard({required this.icon, required this.label});

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: screenWidth < 400 ? screenWidth * 0.8 : 140,
  padding: const EdgeInsets.all(12),
  decoration: BoxDecoration(
    color: Colors.white10,
    borderRadius: BorderRadius.circular(16),
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, color: Colors.white, size: 32),
      const SizedBox(height: 8),
      Text(
        label,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  ),
);

} }