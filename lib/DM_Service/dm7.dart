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
      'question': 'What facilities do you provide for digital marketing?',
      'answer':
          'To help you increase your online visibility and generate income, we provide a comprehensive range of services, such as Google Ads, Meta Ads (Facebook & Instagram), SEO, social media marketing, content marketing, email marketing, and marketing automation.',
    },
    {
      'question': 'Will my campaigns have a enthusiastic account manager?',
      'answer':
          'Yes, a committed digital marketing specialist who is alert of your company objectives will work directly with you to guarantee strategic alignment, timely updates, and clear communication throughout the campaign.',
    },
    {
      'question': 'Are the add acounts and data you generated of my campaigns mine?',
      'answer':
          'Of course, our top priority is transparency. Ad accounts, campaign data, analytics, and creative assets that we handle for you will all be fully owned and accessible by you.',
    },
    {
      'question': 'Do you provide ongoing cloud management?',
      'answer':
          'Absolutely. We offer end-to-end support, including monitoring, optimization, and troubleshooting of your cloud environment.',
    },
    {
      'question': 'Can you assist me in creating leads for my company?',
      'answer':
          'Yes, one of our areas of expertise is lead generation. We employ automation tools, customized landing pages, and data-driven ad tactics to draw in, collect, and develop excellent leads for your company.',
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
            'Frequently Asked Questions About Digital Marketing',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Find answers to common questions about our digital marketing services and how we can help your business grow.',
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
