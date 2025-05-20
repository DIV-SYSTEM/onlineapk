import 'package:flutter/material.dart';

class Web7 extends StatefulWidget {
  const Web7({super.key});

  @override
  State<Web7> createState() => _Web7State(); // Renamed to match the class properly
}

class _Web7State extends State<Web7> {
  late List<bool> isExpandedList;

  final List<Map<String, String>> faqList = [
    {
      'question': 'How long does it take to build a custom website or web application?',
      'answer':
      'The timeline differs based on project scope, features, and complexity. On average, a standard website takes 4–8 weeks, while a web application may take 8–16 weeks or more.',
    },
    {
      'question': 'Do you offer post-launch maintenance and technical support?',
      'answer':
      'Yes, we provide ongoing maintenance, updates, performance monitoring, and support to ensure your site runs easily and securely long after launch.',
    },
    {
      'question': 'How do you ensure the security of the web solutions you build?',
      'answer':
      'We implement best practices in security, including HTTPS, data encryption, secure authentication, firewall integration, and regular vulnerability testing.',
    },
    {
      'question': 'Can I make updates to my site on my own after it’s built?',
      'answer':
      'Yes, if your site is constructed on a CMS, we’ll provide training and documentation so you or your team can manage and update content easily.',
    },
    {
      'question': 'Can you work with or redesign my existing website?',
      'answer':
      'Sure, we can energize your current website with a modern design, improved user experience, and updated technology, without starting from scratch.',
    },
    {
      'question': 'Are your websites mobile-friendly and responsive?',
      'answer':
      'Yes, every website we build is fully responsive, ensuring it looks and performs well across all devices from desktops to smartphones.',
    },
    {
      'question': 'Which content management systems (CMS) do you support?',
      'answer':
      'We work with a range of CMS platforms including WordPress, Shopify, Strapi, and Sanity.io. We recommend the best option based on your requirements.',
    },
    {
      'question': 'Do you help optimize websites for search engines (SEO)?',
      'answer':
      'Yes, we implement on-page SEO best practices like clean URLs, Meta tags, mobile optimization, fast load times, and structured content during development.',
    },
  ];

  @override
  void initState() {
    super.initState();
    isExpandedList = List.generate(faqList.length, (_) => false);
  }

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
            'Frequently Asked Questions About Cloud Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Subtext
          const Text(
            'Find answers to common questions about our cloud services and how we can help your business scale online.',
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
