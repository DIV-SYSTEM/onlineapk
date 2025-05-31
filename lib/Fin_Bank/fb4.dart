import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> financeSolutions = [
    {
      'title': "Digital Banking Platforms",
      'icon': Icons.smartphone,
      'description':
          "Build modern, user-friendly digital banking experiences that meet the evolving expectations of today's customers.",
      'features': [
        "Omnichannel banking experiences",
        "Mobile banking applications",
        "Customer onboarding automation",
        "Account management systems",
        "Personal finance management tools",
        "Chatbots and virtual assistants"
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2%20digital%20%20banking.jpg',
      'learnMoreDescription': 'Our Digital Banking Platforms empower financial institutions with seamless, user-centric solutions. For a regional bank, we developed a mobile app that increased user retention by 35% through intuitive design and omnichannel integration. Automated onboarding reduced processing time by 50%, while AI-driven chatbots handled 80% of customer queries. Secure APIs and cloud-based account management ensured scalability, supporting 100,000+ users. This solution, integrated with Firebase and AWS, enhanced customer satisfaction and operational efficiency, positioning the bank as a digital leader.'
    },
    {
      'title': "Payment Processing Systems",
      'icon': Icons.credit_card,
      'description':
          "Implement secure, scalable payment processing solutions that support multiple payment methods and currencies.",
      'features': [
        "Real-time payment processing",
        "Multi-currency support",
        "Payment gateway integration",
        "Recurring billing systems",
        "Digital wallet integration",
        "Cross-border payment solutions"
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/10.jpg',
      'learnMoreDescription': 'Our Payment Processing Systems streamline transactions for financial institutions. For a fintech startup, we integrated a scalable payment gateway supporting 20+ currencies, reducing transaction failures by 40%. Real-time processing and digital wallet integration boosted user adoption by 60%. Cross-border payment solutions, powered by Stripe and AWS, cut processing costs by 25%. Recurring billing automation enhanced subscription retention by 30%. With PCI DSS compliance and end-to-end encryption, this solution ensured security and reliability, driving global transaction growth.'
    },
    {
      'title': "Fraud Detection & Security",
      'icon': Icons.shield,
      'description':
          "Protect your institution and customers using machine learning and behavioral analytics to detect suspicious activities.",
      'features': [
        "Real-time fraud monitoring",
        "Behavioral analytics",
        "Machine learning-based detection",
        "Transaction monitoring systems",
        "Identity verification solutions",
        "Anti-money laundering (AML) systems"
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/2%20%20fraud%20detection%26%20security.jpg',
      'learnMoreDescription': 'Our Fraud Detection & Security solutions safeguard financial institutions with advanced technology. For a global bank, we implemented ML-based fraud detection, reducing false positives by 45% and identifying 98% of suspicious transactions in real-time. Behavioral analytics and identity verification cut unauthorized access by 50%. AML systems, integrated with Azure and TensorFlow, ensured regulatory compliance. Transaction monitoring dashboards provided actionable insights, saving \$2M annually. This robust, scalable solution strengthened security and customer trust, minimizing financial risks.'
    },
    {
      'title': "Regulatory Compliance",
      'icon': Icons.description,
      'description':
          "Navigate complex financial regulations with automated tools, dashboards, and audit trail management systems.",
      'features': [
        "KYC/AML compliance automation",
        "Regulatory reporting systems",
        "Risk management platforms",
        "Compliance monitoring dashboards",
        "Audit trail management",
        "Policy management systems"
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/3%20Regulatory%20Compiance.jpg',
      'learnMoreDescription': 'Our Regulatory Compliance solutions simplify adherence to financial regulations. For a mid-sized bank, we automated KYC/AML processes, reducing compliance costs by 35%. Regulatory reporting systems, built on Google Cloud, generated accurate reports 60% faster. Compliance dashboards and audit trail management ensured transparency, passing 100% of audits. Risk management platforms identified vulnerabilities, cutting non-compliance risks by 40%. Integrated with Salesforce, this solution streamlined operations and ensured GDPR and Basel III compliance, enhancing trust and operational efficiency.'
    },
    {
      'title': "Data Analytics & BI",
      'icon': Icons.bar_chart,
      'description':
          "Transform financial data into insights using predictive analytics, dashboards, and customer behavior models.",
      'features': [
        "Customer segmentation analytics",
        "Predictive analytics for risk",
        "Financial performance dashboards",
        "Customer behavior analysis",
        "Market trend analysis",
        "Credit scoring models"
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/(800%20x%20800%20px).jpg',
      'learnMoreDescription': 'Our Data Analytics & BI solutions unlock actionable insights for financial institutions. For an investment firm, we developed predictive analytics models that improved risk assessment accuracy by 50%. Customer segmentation and behavior analysis, powered by Power BI and AWS, increased cross-selling by 25%. Financial performance dashboards provided real-time insights, boosting decision-making speed by 40%. Credit scoring models reduced default rates by 30%. This scalable, secure solution transformed data into a strategic asset, driving profitability and customer engagement.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Our IT Solutions for Finance & Banking',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We provide a full range of IT solutions made specifically for financial institutions—from digital banking and payment systems to security, compliance, and data analytics.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(financeSolutions.length, (index) {
              return ChoiceChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(financeSolutions[index]['icon'], size: 18),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        financeSolutions[index]['title'],
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                selected: selectedIndex == index,
                onSelected: (_) {
                  setState(() {
                    selectedIndex = selectedIndex == index ? null : index;
                  });
                },
                selectedColor: Colors.blue.shade100,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: selectedIndex == index ? Colors.blue : Colors.grey.shade300),
                ),
              );
            }),
          ),
          const SizedBox(height: 24),
          if (selectedIndex != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    financeSolutions[selectedIndex!]['title'],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    financeSolutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  ...financeSolutions[selectedIndex!]['features'].map<Widget>((feature) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle_rounded, color: Colors.green, size: 20),
                            const SizedBox(width: 8),
                            Expanded(child: Text(feature, style: const TextStyle(color: Colors.white))),
                          ],
                        ),
                      )),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      financeSolutions[selectedIndex!]['image'],
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[200],
                        height: 200,
                        child: const Center(child: Text('Image not found')),
                      ),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.9,
                                maxHeight: MediaQuery.of(context).size.height * 0.7,
                              ),
                              padding: const EdgeInsets.all(16),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            financeSolutions[selectedIndex!]['title'],
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      financeSolutions[selectedIndex!]['learnMoreDescription'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
