import 'package:flutter/material.dart';

class RealEstate4 extends StatelessWidget {
  const RealEstate4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Public%20Sector%20Digital%20Transformation2.jpg',
        'domain': 'Real Estate & Construction',
        'title': 'Smart Property Management System',
        'description': 'Developed a cloud-based property management platform for a real estate firm, improving tenant satisfaction by 40% and reducing operational costs by 30%.',
        'readMoreDescription': 'Our smart property management system revolutionized a real estate firm’s operations, enhancing tenant satisfaction by 40%. Built on AWS with React, the platform streamlined lease management and maintenance requests for 10,000+ properties. Automated workflows and real-time analytics reduced operational costs by 30%. Secure tenant portals, integrated with Firebase, ensured GDPR compliance. This scalable solution improved response times by 50%, boosting efficiency and tenant retention.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Commercial%20Property%20Management%20Platform.jpg',
        'domain': 'Real Estate & Construction',
        'title': 'Construction Project Management Platform',
        'description': 'Implemented a project management solution for a construction company, increasing project delivery efficiency by 35% and reducing delays by 45%.',
        'readMoreDescription': 'We deployed a construction project management platform for a leading firm, improving delivery efficiency by 35%. Using Azure and Angular, the solution integrated scheduling, budgeting, and resource allocation for 200+ projects. Real-time dashboards and IoT-enabled tracking reduced delays by 45%. Secure document management, compliant with ISO 27001, streamlined collaboration across 500+ stakeholders. This robust system enhanced transparency, saving \$1M annually in operational costs.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Virtual%20Property%20Solutions.jpg',
        'domain': 'Real Estate & Construction',
        'title': 'Virtual Property Tour Platform',
        'description': 'Created a virtual tour platform for a real estate agency, boosting property inquiries by 50% and reducing in-person visits by 60%.',
        'readMoreDescription': 'Our virtual property tour platform transformed a real estate agency’s sales process, increasing inquiries by 50%. Built with Unity and hosted on Google Cloud, the solution offered immersive 3D tours for 5,000+ listings. Integrated with CRM systems, it reduced in-person visits by 60%. Secure data handling ensured GDPR compliance, while mobile accessibility boosted engagement by 40%. This innovative platform accelerated sales cycles and enhanced buyer experiences.'
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
            'See how our Real Estate & Construction services have empowered businesses to overcome challenges and achieve their goals.',
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
                                    fontWeight: FontWeight.bold),
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
