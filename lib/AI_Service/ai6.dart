import 'package:flutter/material.dart';

class AI6 extends StatefulWidget {
  const AI6({Key? key}) : super(key: key);

  @override
  State<AI6> createState() => _AI6State();
}

class _AI6State extends State<AI6> with TickerProviderStateMixin {
  bool showStories = false;

  final List<Map<String, dynamic>> successStories = [
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/6%20E-commerce%20Performance%20Optimization.jpg',
      'domain': 'Retail',
      'title': 'AI-Driven E-Commerce Optimization',
      'description': 'Implemented an AI-powered recommendation engine for an e-commerce platform, increasing sales by 35% and reducing cart abandonment by 25%.',
      'readMoreDescription': 'Our AI-driven recommendation engine transformed a retail e-commerce platform, boosting sales by 35% through personalized product suggestions. Using machine learning models built with TensorFlow, we reduced cart abandonment by 25% with dynamic user behavior analysis. The solution, integrated into a Shopify store, achieved 99.9% uptime and supported 50,000+ daily users. Real-time analytics dashboards improved marketing decisions, increasing ROI by 20%. Secure API integrations ensured data privacy, while A/B testing optimized user engagement, enabling the retailer to scale and enhance customer satisfaction.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/4.jpg',
      'domain': 'Finance',
      'title': 'Fraud Detection System',
      'description': 'Developed an AI-based fraud detection system for a financial institution, reducing fraudulent transactions by 40% and improving detection accuracy by 90%.',
      'readMoreDescription': 'We built an AI-based fraud detection system for a financial institution, reducing fraudulent transactions by 40%. Leveraging AWS SageMaker and anomaly detection algorithms, the system achieved 90% accuracy in identifying suspicious activities. Integrated with existing banking platforms, it processed 1M+ transactions daily with minimal latency. Real-time alerts cut response times by 50%, saving Dollar 2M annually in losses. Robust encryption ensured compliance with GDPR, while continuous model retraining improved performance by 15%. This solution strengthened security and customer trust, enabling scalable fraud prevention.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/5%20Cloud%20Migration1.jpg',
      'domain': 'Healthcare',
      'title': 'AI-Powered Patient Support',
      'description': 'Deployed an AI chatbot for a healthcare provider, reducing support queries by 50% and improving patient satisfaction by 30%.',
      'readMoreDescription': 'Our AI-powered chatbot for a healthcare provider reduced support queries by 50% using natural language processing with Dialogflow. Integrated into a HIPAA-compliant portal, it handled 10,000+ patient interactions monthly, improving satisfaction by 30%. The chatbot offered appointment scheduling, FAQs, and triage support, cutting staff workload by 25%. Scalable on Azure, it ensured 99.99% uptime. Continuous learning improved response accuracy by 20%, while secure data handling maintained patient privacy. This solution enhanced operational efficiency and patient experience, setting a new standard for healthcare support.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F2),
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 30 : 50,
        horizontal: isMobile ? 16 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'AI Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Our AI solutions have empowered businesses to optimize operations, enhance security, and improve customer experiences.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                showStories = !showStories;
              });
            },
            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
            label: const Text(
              'Check Our Success Stories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 5,
              shadowColor: Colors.deepPurpleAccent.withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 30),
          ClipRect(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutCubic,
              reverseDuration: const Duration(milliseconds: 600),
              child: Align(
                alignment: Alignment.center,
                heightFactor: showStories ? 1.0 : 0.0,
                child: AnimatedOpacity(
                  opacity: showStories ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Column(
                    children: List.generate(
                      successStories.length,
                      (index) => successCard(
                        context: context,
                        imageUrl: successStories[index]['imageUrl'],
                        domain: successStories[index]['domain'],
                        title: successStories[index]['title'],
                        description: successStories[index]['description'],
                        readMoreDescription: successStories[index]['readMoreDescription'],
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
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
              width: double.infinity,
              height: isMobile ? 160 : 200,
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
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              domain,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
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
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
