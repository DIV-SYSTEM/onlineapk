import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> solutions = [
    {
      'title': 'Custom E-commerce Development',
      'icon': Icons.code,
      'description':
          'Build a tailor-made e-commerce platform that perfectly aligns with your unique business requirements. Our custom development services ensure your online store stands out from the competition with distinctive features and seamless user experiences.',
      'features': [
        'Bespoke e-commerce website development',
        'Custom shopping cart and checkout flows',
        'Personalized product catalog management',
        'Custom pricing and promotion engines',
        'Tailored inventory management systems',
        'Unique customer account portals',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Custom%20E-commerce%20Development.jpg',
      'learnMoreDescription': 'Our Custom E-commerce Development services delivered a bespoke platform for a retail brand, boosting sales by 55%. Using React and AWS, we created a tailored shopping cart and checkout flow, improving conversions by 40%. Personalized product catalogs and custom pricing engines, integrated with MongoDB, supported 50,000+ SKUs. Secure customer portals enhanced user retention by 30%. Compliant with GDPR, this scalable solution streamlined operations and provided a unique, competitive edge.'
    },
    {
      'title': 'E-commerce Platform Integration',
      'icon': Icons.layers,
      'description':
          'Seamlessly connect your e-commerce platform with essential business systems and third-party services. Our integration expertise ensures data flows smoothly across your entire business ecosystem, eliminating silos and enhancing operational efficiency.',
      'features': [
        'ERP system integration',
        'CRM integration for customer data synchronization',
        'Payment gateway integration',
        'Shipping and fulfillment system connections',
        'Inventory management system integration',
        'Marketing automation platform connections',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/5%20E-commerce%20Platform%20Integration.jpg',
      'learnMoreDescription': 'Our E-commerce Platform Integration solution unified a fashion retailer’s operations, increasing efficiency by 45%. By integrating Shopify with SAP ERP and Salesforce CRM, we synchronized data for 100,000+ customers. Payment gateways like Stripe and shipping systems reduced order processing time by 50%. Marketing automation via HubSpot boosted campaign ROI by 25%. Hosted on Azure, this GDPR-compliant system eliminated silos, streamlining workflows and enhancing business agility.'
    },
    {
      'title': 'E-commerce Performance Optimization',
      'icon': Icons.speed,
      'description':
          'Enhance your e-commerce site\'s speed, responsiveness, and overall performance to provide exceptional user experiences. Our optimization services help you reduce bounce rates, increase conversions, and improve search engine rankings.',
      'features': [
        'Page load speed optimization',
        'Database query optimization',
        'Image and asset optimization',
        'Caching implementation',
        'CDN configuration',
        'Server-side rendering implementation',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/6%20E-commerce%20Performance%20Optimization.jpg',
      'learnMoreDescription': 'Our E-commerce Performance Optimization services improved a retailer’s site speed by 60%, reducing bounce rates by 35%. Using Next.js and AWS CloudFront, we optimized page load times to under 2 seconds. Database query tuning and image compression cut server response times by 50%. Caching and CDN configuration supported 200,000+ monthly visitors. This solution, compliant with SEO standards, boosted conversions by 30% and elevated Google rankings, enhancing user satisfaction.'
    },
    {
      'title': 'E-commerce Security Solutions',
      'icon': Icons.shield,
      'description':
          'Protect your e-commerce business and customer data with comprehensive security solutions. Our security services safeguard your online store against threats, ensure compliance with regulations, and build customer trust.',
      'features': [
        'PCI DSS compliance implementation',
        'Secure payment processing',
        'Data encryption and protection',
        'Fraud detection and prevention',
        'Security audits and vulnerability assessments',
        'DDoS protection and mitigation',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/7%20E-commerce%20Security%20Solutions.jpg',
      'learnMoreDescription': 'Our E-commerce Security Solutions protected a global retailer’s platform, reducing fraud by 50%. PCI DSS-compliant payment processing, integrated with Stripe, secured 10,000+ daily transactions. Data encryption and AWS WAF mitigated DDoS attacks, ensuring 99.99% uptime. AI-driven fraud detection and regular security audits eliminated vulnerabilities. Compliant with GDPR, this solution safeguarded 500,000+ customer records, boosting trust and enabling secure global expansion.'
    },
    {
      'title': 'Mobile Commerce Solutions',
      'icon': Icons.smartphone,
      'description':
          'Extend your e-commerce presence to mobile devices with responsive designs or dedicated mobile apps. Our mobile commerce solutions ensure your customers enjoy seamless shopping experiences across all devices.',
      'features': [
        'Responsive e-commerce website design',
        'Progressive Web App (PWA) development',
        'Native mobile app development',
        'Mobile payment integration',
        'Push notification implementation',
        'Mobile-specific UX optimization',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/8%20Mobile%20Commerce%20Solutions.jpg',
      'learnMoreDescription': 'Our Mobile Commerce Solutions empowered a retailer with a seamless mobile experience, increasing mobile sales by 65%. A Flutter-based native app and PWA, hosted on Google Cloud, supported 50,000+ users. Mobile payment integration with Apple Pay and push notifications boosted engagement by 40%. Responsive design and UX optimization reduced cart abandonment by 30%. GDPR-compliant, this solution enhanced accessibility and drove revenue through a mobile-first approach.'
    },
    {
      'title': 'E-commerce Analytics & Insights',
      'icon': Icons.bar_chart,
      'description':
          'Gain valuable insights into your e-commerce performance with advanced analytics solutions. Our data-driven approach helps you understand customer behavior, optimize marketing efforts, and make informed business decisions.',
      'features': [
        'E-commerce tracking implementation',
        'Custom dashboard development',
        'Sales and conversion analytics',
        'Customer journey analysis',
        'Product performance insights',
        'Marketing channel attribution',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/E-commerce%20Analytics%20%26%20Insights%202.jpg',
      'learnMoreDescription': 'Our E-commerce Analytics & Insights solution enhanced a retailer’s decision-making, increasing ROI by 35%. Custom dashboards, built with Power BI and AWS, provided real-time sales and conversion analytics for 1M+ transactions. Customer journey analysis and product performance insights optimized inventory, reducing costs by 25%. Marketing attribution improved campaign efficiency by 30%. GDPR-compliant, this scalable system empowered data-driven strategies, boosting profitability and customer engagement.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our E-commerce IT Solutions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We offer a comprehensive suite of e-commerce IT solutions designed to address every aspect of your online business, from development and integration to optimization and security.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(solutions.length, (index) {
              return ChoiceChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(solutions[index]['icon'], size: 18),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        solutions[index]['title'],
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                selected: selectedIndex == index,
                onSelected: (_) {
                  setState(() {
                    selectedIndex = selectedIndex == index ? null : index;
                  });
                },
                selectedColor: Colors.redAccent.shade100,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.grey),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          if (selectedIndex != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 8)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    solutions[selectedIndex!]['title'],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle, color: Colors.green),
                            const SizedBox(width: 8),
                            Expanded(child: Text(feature)),
                          ],
                        ),
                      )),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      solutions[selectedIndex!]['image'],
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        height: 200,
                        child: const Center(child: Text('Image not found')),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.9,
                                maxHeight: MediaQuery.of(context).size.height * 0.7,
                              ),
                              padding: const EdgeInsets.all(16),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            solutions[selectedIndex!]['title'],
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      solutions[selectedIndex!]['learnMoreDescription'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
