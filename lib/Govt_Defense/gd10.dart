import 'package:flutter/material.dart';

class Cloud4 extends StatelessWidget {
  const Cloud4({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      color: const Color(0xFFF2F2F2),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Heading
          const Text(
            'Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'See how our cloud services have helped businesses across industries overcome challenges and achieve their goals.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // Cards
          Column(
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
          )
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
            onPressed: () {},
            child: const Text(
              'Read More',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}