import 'package:flutter/material.dart';

class Cloud5 extends StatefulWidget {
  const Cloud5({super.key});

  @override
  State<Cloud5> createState() => _Cloud5State();
}

class _Cloud5State extends State<Cloud5> {
  List<bool> isExpandedList = List.filled(7, false); // updated to 7 items

  final List<Map<String, String>> faqList = [
    {
      'question': "How do you keep financial applications secure?",
      'answer':
      "We use advanced security tools and follow the latest best practices to protect your data and financial transactions.",
    },
    {
      'question': "Can you work with our current core banking systems?",
      'answer':
      "Yes, we can connect and integrate with your existing systems to make everything work smoothly together.",
    },
    {
      'question': "How do you manage compliance with financial rules and regulations?",
      'answer':
      "We build solutions that follow major regulations like GDPR, PSD2, Basel III, and AML/KYC to help you stay compliant.",
    },
    {
      'question': "What technologies do you use for your financial IT solutions?",
      'answer':
      "We use trusted, modern technologies like React, Java, Spring Boot, Node.js, microservices, and cloud platforms.",
    },
    {
      'question': "How long does it take to set up a digital banking system?",
      'answer':
      "The time depends on your needs, but we usually complete most projects within a few weeks to a few months.",
    },
    {
      'question': "Do you offer support after the system is launched?",
      'answer':
      "Yes, we provide full support, updates, and maintenance after launch to make sure everything keeps running smoothly.",
    },
    {
      'question': "How do you protect customer data in financial apps?",
      'answer':
      "We follow strict privacy rules and use strong encryption and security methods to keep customer data safe.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Frequently Asked Questions About Financial IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Find answers to common questions about our finance and banking IT services and how we can help your institution thrive in the digital age.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 30),
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
