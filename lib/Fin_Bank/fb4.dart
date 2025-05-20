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
      'image': 'assets/images/2 digital  banking.jpg',
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
      'image': 'assets/images/10.jpg',
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
      'image': 'assets/fraud_detection.jpg',
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
      'image': 'assets/regulatory_compliance.jpg',
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
      'image': 'assets/data_analytics.jpg',
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
                color: Colors.redAccent, // Correct background color
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    financeSolutions[selectedIndex!]['title'],
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Text color fix
                  ),
                  const SizedBox(height: 8),
                  Text(
                    financeSolutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16, color: Colors.white), // Text color fix
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white), // Text color fix
                  ),
                  const SizedBox(height: 8),
                  ...financeSolutions[selectedIndex!]['features'].map<Widget>((feature) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_rounded, color: Colors.green, size: 20),
                        const SizedBox(width: 8),
                        Expanded(child: Text(feature, style: const TextStyle(color: Colors.white))), // Text color fix
                      ],
                    ),
                  )),
                  const SizedBox(height: 16),
                  Image.asset(
                    financeSolutions[selectedIndex!]['image'],
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
