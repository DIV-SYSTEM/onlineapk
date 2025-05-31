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
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/healthcare_8.jpg',
        'domain': 'Healthcare',
        'title': 'Regional Health System EHR Optimization',
        'description':
            'Implemented comprehensive EHR optimization for a 12-hospital regional health system, enhancing clinical workflows, reducing documentation time, and improving care coordination. The solution included custom clinical templates, streamlined order sets, and integrated decision support tools, resulting in a 42% reduction in documentation time and 35% improvement in clinician satisfaction scores.',
        'readMoreDescription':
            'Our team partnered with a 12-hospital regional health system to overhaul their Electronic Health Record (EHR) system, which was plagued by inefficiencies and clinician burnout. We conducted a thorough workflow analysis and implemented custom clinical templates tailored to each specialty, reducing redundant data entry. Streamlined order sets and embedded decision support tools, such as real-time alerts for drug interactions, enhanced care quality. Integration with existing systems ensured seamless data flow. Post-implementation, documentation time dropped by 42%, allowing clinicians to spend more time with patients. Clinician satisfaction scores rose by 35%, and patient wait times decreased due to improved care coordination. The solution scaled across all hospitals, setting a new standard for operational excellence.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/healthcare_9.jpg',
        'domain': 'Healthcare',
        'title': 'Telehealth Platform Implementation',
        'description':
            'Developed and deployed an enterprise telehealth platform for a large healthcare network, enabling virtual care delivery across multiple specialties. The solution included secure video consultations, remote monitoring integration, and EHR connectivity, resulting in 68% increase in patient access, 24% reduction in no-show rates, and \$4.2M annual savings in operational costs.',
        'readMoreDescription':
            'We designed a robust telehealth platform for a healthcare network serving over 500,000 patients annually, addressing the challenge of limited access to specialty care in rural areas. The platform featured HIPAA-compliant video consultations, integrated remote monitoring for chronic conditions, and seamless EHR connectivity for real-time data updates. Patients could schedule virtual visits, access lab results, and receive e-prescriptions through a user-friendly portal. Clinicians benefited from embedded diagnostic tools and automated follow-up reminders. The implementation led to a 68% increase in patient access, particularly for underserved communities, and a 24% drop in no-show rates due to convenient virtual options. Operational costs decreased by \$4.2M annually, driven by reduced in-person visit overheads and optimized staff scheduling.',
      },
      {
        'imageUrl':
            'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/healthcare_10.jpg',
        'domain': 'Healthcare',
        'title': 'Healthcare Analytics Platform',
        'description':
            'Implemented an advanced healthcare analytics platform for a major academic medical center, integrating clinical, operational, and financial data to drive improvements. The solution provided real-time dashboards, predictive models for patient deterioration, and population health insights, resulting in 15% reduction in readmissions, 22% improvement in resource utilization, and enhanced quality metrics across service lines.',
        'readMoreDescription':
            'For a leading academic medical center, we deployed a sophisticated analytics platform to unify disparate data sources and empower data-driven decision-making. The platform aggregated clinical, operational, and financial data, offering real-time dashboards for hospital administrators and predictive models to identify patients at risk of deterioration. Population health insights enabled targeted interventions for high-risk groups, such as diabetic patients. The system’s intuitive interface allowed clinicians to access actionable insights without extensive training. Outcomes included a 15% reduction in 30-day readmissions, achieved through proactive care plans, and a 22% improvement in resource utilization by optimizing bed allocation and staffing. Quality metrics, such as patient satisfaction and infection rates, improved across all service lines, reinforcing the center’s reputation for excellence.',
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
            'Healthcare Case Studies',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Explore how our solutions have helped healthcare organizations overcome challenges, enhance patient care, and achieve operational excellence.',
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
