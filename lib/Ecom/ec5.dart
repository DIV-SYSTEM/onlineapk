import 'package:flutter/material.dart';

class AM5 extends StatefulWidget { const AM5({super.key});

@override State<AM5> createState() => _AM5State(); }

class _AM5State extends State<AM5> { bool showPlatforms = false;

final List<Map<String, dynamic>> platforms = [
  {
    'icon': Icons.shopping_cart,
    'title': 'Shopify',
    'description': 'Build and customize Shopify stores with advanced features and integrations.'
  },
  {
    'icon': Icons.store,
    'title': 'Magento',
    'description': 'Leverage the power of Magento for enterprise-grade e-commerce solutions.'
  },
  {
    'icon': Icons.shopping_bag,
    'title': 'WooCommerce',
    'description': 'Create flexible WordPress-based online stores with WooCommerce.'
  },
  {
    'icon': Icons.business,
    'title': 'BigCommerce',
    'description': 'Develop scalable online stores with BigCommerce\'s robust features.'
  },
  {
    'icon': Icons.cloud_circle,
    'title': 'Salesforce Commerce Cloud',
    'description': 'Implement enterprise e-commerce solutions with Salesforce Commerce Cloud.'
  },
  {
    'icon': Icons.construction,
    'title': 'Custom Solutions',
    'description': 'Build bespoke e-commerce platforms tailored to unique business requirements.'
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        'E-commerce Platforms We Support',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 12),
      const Text(
        'We have expertise across all major e-commerce platforms, allowing us to recommend and implement the best solution for your specific business needs.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          setState(() {
            showPlatforms = !showPlatforms;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          'Check Our Platforms',
          style: TextStyle(fontSize: 16),
        ),
      ),
      const SizedBox(height: 20),
      if (showPlatforms)
        Wrap(
          runSpacing: 16,
          spacing: 16,
          children: platforms.map((platform) {
            return Container(
              width: screenWidth < 600 ? screenWidth * 0.9 : 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(platform['icon'], size: 32, color: Colors.redAccent),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          platform['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          platform['description'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
    ],
  ),
);

} }
