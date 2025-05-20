import 'package:flutter/material.dart';

class AM1 extends StatelessWidget { const AM1({super.key});

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Color.fromARGB(255, 216, 41, 41),
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
  width: double.infinity,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Secure & Innovative \nHealthcare\n IT Solutions',
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
        'We deliver comprehensive IT solutions tailored for modern healthcare environments, including smart electronic health records, seamless telehealth integration, and real-time data analytics.',
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
          _SymbolCard(icon: Icons.medical_services, label: 'EHR Systems'),
          _SymbolCard(icon: Icons.phone_in_talk, label: 'Telehealth'),
          _SymbolCard(icon: Icons.insights, label: 'Analytics'),
          _SymbolCard(icon: Icons.support_agent, label: 'Patient Engagement'),
          _SymbolCard(icon: Icons.compare_arrows, label: 'Interpolarity'),
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