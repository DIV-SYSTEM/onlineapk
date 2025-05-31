import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [
  {
    'icon': Icons.trending_up_outlined.codePoint.toString(),
    'title': 'Increased Conversion Rates',
    'desc': 'Convert more visitors into customers through streamlined checkouts, personalization, and performance enhancements.'
  },
  {
    'icon': Icons.public.codePoint.toString(),
    'title': 'Expanded Market Reach',
    'desc': 'Reach global customers with multi-language, multi-currency, and localized shopping experiences.'
  },
  {
    'icon': Icons.security_outlined.codePoint.toString(),
    'title': 'Enhanced Security',
    'desc': 'Protect customer data with robust security that builds trust and ensures compliance.'
  },
  {
    'icon': Icons.phone_iphone.codePoint.toString(),
    'title': 'Mobile-First Experiences',
    'desc': 'Deliver seamless shopping across devices with responsive design and native mobile apps.'
  },
  {
    'icon': Icons.sync_alt.codePoint.toString(),
    'title': 'Streamlined Operations',
    'desc': 'Automate and integrate systems to reduce manual work, minimize errors, and boost efficiency.'
  },
  {
    'icon': Icons.insights.codePoint.toString(),
    'title': 'Data-Driven Decisions',
    'desc': 'Use advanced analytics to optimize products, understand customers, and guide business strategy.'
  },
];


@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Benefits of Our E-commerce IT Solutions",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "Our comprehensive e-commerce IT solutions deliver tangible benefits that drive business growth, enhance customer experiences, and improve operational efficiency.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
        onPressed: () => setState(() => _showBenefits = !_showBenefits),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          "Check Benefits",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      const SizedBox(height: 24),
      if (_showBenefits)
        Column(
          children: benefits.map((benefit) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconData(int.parse(benefit['icon']!), fontFamily: 'MaterialIcons'),
                    size: 32,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          benefit['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          benefit['desc']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
    ],
  ),
);

} }
