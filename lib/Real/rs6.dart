import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [ { 'icon': Icons.speed_outlined.codePoint.toString(), 'title': 'Enhanced Security & Compliance', 'desc': 'Protect sensitive client data and transaction information with robust security measures. Stay compliant with real estate regulations, data privacy laws, and industry standards.' }, { 'icon': Icons.security.codePoint.toString(), 'title': 'Operational Efficiency', 'desc': 'Streamline property management, construction workflows, and client interactions with intelligent automation tools. Reduce manual tasks and increase productivity.' }, { 'icon': Icons.settings.codePoint.toString(), 'title': 'Improved Project Outcomes', 'desc': 'Deliver projects on time and within budget with real-time tracking, predictive analytics, and collaborative project management tools.' }, { 'icon': Icons.thumb_up.codePoint.toString(), 'title': 'Data-Driven Insights', 'desc': 'Transform property and construction data into actionable intelligence with advanced analytics, market insights, and performance dashboards.' }, { 'icon': Icons.insights.codePoint.toString(), 'title': 'Innovation & Scalability', 'desc': 'Future-proof your real estate and construction operations with cutting-edge technologies like IoT, VR/AR, and AI-powered automation.' }, { 'icon': Icons.sync.codePoint.toString(), 'title': 'Seamless Integration', 'desc': 'Ensure smooth interaction between legacy and modern systems.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Our Real Estate & Construction Tech Advantages",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "The modern real estate and construction landscape demands smart, scalable, and integrated solutions. Our technology empowers your business to operate with precision, collaboration, and confidence—driving long-term value across every phase of the property and project lifecycle.",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
        onPressed: () => setState(() => _showBenefits = !_showBenefits),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          "Check Benefits",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      const SizedBox(height: 24),
      if (_showBenefits)
        Column(
          children: benefits.map((benefit) {
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconData(int.parse(benefit['icon']!), fontFamily: 'MaterialIcons'),
                    size: 32,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          benefit['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          benefit['desc']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
    ],
  ),
);

} }
