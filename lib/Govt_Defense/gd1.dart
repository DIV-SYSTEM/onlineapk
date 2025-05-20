import 'package:flutter/material.dart';

class AM1 extends StatelessWidget {
  const AM1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0F172A), Color(0xFF1E293B)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Secure & Resilient\nGovernment & Defense\nIT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth < 400 ? 24 : 32,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              height: 1.4,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 24),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Text(
              'From secure systems to mission-critical applications, we deliver comprehensive IT services tailored for the unique demands of government and defense organizations.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth < 400 ? 14 : 16,
                color: Colors.white70,
                height: 1.6,
              ),
            ),
          ),
          const SizedBox(height: 36),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              _SymbolCard(icon: Icons.security, label: 'Cyber Security'),
              _SymbolCard(icon: Icons.wifi, label: 'Communications'),
              _SymbolCard(icon: Icons.visibility, label: 'Intelligence'),
              _SymbolCard(icon: Icons.apartment, label: 'Public Sector'),
              _SymbolCard(icon: Icons.local_shipping, label: 'Logistics'),
            ],
          ),
        ],
      ),
    );
  }
}

class _SymbolCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _SymbolCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth < 400 ? screenWidth * 0.8 : 150,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: const Color(0xFF38BDF8), size: 36),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
