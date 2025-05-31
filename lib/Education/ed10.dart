import 'package:flutter/material.dart';

class EduTech4 extends StatelessWidget {
  const EduTech4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> successStories = [
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Adaptive%20Learning%20Platform.jpg',
        'domain': 'Edu-Tech',
        'title': 'Personalized Learning Platform',
        'description': 'Developed a tailored learning management system for an Edu-Tech startup, enhancing student engagement by 40% and streamlining content delivery for educators.',
        'readMoreDescription': 'Our team built a personalized learning management system for an Edu-Tech startup, integrating adaptive learning algorithms to boost student engagement by 40%. Using AWS cloud infrastructure, we ensured 99.99% uptime and seamless content delivery for 10,000+ users. The platform’s AI-driven recommendations improved learning outcomes by 30%, while an intuitive dashboard simplified course management for educators. Secure user authentication and data encryption ensured compliance with privacy standards, enabling the startup to scale rapidly and enhance educational experiences.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/University%20LMS%20Implementation.jpg',
        'domain': 'Edu-Tech',
        'title': 'Virtual Classroom Integration',
        'description': 'Implemented a scalable virtual classroom solution for an online education provider, reducing latency by 50% and increasing student participation by 35%.',
        'readMoreDescription': 'We deployed a scalable virtual classroom solution for an online education provider, leveraging WebRTC for real-time video streaming, reducing latency by 50%. The platform, hosted on Azure, supported 5,000 concurrent users with 99.9% reliability. Interactive features like live polls and breakout rooms increased student participation by 35%. Secure cloud storage and end-to-end encryption protected sensitive data, while a user-friendly interface improved accessibility. This solution empowered the provider to deliver high-quality education globally, enhancing both engagement and scalability.'
      },
      {
        'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Data%20Security%20%26%20Compliance%20in%20Education.jpg',
        'domain': 'Edu-Tech',
        'title': 'AI-Powered Assessment Tool',
        'description': 'Created an AI-driven assessment platform for a university, automating grading processes and improving evaluation accuracy by 45%.',
        'readMoreDescription': 'Our AI-powered assessment platform transformed grading for a university, automating evaluations with 45% improved accuracy. Built with TensorFlow and hosted on Google Cloud, the system processed 20,000+ assessments monthly, reducing faculty workload by 60%. Machine learning models provided detailed performance analytics, enhancing student feedback. Secure APIs ensured data integrity, while a responsive design supported mobile access. This solution streamlined academic operations, saved 200+ hours monthly, and elevated the quality of education through precise, data-driven insights.'
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
            'See how our Edu-Tech services have empowered educational institutions and startups to achieve their goals.',
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
