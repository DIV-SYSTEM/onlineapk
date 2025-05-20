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
      'question': 'How to you ensure HIPPA Compliance in your healthcare solutions?',
      'answer':
          'Every phase of development incorporates HIPAA compliance. This includes stringent access controls, audit recording, secure transmission protocols, and encrypted data storage. Additionally, we do risk assessments, conduct compliance audits on a regular basis, and keep thorough records to ensure regulatory preparedness.',
    },
    {
      'question': 'Can Your Solutions integrate with our existing EHR system?',
      'answer':
          'Yes! Our integration specialists have extensive knowledge of systems such as MEDITECH, Epic, Cerner, Allscripts, and Athenahealth. We integrate with your existing workflows and reduce interruption by using interoperability standards like HL7, FHIR, and SMART on FHIR.',
    },
    {
      'question': 'How do you approach clinician adoption and tarining for new healthcare technology?',
      'answer':
          'Using scenario-based practice sessions, live demonstrations, and tailored training programs, we provide clinician-friendly onboarding. We stay involved after implementation to encourage continued adoption, and our user-friendly interfaces are built to minimize learning curves.',
    },
    {
      'question': 'What experience do you have with healthcare data analytics and population health?',
      'answer':
          'Our area of expertise is developing data platforms that monitor patient outcomes, pinpoint high risk populations, and assist with preventative treatment tactics. Our analytics solutions enable businesses to make decisions based on facts and promote quantifiable gains in public health.',
    },
    {
      'question': 'How do you handle patient consent and data sharing in your solutions?',
      'answer':
          'Our platforms have consent management built in. Patients have the ability to electronically consent to or withdraw data sharing with particular providers. Our processes make sure that data is only shared when it is ethically and legally acceptable, and every access is recorded and traceable.',
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
            'Find answers to common questions about our healthcare IT solutions.',
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