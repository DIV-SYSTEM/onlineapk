import 'package:flutter/material.dart';

class Telecom4 extends StatelessWidget {
  const Telecom4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%205G%20Core%20Network%20Modernization.jpg',
        'domain': 'Telecommunication',
        'title': '5G Network Optimization',
        'description': 'Enhanced 5G network performance for a telecom provider, increasing data speeds by 50% and reducing latency by 40%.',
        'readMoreDescription': 'Our 5G network optimization solution transformed a telecom provider’s infrastructure, boosting data speeds by 50%. Leveraging Nokia’s AirScale and AWS, we reduced latency by 40% for 1M+ users. AI-driven traffic management improved bandwidth allocation, ensuring 99.9% uptime. Secure APIs and edge computing enhanced IoT connectivity for 10,000+ devices. Compliant with 3GPP standards, this scalable system improved customer satisfaction and supported seamless streaming and real-time applications.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Regulatory%20Compiance.jpg',
        'domain': 'Telecommunication',
        'title': 'Unified Customer Experience Platform',
        'description': 'Implemented a unified customer platform for a telecom operator, improving retention by 30% and reducing support tickets by 45%.',
        'readMoreDescription': 'We developed a unified customer experience platform for a telecom operator, increasing retention by 30%. Built on Salesforce and Azure, the solution integrated billing, support, and account management for 500,000+ users. AI-powered chatbots resolved 70% of queries, cutting support tickets by 45%. Real-time analytics dashboards enhanced service personalization, boosting upsell rates by 20%. GDPR-compliant data handling ensured security, delivering a seamless experience and operational efficiency.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/ai4.png',
        'domain': 'Telecommunication',
        'title': 'IoT Network Scalability',
        'description': 'Deployed a scalable IoT network for a telecom firm, supporting 100,000+ devices and reducing operational costs by 35%.',
        'readMoreDescription': 'Our IoT network solution for a telecom firm supported 100,000+ devices, reducing costs by 35%. Using Cisco’s IoT platform and Google Cloud, we ensured 99.99% connectivity for smart devices. Predictive maintenance algorithms cut downtime by 50%, while secure device management complied with ETSI standards. Real-time monitoring dashboards optimized resource usage, saving \$2M annually. This scalable system enabled rapid IoT expansion, enhancing smart city and industrial applications.'
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
            'See how our Telecommunication services have empowered providers to overcome challenges and achieve their goals.',
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
