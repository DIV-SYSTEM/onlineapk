import 'package:flutter/material.dart';

class Cloud4 extends StatelessWidget {
  const Cloud4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<Map<String, dynamic>> caseStudies = [
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/automobile_8.jpg',
        'domain': 'Automotive',
        'title': 'Connected Vehicle Platform Deployment',
        'description':
            'Developed a connected vehicle platform for a leading automaker, enabling real-time telematics, over-the-air updates, and enhanced driver experiences, resulting in a 30% increase in customer engagement.',
        'readMoreDescription':
            'We collaborated with a top-tier automaker to deploy a state-of-the-art connected vehicle platform across their new SUV lineup. The solution integrated real-time telematics for vehicle diagnostics, over-the-air software updates, and a mobile app for remote control of features like climate and locking. By leveraging cloud-based infrastructure, we ensured seamless data flow between vehicles and the manufacturer’s servers. The platform’s intuitive interface boosted driver interaction, leading to a 30% increase in customer engagement through app usage. Dealerships reported a 20% reduction in service times due to predictive maintenance alerts. The scalable architecture supports future features like V2X communication, positioning the automaker as a leader in connected mobility.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/automobile_9.jpg',
        'domain': 'Automotive',
        'title': 'Smart Manufacturing Optimization',
        'description':
            'Implemented a smart factory solution for an automotive supplier, integrating IoT and AI to streamline production lines, reducing downtime by 25% and improving output efficiency.',
        'readMoreDescription':
            'Our team transformed the production capabilities of a major automotive parts supplier by deploying a smart factory solution. We integrated IoT sensors across assembly lines to monitor equipment health in real-time, coupled with AI-driven analytics to predict maintenance needs. Digital twins of critical machinery enabled virtual testing of process changes, minimizing disruptions. The solution reduced unplanned downtime by 25% through proactive maintenance, while optimized workflows increased output efficiency by 18%. Workers accessed real-time dashboards via tablets, improving decision-making on the shop floor. The supplier achieved a 15% reduction in production costs, enhancing competitiveness in the global market and enabling rapid scaling for new product lines.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/automobile_10.jpg',
        'domain': 'Automotive',
        'title': 'Autonomous Driving Feature Integration',
        'description':
            'Integrated advanced autonomous driving features for a luxury car brand, enhancing safety and user experience with AI-powered navigation, achieving a 40% improvement in driver assistance accuracy.',
        'readMoreDescription':
            'We partnered with a luxury car manufacturer to integrate cutting-edge autonomous driving features into their flagship sedan. The solution incorporated AI-powered navigation, LIDAR-based obstacle detection, and adaptive cruise control with lane-keeping assist. Our team optimized sensor data processing to ensure real-time responsiveness, achieving a 40% improvement in driver assistance accuracy compared to previous models. Rigorous testing in diverse environments ensured compliance with safety standards. Drivers reported higher confidence in the vehicle’s autonomous capabilities, with a 35% increase in feature usage. The integration paved the way for Level 3 autonomy, positioning the brand at the forefront of the autonomous vehicle market and attracting tech-savvy consumers.',
      },
    ];

    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Heading
          const Text(
            'Automotive Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Discover how our automotive services have empowered businesses to innovate, optimize operations, and enhance driver experiences.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Cards
          Column(
            children: List.generate(
              caseStudies.length,
              (index) => successCard(
                context: context,
                imageUrl: caseStudies[index]['imageUrl'],
                domain: caseStudies[index]['domain'],
                title: caseStudies[index]['title'],
                description: caseStudies[index]['description'],
                readMoreDescription: caseStudies[index]['readMoreDescription'],
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
          // Image
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

          // Domain Tag
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

          // Title
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Description
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 10),

          // Read More
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
