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
      'question': 'How do you ensure security and privacy in your real estate solutions?',
      'answer':
          'We implement comprehensive security measures including encrypted data storage, secure API protocols, role-based access controls, and audit logging. Our solutions comply with GDPR, state privacy laws, and industry standards to protect sensitive client and transaction information throughout the entire process.',
    },
    {
      'question': 'Can your solutions integrate with our existing MLS and property management systems?',
      'answer':
          'Absolutely! Our integration specialists have extensive experience with major platforms including Salesforce Real Estate, Procore, MLS systems, and property management software. We use industry-standard APIs and data formats to ensure seamless integration with minimal disruption to your existing workflows.',
    },
    {
      'question': 'How do you approach user adoption and training for new ewal estate technology?',
      'answer':
          'We provide comprehensive training programs tailored to different user roles - agents, property managers, contractors, and administrators. Our approach includes hands-on workshops, video tutorials, and ongoing support. We design intuitive interfaces that minimize learning curves and maximize user adoption rates.',
    },
    {
      'question': 'What experince do you have with real estate market analytics and investment analysis?',
      'answer':
          'Our expertise includes developing sophisticated analytics platforms that track market trends, property valuations, and investment opportunities. We create predictive models for property appreciation, rental yield analysis, and risk assessment tools that enable data-driven investment decisions and portfolio optimization.',
    },
    {
      'question': 'How do you handle document management and e-signature processes in your solutions?',
      'answer':
          'Our platforms include integrated document management with secure cloud storage, version control, and automated workflows. We support major e-signature providers and ensure all digital transactions comply with state and federal electronic signature laws, providing audit trails and legal validity.',
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
            'Find answers to common questions about our real estate and construction technology solutions.',
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
