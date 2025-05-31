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
        'Smart & Scalable\nReal Estate\n& Construction Solution',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: screenWidth < 400 ? 22 : 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        'We deliver comprehensive IT solutions tailored for modern real estate and construction businesses, from intelligent property management systems to seamless project coordination and advanced market analytics',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: screenWidth < 400 ? 14 : 16,
          color: Colors.white70,
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
          _SymbolCard(icon: Icons.apartment, label: 'Property Management'),
          _SymbolCard(icon: Icons.construction, label: 'Construction'),
          _SymbolCard(icon: Icons.bar_chart, label: 'Market Analytics'),
          _SymbolCard(icon: Icons.vrpano, label: 'Virtual Tours'),
          _SymbolCard(icon: Icons.sensor_door, label: 'Smart Buildings'),
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
