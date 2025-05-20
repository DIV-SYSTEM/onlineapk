import 'package:flutter/material.dart';

class Am6 extends StatefulWidget {
  const Am6({super.key});

  @override
  State<Am6> createState() => _Am6State();
}

class _Am6State extends State<Am6> {
  bool _showBenefits = false;

  final List<Map<String, dynamic>> benefits = [
    {
      'icon': Icons.security,
      'title': 'Stronger Security',
      'desc':
      'Use high level security to protect customer data and financial transactions. This builds trust and helps meet legal requirements.',
    },
    {
      'icon': Icons.rule,
      'title': 'Stay Submissive',
      'desc':
      'Keep up with changing financial rules like GDPR, PSD2, Basel III, and AML/KYC using tools that help you stay compliant automatically.',
    },
    {
      'icon': Icons.auto_mode,
      'title': 'Work Smarter',
      'desc':
      'Save time and money by using automation, digital tools, and systems that reduce manual work and speed up daily operations.',
    },
    {
      'icon': Icons.thumb_up_alt,
      'title': 'Better Customer Experience',
      'desc':
      'Give your customers a smooth and personalized experience on all digital platforms, making them more satisfied and loyal.',
    },
    {
      'icon': Icons.insights,
      'title': 'Smart Use of Data',
      'desc':
      'Use advanced analytics to understand your financial data and make better business decisions.',
    },
    {
      'icon': Icons.trending_up,
      'title': 'Grows With You',
      'desc':
      'Create systems that can grow with your business—handling more users and transactions while staying fast and reliable.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: Colors.grey.shade100.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Benefits of Our Finance & Banking IT Solutions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Our all-in-one financial technology solutions offer real benefits that help your business grow, stay secure, meet regulations, and work more efficiently.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54, height: 1.6),
          ),
          const SizedBox(height: 28),

          // ✅ Updated Button
          ElevatedButton.icon(
            onPressed: () => setState(() => _showBenefits = !_showBenefits),
            icon: const Icon(Icons.groups), // Static icon
            label: const Text('Our Partners'), // Static text
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 4,
            ),
          ),

          const SizedBox(height: 32),

          // ✅ Toggle Benefits (Partners)
          if (_showBenefits)
            Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: benefits.map((benefit) {
                return Container(
                  width: screenWidth < 600 ? screenWidth * 0.9 : 320,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(benefit['icon'],
                            size: 28, color: Colors.redAccent),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              benefit['title'],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              benefit['desc'],
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
