import 'package:flutter/material.dart';

class Web6 extends StatefulWidget {
  const Web6({super.key});

  @override
  State<Web6> createState() => _Web6State();
}

class _Web6State extends State<Web6> {
  bool showStories = false;

  final List<Map<String, dynamic>> successStories = [
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/7%20E-commerce%20Security%20Solutions.jpg',
      'domain': 'Retail',
      'title': 'E-commerce Platform Redesign',
      'description': 'Redesigned and rebuilt an e-commerce platform resulting in a 45% increase in conversion rate and 30% reduction in cart abandonment. The new mobile-first approach led to a 60% increase in mobile sales.',
      'readMoreDescription': 'Our redesign of a major retail e-commerce platform transformed the user experience, driving a 45% increase in conversions. By adopting a mobile-first approach, we optimized navigation and checkout processes, reducing cart abandonment by 30%. The platform, built on Shopify with custom integrations, achieved a 60% surge in mobile sales. Features like personalized product recommendations and fast-loading pages, powered by a CDN, improved user engagement by 25%. Security enhancements, including PCI-compliant payment gateways, ensured safe transactions. The scalable architecture supports peak traffic during sales events, maintaining 99.9% uptime, empowering the retailer to expand their digital presence effectively.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Custom%20E-commerce%20Development.jpg',
      'domain': 'Technology',
      'title': 'SaaS Dashboard Application',
      'description': 'Developed a complex SaaS dashboard application with real-time data visualization, user management, and subscription handling. The intuitive UI design reduced onboarding time by 50%.',
      'readMoreDescription': 'We developed a SaaS dashboard application for a tech firm, streamlining operations with real-time data visualization and user management. Built with React and Node.js, the platform reduced onboarding time by 50% through an intuitive UI. Subscription handling was optimized with Stripe integration, increasing payment processing efficiency by 35%. Interactive charts and customizable widgets enhanced decision-making, while role-based access ensured security. The cloud-based architecture on AWS guaranteed 99.99% uptime, supporting 10,000+ active users. Our iterative testing and UX refinements boosted user satisfaction by 40%, enabling the client to scale their SaaS offering seamlessly.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/healthcare_1.jpg',
      'domain': 'Healthcare',
      'title': 'Healthcare Patient Portal',
      'description': 'Built a secure patient portal allowing users to schedule appointments, access medical records, and communicate with healthcare providers. The solution improved patient engagement by 65%.',
      'readMoreDescription': 'Our secure patient portal for a healthcare provider revolutionized patient interaction, boosting engagement by 65%. Developed using Angular and Firebase, the portal enables seamless appointment scheduling, medical record access, and secure messaging with providers. HIPAA-compliant encryption and multi-factor authentication protect sensitive data. The intuitive interface reduced appointment no-shows by 20% through automated reminders. Integration with EHR systems streamlined workflows, saving staff 15 hours weekly. The scalable platform supports 50,000+ users, with mobile optimization increasing access by 30%. This solution enhanced patient satisfaction and operational efficiency, setting a new standard for digital healthcare services.'
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Success Stories',
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
              'Explore some of our recent web development projects and the results we have achieved for our clients.',
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
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
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
