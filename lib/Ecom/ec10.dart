import 'package:flutter/material.dart';

class ECommerce4 extends StatelessWidget {
  const ECommerce4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2need%20to%20e%20commence%20(1280%20x%20800%20px).jpg',
        'domain': 'E-Commerce',
        'title': 'Scalable E-Commerce Platform',
        'description': 'Built a robust e-commerce platform for a retail startup, increasing sales by 60% and handling 100,000+ monthly visitors.',
        'readMoreDescription': 'Our scalable e-commerce platform transformed a retail startup’s online presence, boosting sales by 60%. Hosted on AWS with auto-scaling, the platform handled 100,000+ monthly visitors with 99.99% uptime. Features like personalized product recommendations and seamless checkout, powered by React and Node.js, improved conversion rates by 40%. Secure payment gateways and GDPR-compliant data handling ensured customer trust. This solution enabled rapid growth, supporting 10,000+ daily transactions and enhancing user experience.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/E-Commerce%20Development.jpg',
        'domain': 'E-Commerce',
        'title': 'Omnichannel Retail Integration',
        'description': 'Implemented an omnichannel solution for a fashion retailer, unifying online and offline sales channels and boosting revenue by 45%.',
        'readMoreDescription': 'We developed an omnichannel retail solution for a fashion retailer, increasing revenue by 45%. By integrating online and offline channels using Shopify and Azure, we ensured real-time inventory sync across 50+ stores. Mobile apps and a unified customer dashboard, built with Flutter, enhanced user engagement by 50%. Secure APIs and PCI DSS-compliant payment systems supported 5,000+ daily orders. This solution streamlined operations, reduced cart abandonment by 30%, and delivered a cohesive shopping experience.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20Customer%20Experience%20Platforms.jpg',
        'domain': 'E-Commerce',
        'title': 'AI-Powered Personalization Engine',
        'description': 'Deployed an AI-driven personalization engine for an e-commerce brand, improving customer retention by 35% and increasing average order value by 25%.',
        'readMoreDescription': 'Our AI-powered personalization engine for an e-commerce brand boosted customer retention by 35%. Using TensorFlow and Google Cloud, the system analyzed 1M+ user interactions to deliver tailored product recommendations, increasing average order value by 25%. Real-time analytics dashboards provided insights into customer behavior, optimizing marketing campaigns. Secure data handling ensured GDPR compliance. Integrated with Magento, this solution drove 20% higher engagement, enhancing customer loyalty and maximizing revenue.'
      },
    ];

    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'See how our E-Commerce services have empowered businesses to overcome challenges and achieve their goals.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),
          Column(
            children: successStories.map((story) => successCard(
                  context: context,
                  imageUrl: story['imageUrl'],
                  domain: story['domain'],
                  title: story['title'],
                  description: story['description'],
                  readMoreDescription: story['readMoreDescription'],
                )).toList(),
          ),
        ],
      ),
    );
  }

  Widget successCard({
    required BuildContext context,
    required String imageUrl,
    required String domain,
    required String title,
    required String description,
    required String readMoreDescription,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.broken_image,
                size: 100,
                color: Colors.grey,
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              domain,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 10),
          TextButton(
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
                                  title,
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
                            readMoreDescription,
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
            child: const Text(
              'Read More',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
