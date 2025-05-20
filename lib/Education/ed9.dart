import 'package:flutter/material.dart';

class AM9 extends StatefulWidget {
  const AM9({super.key});

  @override
  State<AM9> createState() => _AM9State();
}

class _AM9State extends State<AM9> {
  /*
  bool showPartners = false;

  final List<Map<String, dynamic>> partners = [
    {
      "domain": "Learning Platforms",
      "companies": [
        "Learning Management Systems",
        "Virtual Classrooms",
        "Adaptive Learning",
        "Microlearning",
        "Mobile Learning",
        "Gamification",
      ],
    },
    {
      "domain": "Administrative Systems",
      "companies": [
        "Student Information Systems",
        "Enrollment Management",
        "Scheduling Solutions",
        "Resource Planning",
        "Financial Aid Systems",
        "Alumni Management",
      ],
    },
    {
      "domain": "Data & Analytics",
      "companies": [
        "Learning Analytics",
        "Predictive Modeling",
        "Student Success Metrics",
        "Institutional Research",
        "Performance Dashboards",
        "Outcomes Assessment",
      ],
    },
    {
      "domain": "Integration & Security",
      "companies": [
        "Single Sign-On",
        "Data Integration",
        "API Management",
        "Identity Management",
        "Privacy Controls",
        "Compliance Frameworks",
      ],
    },
  ];
  */

  @override
  Widget build(BuildContext context) {
    // Commented out UI section to hide it from display
    /*
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Our Healthcare Integration Partners",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "We integrate with leading healthcare systems and platforms to provide comprehensive solutions for your business.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: () {
              setState(() {
                showPartners = !showPartners;
              });
            },
            child: const Text(
              "Our Partners",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 16),
          if (showPartners)
            ...partners.map((partner) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 6),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      partner["domain"],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: (partner["companies"] as List<String>).map((c) {
                        return Chip(
                          label: Text(c),
                          backgroundColor: Colors.blue.shade100,
                        );
                      }).toList(),
                    )
                  ],
                ),
              );
            }).toList(),
        ],
      ),
    );
    */

    // Temporary empty widget returned instead
    return const SizedBox.shrink();
  }
}
