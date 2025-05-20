import 'package:flutter/material.dart';

class Web7 extends StatefulWidget {
  const Web7({super.key});

  @override
  State<Web7> createState() => _Cloud5State();
}

class _Cloud5State extends State<Web7> {
  List<bool> isExpandedList = [false, false, false, false, false];

  final List<Map<String, String>> faqList = [
    {
      'question': 'Which types of businesses do you collaborate with?',
      'answer':
          'Across sectors like healthcare, retail, SaaS, finance, and manufacturing, we collaborate with start-ups, large corporations, and everything in between.',
    },
    {
      'question': 'Can AI Works with the tool we have now?',
      'answer':
          'Our team makes sure AI integrates with your current workflows and systems so you donot have to start from scratch.',
    },
    {
      'question': 'Is the AI you are developing safe and legal?',
      'answer':
          'Of course, to guarantee the ethical and secure application of AI, we adhere to stringent data protection and regulatory regulations.',
    },
    {
      'question': 'Do you provide continuing assistance?',
      'answer':
          'We offer comprehensive post-deployment assistance, from team training to performance monitoring.',
    },
    {
      'question': 'How long does it takes to start the project using AI?',
      'answer':
          'Most projects take four to twelve weeks to complete from discovery to deployment, depending on their complexity.',
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
            'Frequently Asked Questions About AL-ML Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Find answers to common questions about our AI & ML IT services and how we can help your project thrive in the AI age.',
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
