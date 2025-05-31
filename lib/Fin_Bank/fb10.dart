import 'package:flutter/material.dart';

class FinanceBanking4 extends StatelessWidget {
  const FinanceBanking4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2%20digital%20%20banking.jpg',
        'domain': 'Finance & Banking',
        'title': 'Digital Banking Transformation',
        'description': 'Developed a modern digital banking platform for a regional bank, increasing customer engagement by 50% and reducing onboarding time by 60%.',
        'readMoreDescription': 'Our digital banking platform transformed a regional bank’s operations, boosting customer engagement by 50%. By integrating omnichannel access and mobile banking apps, we reduced onboarding time by 60%. The platform, built on AWS with secure APIs, supported 100,000+ users while ensuring PCI DSS compliance. AI-driven chatbots handled 80% of inquiries, and automated account management cut operational costs by 30%. This scalable solution enhanced user experience and positioned the bank as a digital leader.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/10.jpg',
        'domain': 'Finance & Banking',
        'title': 'Secure Payment Processing System',
        'description': 'Implemented a scalable payment processing system for a fintech firm, supporting multi-currency transactions and reducing fraud by 45%.',
        'readMoreDescription': 'We deployed a secure payment processing system for a fintech firm, enabling multi-currency transactions for 50,000+ users. Leveraging Stripe and Azure, the system reduced fraud by 45% through real-time monitoring. Digital wallet integration and recurring billing increased transaction volume by 35%. With end-to-end encryption and PCI DSS compliance, the solution cut processing costs by 25%. This robust system enhanced reliability and customer trust, driving global expansion.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/ai5.png',
        'domain': 'Finance & Banking',
        'title': 'AI-Driven Fraud Detection',
        'description': 'Built an AI-powered fraud detection system for a global bank, improving detection accuracy by 40% and saving \$1.5M annually.',
        'readMoreDescription': 'Our AI-driven fraud detection system for a global bank improved accuracy by 40%, saving \$1.5M annually. Using TensorFlow and AWS, the system analyzed 1M+ transactions daily, reducing false positives by 50%. Behavioral analytics and real-time monitoring identified 98% of suspicious activities. Integrated with Splunk, the solution provided actionable insights via dashboards. Compliant with GDPR and Basel III, it strengthened security and customer confidence, minimizing financial risks.'
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
            'See how our Finance & Banking services have empowered institutions to overcome challenges and achieve their goals.',
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
