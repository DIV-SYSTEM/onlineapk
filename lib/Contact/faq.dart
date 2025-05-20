import 'package:flutter/material.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({super.key});

  @override
  State<FAQSection> createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  final List<Map<String, String>> faqList = [
    {
      "question": "How quickly can you start working on my project?",
      "answer":
          "We can typically begin work within 1-2 weeks of finalizing project details and agreements."
    },
    {
      "question": "Do you offer post-launch support?",
      "answer":
          "Yes, we offer ongoing maintenance, bug fixes, and updates after your project goes live."
    },
    {
      "question": "Can you handle both web and mobile app development?",
      "answer":
          "Absolutely! Our team specializes in both web and mobile platforms, ensuring seamless experiences across devices."
    },
    {
      "question": "What are your payment terms?",
      "answer":
          "We usually follow a milestone-based payment model with partial upfront and balance based on progress."
    },
  ];

  List<bool> isExpandedList = [];

  @override
  void initState() {
    super.initState();
    isExpandedList = List.generate(faqList.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequently Asked Questions',
                  style: TextStyle(
                    fontSize: isMobile ? 20 : 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Find answers to common questions about working with us.',
                  style: TextStyle(
                    fontSize: isMobile ? 14 : 16,
                    color: Colors.blueGrey[700],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          ...List.generate(faqList.length, (index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpandedList[index] = !isExpandedList[index];
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            faqList[index]['question']!,
                            style: const TextStyle(
                              fontSize: 16,
fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(
                          isExpandedList[index]
                              ? Icons.expand_less
                              : Icons.expand_more,
                          color: Colors.grey[700],
                        ),
                      ],
                    ),
                  ),
                ),
                if (isExpandedList[index])
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: BorderSide(color: Colors.grey[300]!),
                        right: BorderSide(color: Colors.grey[300]!),
                        bottom: BorderSide(color: Colors.grey[300]!),
                      ),
                    ),
                    child: Text(
                      faqList[index]['answer']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
              ],
            );
          }),
        ],
      ),
    );
  }
}