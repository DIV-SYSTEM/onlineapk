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
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_3.jpg',
        'domain': 'Healthcare',
        'title': 'Healthcare Data Security Overhaul',
        'description':
            'Implemented comprehensive cloud security measures for a healthcare provider, ensuring HIPAA compliance and protecting sensitive patient data while improving system performance.',
        'readMoreDescription':
            'Our team transformed a healthcare provider’s data security framework by deploying a robust cloud-based solution aligned with HIPAA regulations. We integrated advanced encryption, multi-factor authentication, and real-time threat monitoring across their AWS infrastructure. This overhaul reduced potential vulnerabilities by 60%, safeguarding sensitive patient records. Performance optimizations, including load balancing and auto-scaling, improved system response times by 25%, enhancing patient care delivery. Regular compliance audits and automated reporting streamlined regulatory adherence, saving 40 hours monthly in administrative tasks. The solution’s scalability ensures future-proofing, allowing the provider to expand telehealth services confidently while maintaining top-tier data protection and operational efficiency.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_2.jpg',
        'domain': 'E-commerce',
        'title': 'Scalable Infrastructure for Growing Start-Up',
        'description':
            'Deployed scalable, cost-effective cloud hosting and auto-scaling solutions that allowed a fast-growing e-commerce brand to handle surges in traffic with ease.',
        'readMoreDescription':
            'We empowered a fast-growing e-commerce startup by implementing a scalable cloud infrastructure on Azure. Our solution featured auto-scaling instances and content delivery networks to manage traffic spikes during sales events, achieving 99.99% uptime. Cost optimizations reduced hosting expenses by 30%, reallocating savings to marketing efforts. Load testing ensured the platform handled 10x normal traffic without latency issues, boosting customer satisfaction by 20%. Real-time analytics dashboards enabled the brand to monitor user behavior and optimize product listings, increasing conversions by 15%. The flexible architecture supports rapid expansion, positioning the startup to enter new markets seamlessly while maintaining performance and reliability.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_5.jpg',
        'domain': 'Education',
        'title': 'Virtual Classroom Cloud Integration',
        'description':
            'Built and secured a virtual learning platform using cloud tools, reducing downtime, enhancing collaboration, and improving access for thousands of students.',
        'readMoreDescription':
            'We developed a secure virtual classroom platform for an educational institution using GCP’s cloud tools, supporting 10,000+ students across hybrid learning environments. The platform offers real-time video conferencing, interactive whiteboards, and breakout rooms, reducing downtime by 50%. Enhanced security measures, including single sign-on and data encryption, protect student data while meeting GDPR requirements. Integration with learning management systems streamlined course delivery, increasing student engagement by 30%. Cloud-based collaboration tools improved group project completion rates by 25%. The scalable infrastructure ensures reliable access on low-spec devices, broadening educational reach. Our solution cut IT maintenance costs by 35%, enabling the institution to focus on delivering high-quality education.',
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
            'See how our cloud services have helped businesses across industries overcome challenges and achieve their goals.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),
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
