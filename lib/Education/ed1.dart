import 'package:flutter/material.dart';

class AM1 extends StatelessWidget {
  const AM1({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Color(0xFF1A1A2E), // Dark, professional background color
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Transform Your\nEducation Institution\nwith Innovative IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth < 400 ? 24 : 32, // Adjust font size
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.3,
              letterSpacing: 1.2, // Add letter spacing for a more professional feel
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'From custom LMS development to SIS integration, digital classrooms, and data-driven analytics, we provide cutting-edge IT services to help educational institutions thrive in the digital learning era.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenWidth < 400 ? 16 : 18,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 40),

          // Symbols and titles
          Wrap(
            spacing: 24,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              _SymbolCard(icon: Icons.book, label: 'LMS'),
              _SymbolCard(icon: Icons.account_balance, label: 'SIS'),
              _SymbolCard(icon: Icons.analytics, label: 'Analytics'),
              _SymbolCard(icon: Icons.videocam, label: 'Virtual Learning'),
              _SymbolCard(icon: Icons.bookmark, label: 'Adaptive Learning'),
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
      width: screenWidth < 400 ? screenWidth * 0.8 : 160, // Slightly larger icon card
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white12, // Subtle contrast for the card
        borderRadius: BorderRadius.circular(18), // Slightly more rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ], // Add soft shadow for depth
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 36), // Increase icon size
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, // Larger, more readable font size
              fontWeight: FontWeight.w600, // Slightly bolder text
            ),
          ),
        ],
      ),
    );
  }
}
