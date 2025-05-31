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
      'question': 'How do you handle security clearances and classified telecommunications projects?',
      'answer':
          'We maintain a dedicated team with active security clearances across various levels to support classified telecommunications initiatives. Our infrastructure includes secure telecom labs and SCIF-compliant zones for working on sensitive communication systems. For classified telecom projects, we ensure all equipment and transmission pathways meet federal standards. We enforce strict separation between classified and unclassified networks, and collaborate with government security officials to ensure our telecom solutions are fully compliant with classified information handling protocols.',
    },
    {
      'question': 'What experience do you have withtelecom-releated government compliance frameworks?',
      'answer':
          'Our telecom solutions are designed in compliance with government frameworks such as NIST SP 800-53, NIST SP 800-171, FISMA, FedRAMP, and CMMC. We’ve worked on secure telecom infrastructure projects requiring adherence to the Risk Management Framework (RMF) and specific agency telecom standards. Our engineers and cybersecurity experts implement and document telecom-specific security controls, secure data transmission protocols, and encryption standards to ensure full lifecycle compliance.',
    },
    {
      'question': 'Can you integrate yore telecom solutions ?',
      'answer':
          'Yes, we specialize in integrating modern telecom systems with existing government networks including DoD communications, first responder systems, and legacy PSTN or VoIP networks. We understand the challenges of hybrid telecom environments and implement secure interconnection points, protocol converters, and compliant encryption to ensure interoperability. Our experience spans LTE/5G, tactical radio, satellite communications, and secure VoIP systems in government deployments.',
    },
    {
      'question': 'How do you approach security in government and defense telecom solutions?',
      'answer':
          'We implement defense-in-depth strategies specific to telecom networks, including end-to-end encryption, secure signaling protocols (like SIP-TLS and SRTP), and network segmentation. We follow NIST 800-series standards and design for resilience against telecom-specific threats such as spoofing, jamming, and interception. Our telecom solutions also include network behavior monitoring and threat intelligence integration for proactive defense across the entire communications stack.',
    },
    {
      'question': 'Whta is your appraoch to handling sensitive but unclassified(SBU) telecom data ?',
      'answer':
          'For telecom-related SBU data such as Controlled Unclassified Information (CUI) in call records or network configurations, we enforce strict access control, encrypted storage and transmission, and detailed audit logging. We implement compliance with NIST SP 800-171 and FOUO guidelines, ensuring telecom metadata and signaling information are safeguarded. Our teams are trained in secure telecom data handling, especially in environments where confidentiality, availability, and integrity are mission-critical.',
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
            'Find answers to common questions about our telecom capabilities, technology stack, implementation process, and support.',
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
