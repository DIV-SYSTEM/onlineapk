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
        'Transform Your \nE-commerce Business \nWith Cutting-Edge IT Solutions',
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
        'From custom development to platform integration, performance optimization, and security solutions, we provide comprehensive IT services to help your e-commerce business thrive in the digital marketplace.',
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
            _SymbolCard(icon: Icons.shopping_cart, label: 'Shop Products'),
            _SymbolCard(icon: Icons.category, label: 'Categories'),
            _SymbolCard(icon: Icons.local_offer, label: 'Deals & Offers'),
            _SymbolCard(icon: Icons.payment, label: 'Secure Payment'),
            _SymbolCard(icon: Icons.local_shipping, label: 'Fast Delivery'),

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
