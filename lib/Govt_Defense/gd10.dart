import 'package:flutter/material.dart';

class GovtDefense4 extends StatelessWidget {
  const GovtDefense4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/need%20government%20%26%20defense.jpg',
        'domain': 'Government & Defense',
        'title': 'Secure Communication Network',
        'description': 'Deployed an encrypted communication system for a defense agency, ensuring secure data transfer and reducing breaches by 99%.',
        'readMoreDescription': 'Our secure communication system for a defense agency utilized end-to-end encryption, reducing data breaches by 99%. Hosted on AWS GovCloud, the solution supported 5,000+ users across classified networks with 99.99% uptime. Multi-level security architecture and secure voice/video communications cut latency by 30%. Integrated cross-domain solutions enabled seamless data exchange, ensuring NIST 800-53 compliance. This robust system enhanced mission-critical operations, safeguarding sensitive information and boosting operational reliability.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20%20Intelligence%20%26%20Surveillance.jpg',
        'domain': 'Government & Defense',
        'title': 'Real-Time Surveillance Platform',
        'description': 'Developed a surveillance platform for a national security agency, improving threat detection by 40% and processing 1TB+ data daily.',
        'readMoreDescription': 'We built a real-time surveillance platform for a national security agency, enhancing threat detection by 40%. Leveraging Azure Government and multi-source intelligence fusion, the system processed over 1TB of data daily. Geospatial analytics and pattern recognition reduced false positives by 50%. Secure data dissemination, compliant with FISMA, ensured integrity across 200+ nodes. This scalable solution improved situational awareness, enabling rapid, data-driven decisions in high-stakes defense operations.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/5%20defense%20Logistics%20chains.jpg',
        'domain': 'Government & Defense',
        'title': 'Defense Logistics Optimization',
        'description': 'Implemented a logistics management system for a defense contractor, reducing costs by 30% and improving resource allocation by 40%.',
        'readMoreDescription': 'Our logistics management system for a defense contractor optimized supply chain operations, cutting costs by 30%. Built on Azure IoT, the solution provided end-to-end visibility with asset tracking and inventory optimization. Predictive maintenance reduced equipment downtime by 50%, while logistics simulations improved resource allocation by 40%. Secure supplier collaboration via blockchain protected 500+ vendors. Compliant with DFARS, this system enhanced operational readiness and efficiency for mission-critical defense operations.'
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
            'See how our Government & Defense services have empowered organizations to address critical challenges and achieve their objectives.',
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
