import 'package:flutter/material.dart';

class AM1 extends StatelessWidget {
  const AM1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0D1B2A), Color(0xFF1B263B)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Finance & Banking\nWith Smart IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth < 400 ? 24 : 30,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              height: 1.3,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'We deliver secure and innovative digital solutions tailored for the financial sector — from banking automation and fraud detection to real-time analytics and compliance.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth < 400 ? 14 : 16,
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 30),

          // Cards
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              _SymbolCard(
                icon: Icons.credit_card,
                label: 'Digital Payments',
              ),
              _SymbolCard(
                icon: Icons.account_balance,
                label: 'Core Banking',
              ),
              _SymbolCard(
                icon: Icons.security,
                label: 'Fraud Protection',
              ),
              _SymbolCard(
                icon: Icons.bar_chart,
                label: 'Real-time Analytics',
              ),
              _SymbolCard(
                icon: Icons.trending_up,
                label: 'Investment Tools',
              ),
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
      width: screenWidth < 400 ? screenWidth * 0.8 : 140,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.tealAccent, size: 28), // smaller icon
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
