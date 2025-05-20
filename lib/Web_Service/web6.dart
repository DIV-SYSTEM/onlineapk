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
            'See how our cloud services have helped businesses across industries overcome challenges and achieve their goals.',
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
                        imageUrl: 'https://via.placeholder.com/400x200',
                        domain: 'Healthcare',
                        title: 'Healthcare Data Security Overhaul',
                        description:
                            'Implemented comprehensive cloud security measures for a healthcare provider, ensuring HIPAA compliance and protecting sensitive patient data while improving system performance.',
                      ),
                      successCard(
                        imageUrl: 'https://via.placeholder.com/400x200',
                        domain: 'E-commerce',
                        title: 'Scalable Infrastructure for Growing Start-Up',
                        description:
                            'Deployed scalable, cost-effective cloud hosting and auto-scaling solutions that allowed a fast-growing e-commerce brand to handle surges in traffic with ease.',
                      ),
                      successCard(
                        imageUrl: 'https://via.placeholder.com/400x200',
                        domain: 'Education',
                        title: 'Virtual Classroom Cloud Integration',
                        description:
                            'Built and secured a virtual learning platform using cloud tools, reducing downtime, enhancing collaboration, and improving access for thousands of students.',
                      ),
                    ],
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
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: isMobile ? 160 : 200,
              fit: BoxFit.cover,
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
