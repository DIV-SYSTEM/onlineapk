import 'package:flutter/material.dart';

class Am6 extends StatefulWidget { const Am6({super.key});

@override State<Am6> createState() => _Am6State(); }

class _Am6State extends State<Am6> { bool _showBenefits = false;

final List<Map<String, String>> benefits = [ { 'icon': Icons.speed_outlined.codePoint.toString(), 'title': 'Accurate Targeting of Audiences', 'desc': 'Reach your potential clients with intelligent targeting based on their search intent, demographics, interests, and behaviors—no wasted impressions, just relevant reach.' }, { 'icon': Icons.security.codePoint.toString(), 'title': 'Data-Informed Selections', 'desc': 'Monitor the effectiveness of your campaigns in real time. We provide quantifiable, actionable insights to help you make better marketing decisions, from clicks to conversions.' }, { 'icon': Icons.settings.codePoint.toString(), 'title': 'Increased Visibility of the Brand', 'desc': 'We create brands, not just ads. Make a lasting impression your audience recalls and believes in by amplifying your voice across all media.' }, { 'icon': Icons.thumb_up.codePoint.toString(), 'title': 'Convert Traffic into Outcomes', 'desc': 'Use user-first strategies like compelling CTAs, retargeting ads, and high-converting landing pages to increase leads and sales.' }, { 'icon': Icons.insights.codePoint.toString(), 'title': 'Better Returns, Smarter Spending', 'desc': 'Our affordable digital solutions outperform traditional marketing, boosting visibility and ROI without breaking the bank.' }, { 'icon': Icons.sync.codePoint.toString(), 'title': 'Think Global, Go Local', 'desc': 'Digital tools make your market global. Expand across cities, countries, and continents with scalable, reach-oriented strategies.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
  color: Colors.grey.shade100.withOpacity(0.5),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        "Advantages of Our IT Services for Digital Marketing",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),
      const Text(
        "Digital marketing isn't just an option in today's constantly linked society; it's a game-changer. Find out how our strategies maintain your brand ahead of the curve and drive actual company success.",
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
