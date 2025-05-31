import 'package:flutter/material.dart';

class Cloud5 extends StatefulWidget {
  const Cloud5({super.key});

  @override
  State<Cloud5> createState() => _Cloud5State();
}

class _Cloud5State extends State<Cloud5> {
  List<bool> isExpandedList = List.generate(7, (_) => false); // Adjusted for 7 FAQs

  final List<Map<String, String>> faqList = [
    {
      'question': 'How long does it take to develop a custom e-commerce solution?',
      'answer':
      'The timeline for developing a custom e-commerce solution varies depending on the complexity and scope of the project. A basic e-commerce website might take 2-3 months, while a complex, feature-rich platform could take 4-6 months or more. During our initial consultation, we\'ll provide a more accurate timeline based on your specific requirements and business needs.',
    },
    {
      'question': 'Can you migrate my existing online store to a new platform?',
      'answer':
      'Yes, we specialize in e-commerce platform migrations. Our team has extensive experience migrating stores between different platforms while preserving product data, customer information, order history, SEO rankings, and other critical elements. We follow a structured migration process to minimize disruption to your business and ensure a smooth transition to the new platform.',
    },
    {
      'question': 'How do you ensure the security of e-commerce websites?',
      'answer':
      'We implement multiple security measures including SSL certificates, PCI DSS compliance, secure payment processing, data encryption, regular security audits, and protection against common vulnerabilities. We also stay updated on the latest security threats and best practices to ensure your e-commerce platform remains secure against evolving risks.',
    },
    {
      'question': 'What payment gateways do you integrate with?',
      'answer':
      'We integrate with all major payment gateways including Stripe, PayPal, Square, Authorize.net, Braintree, Amazon Pay, Apple Pay, Google Pay, and many others. We can also integrate with region-specific payment providers and alternative payment methods based on your target market and business requirements.',
    },
    {
      'question': 'Can you help with SEO for my e-commerce store?',
      'answer':
      'Absolutely. We implement e-commerce SEO best practices including optimized product pages, proper URL structures, schema markup, fast loading speeds, mobile optimization, and more. We can also provide ongoing SEO services to improve your store\'s visibility in search engines and drive organic traffic.',
    },
    {
      'question': 'Do you provide ongoing maintenance and support after launch?',
      'answer':
      'Yes, we offer various maintenance and support packages to ensure your e-commerce platform remains secure, up-to-date, and performing optimally. These packages can include regular updates, security monitoring, performance optimization, content updates, and technical support with different response time options based on your needs.',
    },
    {
      'question': 'How do you handle scalability for growing e-commerce businesses?',
      'answer':
      'We design e-commerce solutions with scalability in mind from the beginning. This includes using cloud infrastructure that can scale with traffic demands, implementing efficient database designs, utilizing caching strategies, and creating modular architectures that can grow with your business. We also conduct regular performance testing to identify and address potential bottlenecks before they impact your customers.',
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
          const Text(
            'Frequently Asked Questions About E-Commerce Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text(
            'Find answers to common questions about our e-commerce services and how we can support your online business.',
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
