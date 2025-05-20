import 'package:flutter/material.dart';

class Cloud5 extends StatefulWidget {
  const Cloud5({super.key});

  @override
  State<Cloud5> createState() => _Cloud5State();
}

class _Cloud5State extends State<Cloud5> {
  List<bool> isExpandedList = [false, false, false, false, false,false,false];

  final List<Map<String, String>> faqList = [
    {
      'question': 'How do you handle security clearances and classified projects?',
      'answer':
      'We maintain a team of cleared personnel with various levels of security clearances to support classified projects. Our facilities include secure areas that meet government standards for handling classified information, including SCIFs (Sensitive Compartmented Information Facilities) where required. We follow all relevant security protocols for classified information handling, and our processes are designed to maintain proper separation between classified and unclassified information. For projects requiring classified work, we establish dedicated project teams with appropriate clearances and implement need-to-know protocols. We also coordinate with government security officers to ensure compliance with all applicable security requirements and reporting procedures throughout the project lifecycle.',
    },
    {
      'question': 'What experience do you have with government compliance frameworks?',
      'answer':
      'We have extensive experience with government compliance frameworks including NIST SP 800-53, FISMA, FedRAMP, CMMC, RMF, and agency-specific requirements. Our team includes certified security professionals familiar with the assessment and authorization process for federal systems. We maintain documented processes for implementing security controls, preparing authorization packages, and supporting continuous monitoring requirements. Our solutions are designed with compliance in mind from the beginning, incorporating security controls as foundational elements rather than afterthoughts.',
    },
    {
      'question': 'Can you integrate with existing government systems and networks?',
      'answer':
      'Yes, we specialize in integrating with existing government systems and networks. Our team has experience working with various government platforms including DoD networks, intelligence community systems, federal civilian agency environments, and state/local government infrastructures. We understand the unique challenges of government IT environments, including legacy systems, strict security boundaries, and complex approval processes. We use a combination of standard interfaces, custom adapters, and secure gateways to enable interoperability while maintaining security controls and data protections required in government environments.',
    },
    {
      'question': 'How do you approach security in government and defense solutions?',
      'answer':
      'We implement a defense-in-depth security approach for government and defense solutions, with security integrated throughout the development lifecycle. This begins with threat modeling and security requirements analysis, continues through secure architecture design and development practices, and extends to comprehensive security testing and continuous monitoring. We adhere to relevant security standards like NIST 800-53, implement zero trust principles where appropriate, and design systems to operate in contested environments. For defense systems, we incorporate additional security measures specific to military requirements, including cross-domain solutions and tactical considerations for deployed environments.',
    },
    {
      'question': 'What is your approach to handling sensitive but unclassified (SBU) data?',
      'answer':
      'For sensitive but unclassified (SBU) data, we implement appropriate safeguards based on the specific data types and applicable regulations. This includes categories like CUI (Controlled Unclassified Information), FOUO (For Official Use Only), and other sensitive data types. We apply the principle of least privilege for access controls, implement encryption for data at rest and in transit, maintain detailed audit logs, and ensure proper data handling procedures are followed. Our solutions comply with relevant standards like NIST SP 800-171 for CUI protection, and we provide training to ensure all team members understand proper handling procedures for different data sensitivity levels.',
    },
    {
      'question': 'Do you provide solutions that work in disconnected or low-bandwidth environments?',
      'answer':
      'Yes, we design solutions specifically for disconnected, intermittent, and limited bandwidth (DIL) environments common in defense and field operations. Our approach includes local processing capabilities, efficient data synchronization when connectivity is available, prioritized transmission of critical information, and graceful degradation of functionality based on available bandwidth. We employ techniques like data compression, differential synchronization, and edge computing to maximize functionality in constrained environments. For defense applications, we also consider electromagnetic spectrum constraints and tactical communication limitations in our designs.',
    },
    {
      'question': 'How do you support the Authority to Operate (ATO) process?',
      'answer':
      'We provide comprehensive support for the Authority to Operate (ATO) process, including preparation of all required documentation for security assessment and authorization packages. This includes system security plans (SSP), security assessment reports (SAR), plans of action and milestones (POA&M), and other artifacts required by the authorizing agency. Our team works closely with government security personnel to address questions, provide evidence of security control implementation, support security control assessments, and remediate any identified issues. We have experience with various authorization frameworks including RMF, FedRAMP, and agency-specific processes, and can tailor our approach to meet your specific authorization requirements.',
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
            'Frequently Asked Questions ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Find answers to common questions  and how we can help your business scale online.',
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