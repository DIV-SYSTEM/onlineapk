import 'package:flutter/material.dart';

class Web6 extends StatefulWidget {
  const Web6({super.key});

  @override
  State<Web6> createState() => _Web6State();
}

class _Web6State extends State<Web6> with TickerProviderStateMixin {
  bool showStories = false;

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
            // Heading
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

            // Subtext
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

            // Toggle Button
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

            // Success Stories Area with custom animation
            ClipRect(
              child: AnimatedSize(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInOutCubic,
                reverseDuration: const Duration(milliseconds: 600),
                vsync: this,
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: showStories ? 1.0 : 0.0,
                  child: AnimatedOpacity(
                    opacity: showStories ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                    child: Column(
                      children: [
                        successCard(
                          imageUrl: 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/7%20E-commerce%20Security%20Solutions.jpg',
                          domain: 'Retail',
                          title: 'E-commerce Platform Redesign',
                          description:
                              'Redesigned and rebuilt an e-commerce platform resulting in a 45% increase in conversion rate and 30% reduction in cart abandonment. The new mobile-first approach led to a 60% increase in mobile sales.',
                        ),
                        successCard(
                          imageUrl: 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Custom%20E-commerce%20Development.jpg',
                          domain: 'Technology',
                          title: 'SaaS Dashboard Application',
                          description:
                              'Developed a complex SaaS dashboard application with real-time data visualization, user management, and subscription handling. The intuitive UI design reduced onboarding time by 50%.',
                        ),
                        successCard(
                          imageUrl: 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/healthcare_1.jpg',
                          domain: 'Healthcare',
                          title: 'Healthcare Patient Portal',
                          description:
                              'Built a secure patient portal allowing users to schedule appointments, access medical records, and communicate with healthcare providers. The solution improved patient engagement by 65%.',
                        ),
                      ],
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
    required String imageUrl,
    required String domain,
    required String title,
    required String description,
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
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 16 / 9, // Adjust based on your image's aspect ratio
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

          // Domain Tag
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

          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),

          // Description
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),

          // Read More
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Read More',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
