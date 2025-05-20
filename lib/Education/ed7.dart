import 'package:flutter/material.dart';

class Am7 extends StatefulWidget {
  const Am7({super.key});

  @override
  State<Am7> createState() => _Am7State();
}

class _Am7State extends State<Am7> {
  bool showMethods = false;

  final List<Map<String, String>> methods = [
    {
      'no': '01',
      'icon': 'search',
      'title': 'Needs Analysis and Exploration',
      'description':
      'We start by learning about your learning objectives, student demographics, instructional strategies, and current digital infrastructure. We pinpoint the main obstacles and chances for innovation.',
    },
    {
      'no': '02',
      'icon': 'map',
      'title': 'Planning Strategically and Mapping Out',
      'description':
      'We provide a customized EdTech approach that complements your academic goals based on our discovery insights. This covers budget planning, timeframe setup, and a thorough implementation roadmap.',
    },
    {
      'no': '03',
      'icon': 'design_services',
      'title': 'Designing and Prototyping Instruction',
      'description':
      'Learner-centric interfaces and captivating experiences are produced by our UX specialists and education designers. Prototypes and interactive wireframes aid in the visualization of content structure, user flow, and course delivery.',
    },
    {
      'no': '04',
      'icon': 'integration_instructions',
      'title': 'System Integration and Development',
      'description':
      'We use best practices and the newest technologies to make the platform come to life. Our group creates reliable features and incorporates necessary systems such as content libraries, virtual classrooms, SIS, and LMS.',
    },
    {
      'no': '05',
      'icon': 'check_circle',
      'title': 'Quality Assurance and Testing',
      'description':
      'To guarantee performance, accessibility, and a flawless experience, every feature is rigorously tested across devices, browsers, and user types, including instructors, students, and administrators.',
    },
    {
      'no': '06',
      'icon': 'rocket_launch',
      'title': 'Launch and Execution',
      'description':
      'We manage the entire implementation process, lead staff and faculty training sessions, and offer onboarding assistance to guarantee a seamless and effective rollout of your educational technology solution.',
    },
    {
      'no': '07',
      'icon': 'support_agent',
      'title': 'Continued Assistance & Ongoing Development',
      'description':
      'Our partnership continues after launch, to promote long-term academic achievement, we provide on-going monitoring, upkeep, feature enhancements, and performance optimization.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() => showMethods = !showMethods);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.redAccent,
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              ),
              child: const Text(
                'Our Methods of Development',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24),
          if (showMethods)
            ...methods.map(
                  (item) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['no']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.indigo,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      _getIcon(item['icon']!),
                      size: 28,
                      color: Colors.indigoAccent,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['title']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'search':
        return Icons.search;
      case 'map':
        return Icons.map;
      case 'design_services':
        return Icons.design_services;
      case 'integration_instructions':
        return Icons.integration_instructions;
      case 'check_circle':
        return Icons.check_circle;
      case 'rocket_launch':
        return Icons.rocket_launch;
      case 'support_agent':
        return Icons.support_agent;
      default:
        return Icons.device_hub;
    }
  }
}
