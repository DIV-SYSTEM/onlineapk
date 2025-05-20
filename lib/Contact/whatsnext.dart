import 'package:flutter/material.dart';

class WhatsNextSection extends StatelessWidget {
  const WhatsNextSection({super.key});

  final steps = const [
    {
      'no': '01',
      'title': 'Introduction & Consultation',
      'desc': 'We\'ll understand your needs and lay out the basic plan, tech stack, solution architecture, and ballpark budget along with the timeline.'
    },
    {
      'no': '02',
      'title': 'Proposal & Plan',
      'desc': 'We share a well-thought-out proposal with project phases, deadlines, and payment milestones.'
    },
    {
      'no': '03',
      'title': 'Kickoff!',
      'desc': 'Once approved, the team gets aligned and development kicks off with continuous updates.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 700;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's Next?",
            style: TextStyle(
              fontSize: isMobile ? 20 : 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Column(
            children: steps.map((step) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(step['no']!,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        )),
                    const SizedBox(height: 6),
                    Text(step['title']!,
                        style: TextStyle(
                          fontSize: isMobile ? 18 : 20,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(height: 6),
                    Text(step['desc']!,
                        style: TextStyle(
                          fontSize: isMobile ? 14 : 16,
                          color: Colors.grey[700],
                        )),
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