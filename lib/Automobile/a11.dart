import 'package:flutter/material.dart';

class Cloud5 extends StatefulWidget {
  const Cloud5({super.key});

  @override
  State<Cloud5> createState() => _Cloud5State();
}

class _Cloud5State extends State<Cloud5> {
  List<bool> isExpandedList = [false, false, false, false, false];

  final List<Map<String, String>> faqList = [
    {
      'question': 'How do ensure the security of connected vehicle systems?',
      'answer':
          'We implement multi-layered security protocols ranging from embedded software hardening to real-time threat detection and response. Our cyber security framework complies with ISO 21434 and UNECE WP.29 standards to safeguard vehicles from unauthorized access, data breaches, and remote exploits.',
    },
    {
      'question': 'Can You Integrate with existing automotive systems and platforms?',
      'answer':
          'Completely, whether you are running legacy systems or next-gen platforms, our modular architecture and API-driven approach ensure seamless integration. We specialize in bridging communication between disparate ECUs, telematics systems, and OEM cloud platforms without disrupting your existing workflows.',
    },
    {
      'question': 'What experience do you have with autonomous vehicle technologies?',
      'answer':
          'Our team has deep skill in L1–L5 autonomy, covering areas such as sensor fusion, machine vision, LiDAR processing, and real-time decision engines. We have partnered with leading OEMs and startups to accelerate their AV initiatives from prototype to production.',
    },
    {
      'question': 'What is your approach to scaling automotive IoT Solutions?',
      'answer':
          'Scalability is built into our DNA. We use edge computing, cloud-native services, and over-the-air (OTA) update mechanisms to ensure that your IoT ecosystem grows effortlessly from a fleet of ten to ten thousand. Whether it’s predictive maintenance or real-time telematics, our solutions scale as your needs evolve.',
    },
    {
      'question': 'How do you approach data privacy in automotive solutions?',
      'answer':
          'We treat data privacy as an essential design opinion. From anonymizing user data to enforcing end-to-end encryption and secure user consent protocols, our solutions are built to meet both customer expectations and legal mandates like CCPA and GDPR.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Header
          const Text(
            'Frequently Asked Questions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Find answers to common questions about our automotive IT Services.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),

          // FAQ List
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: faqList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpandedList[index] = !isExpandedList[index];
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
                          Flexible(
                            child: Text(
                              faqList[index]['question']!,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Icon(
                            isExpandedList[index]
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 26,
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Answer section
                  if (isExpandedList[index])
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Text(
                        faqList[index]['answer']!,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}