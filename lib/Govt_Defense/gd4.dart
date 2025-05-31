import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> solutions = [
    {
      'title': 'Secure Communication Systems',
      'icon': Icons.radio,
      'description':
          'Develop robust, encrypted communication systems that protect sensitive government and defense information. Our secure communication solutions ensure confidentiality, integrity, and availability of critical data across various security classifications.',
      'features': [
        'End-to-end encryption',
        'Multi-level security architecture',
        'Secure voice and video communications',
        'Cross-domain solutions',
        'Secure messaging and file transfer',
        'Emergency communication systems',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Secure%20Communications%20Platform.jpg',
      'learnMoreDescription': 'Our Secure Communication Systems safeguard sensitive government data with end-to-end encryption. For a defense agency, we deployed a multi-level security architecture, reducing data breaches by 99%. Secure voice and video communications, powered by proprietary protocols, supported 5,000+ users across classified networks. Cross-domain solutions enabled seamless data transfer, cutting latency by 30%. Integrated with AWS GovCloud, this system ensured compliance with NIST standards, enhancing mission-critical communication reliability and security.'
    },
    {
      'title': 'Intelligence & Surveillance',
      'icon': Icons.remove_red_eye,
      'description':
          'Implement advanced intelligence gathering and surveillance systems that provide actionable insights for government and defense operations. Our solutions integrate multiple data sources and employ sophisticated analytics to enhance situational awareness and decision-making capabilities.',
      'features': [
        'Multi-source intelligence fusion',
        'Real-time surveillance analytics',
        'Pattern recognition and anomaly detection',
        'Geospatial intelligence systems',
        'Signal intelligence processing',
        'Secure data collection and dissemination',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20%20Intelligence%20%26%20Surveillance.jpg',
      'learnMoreDescription': 'Our Intelligence & Surveillance solutions enhance government operations with real-time insights. For a national security agency, we integrated multi-source intelligence fusion, improving threat detection by 40%. Real-time analytics and geospatial systems, hosted on Azure Government, processed 1TB+ of data daily. Pattern recognition reduced false positives by 50%, while secure dissemination ensured data integrity. This scalable solution, compliant with FISMA, boosted situational awareness, enabling faster, data-driven decisions in high-stakes environments.'
    },
    {
      'title': 'Cybersecurity Solutions',
      'icon': Icons.security,
      'description':
          'Protect critical government and defense infrastructure with comprehensive cybersecurity solutions. Our systems defend against sophisticated cyber threats, ensure compliance with security standards, and provide continuous monitoring and incident response capabilities.',
      'features': [
        'Advanced threat detection and prevention',
        'Security information and event management',
        'Vulnerability assessment and management',
        'Incident response automation',
        'Zero trust architecture implementation',
        'Supply chain security assurance',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2%20CYBERSECURITY.jpg',
      'learnMoreDescription': 'Our Cybersecurity Solutions fortify government infrastructure against cyber threats. For a federal agency, we implemented zero trust architecture, reducing intrusions by 60%. Advanced threat detection, powered by Splunk and AWS, identified 95% of anomalies in real-time. Automated incident response cut recovery time by 70%, while vulnerability assessments ensured NIST 800-53 compliance. Supply chain security measures protected 200+ vendors, enhancing overall resilience. This robust system safeguarded critical assets and maintained operational continuity.'
    },
    {
      'title': 'Mission-Critical Systems',
      'icon': Icons.memory,
      'description':
          'Develop and maintain high-reliability systems for mission-critical government and defense operations. Our solutions are engineered for exceptional performance, availability, and resilience in demanding environments and high-stakes scenarios.',
      'features': [
        'High-availability architecture',
        'Fault-tolerant system design',
        'Real-time processing capabilities',
        'Disaster recovery solutions',
        'Redundant infrastructure',
        'Performance optimization',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/4%20%20Mission-Critical%20Systems.jpg',
      'learnMoreDescription': 'Our Mission-Critical Systems ensure reliability for defense operations. For a military command center, we deployed a high-availability architecture with 99.999% uptime. Fault-tolerant design and real-time processing, hosted on Google Cloud, supported 10,000+ transactions per second. Disaster recovery solutions reduced downtime by 80%, while redundant infrastructure ensured continuity. Performance optimizations cut latency by 40%. Compliant with DoD standards, this system delivered unmatched resilience, enabling seamless operations in high-stakes scenarios.'
    },
    {
      'title': 'Public Sector Digital Transformation',
      'icon': Icons.apartment,
      'description':
          'Modernize government operations with comprehensive digital transformation solutions. Our approach combines technology innovation with process optimization to enhance citizen services, improve operational efficiency, and enable data-driven decision making across public sector organizations.',
      'features': [
        'Citizen service portals',
        'Digital workflow automation',
        'Legacy system modernization',
        'Cloud migration strategies',
        'Data integration and analytics',
        'Mobile government solutions',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Public%20Sector%20Digital%20Transformation2.jpg',
      'learnMoreDescription': 'Our Public Sector Digital Transformation solutions modernize government services. For a municipal agency, we developed citizen service portals, increasing user engagement by 50%. Digital workflow automation, integrated with ServiceNow, reduced processing times by 60%. Legacy system modernization and cloud migration to AWS GovCloud saved \$1.5M annually. Data analytics enhanced decision-making, improving service delivery by 35%. Mobile solutions boosted accessibility for 100,000+ citizens. This transformation ensured efficiency and compliance with FedRAMP standards.'
    },
    {
      'title': 'Defense Logistics & Supply Chain',
      'icon': Icons.language,
      'description':
          'Optimize defense logistics and supply chain operations with intelligent management systems. Our solutions provide end-to-end visibility, enhance resource allocation, and improve operational readiness through advanced tracking, forecasting, and inventory management capabilities.',
      'features': [
        'Asset tracking and management',
        'Inventory optimization',
        'Predictive maintenance',
        'Supply chain visibility',
        'Logistics planning and simulation',
        'Secure supplier collaboration',
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/5%20defense%20Logistics%20chains.jpg',
      'learnMoreDescription': 'Our Defense Logistics & Supply Chain solutions enhance operational readiness. For a defense contractor, we implemented asset tracking and inventory optimization, reducing costs by 30%. Predictive maintenance, powered by Azure IoT, cut equipment downtime by 50%. Supply chain visibility and logistics simulation improved resource allocation by 40%. Secure supplier collaboration, using blockchain, ensured data integrity across 500+ vendors. Compliant with DFARS, this system streamlined operations, boosting efficiency and mission success.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our Government & Defense IT Solutions',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We offer a comprehensive suite of IT solutions designed to address the unique challenges and security requirements of government and defense organizations.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(solutions.length, (index) {
              return ChoiceChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(solutions[index]['icon'], size: 18),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        solutions[index]['title'],
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                selected: selectedIndex == index,
                onSelected: (_) {
                  setState(() {
                    selectedIndex = selectedIndex == index ? null : index;
                  });
                },
                selectedColor: Colors.redAccent.shade100,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.grey),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          if (selectedIndex != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 8)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    solutions[selectedIndex!]['title'],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle, color: Colors.green),
                            const SizedBox(width: 8),
                            Expanded(child: Text(feature)),
                          ],
                        ),
                      )),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      solutions[selectedIndex!]['image'],
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        height: 200,
                        child: const Center(child: Text('Image not found')),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
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
                                            solutions[selectedIndex!]['title'],
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
                                      solutions[selectedIndex!]['learnMoreDescription'],
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
