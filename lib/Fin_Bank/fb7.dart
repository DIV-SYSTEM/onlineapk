import 'package:flutter/material.dart';

class Am7 extends StatefulWidget {
  const Am7({super.key});

  @override
  State<Am7> createState() => _Am7State();
}

class _Am7State extends State<Am7> {
  bool showProcess = false;

  final List<Map<String, String>> processSteps = [
    {
      'no': '01',
      'icon': 'search',
      'title': 'Discovery & Assessment',
      'description': 'We look at your current systems, find any problems, and set clear goals for your digital upgrade.',
    },
    {
      'no': '02',
      'icon': 'account_tree',
      'title': 'Solution Architecture',
      'description': 'Our team designs a secure and flexible system that fits your needs and works well with your existing tools.',
    },
    {
      'no': '03',
      'icon': 'integration_instructions',
      'title': 'Development & Integration',
      'description': 'We build custom solutions and connect them with your banking systems and third party services, using the best methods in the industry.',
    },
    {
      'no': '04',
      'icon': 'security',
      'title': 'Security & Compliance',
      'description': 'We run strong security tests and make sure everything follows financial regulations and industry standards.',
    },
    {
      'no': '05',
      'icon': 'rocket_launch',
      'title': 'Deployment & Training',
      'description': 'We launch your new system smoothly and train your team so they can use it with confidence.',
    },
    {
      'no': '06',
      'icon': 'support_agent',
      'title': 'Ongoing Support & Growth',
      'description': 'After launch, we keep supporting your system with updates, maintenance, and help whenever you need it.',
    },
    {
      'no': '07',
      'icon': 'trending_up',
      'title': 'Continuous Improvement',
      'description': 'We track performance, listen to user feedback, and keep improving the system so it grows with your business.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Our Financial Technology Development Process',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We use a clear and collaborative process to build financial technology solutions. This helps us make sure every project is secure, meets all rules, and delivers the right results.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(height: 28),
          ElevatedButton(
            onPressed: () => setState(() => showProcess = !showProcess),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            ),
            child: const Text(
              "Explore Our Process",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(height: 32),
          if (showProcess)
            ...processSteps.map((step) => Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step['no']!,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Icon(
                    _getIcon(step['icon']!),
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step['title']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          step['description']!,
                          style: const TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        ],
      ),
    );
  }

  IconData _getIcon(String name) {
    switch (name) {
      case 'search':
        return Icons.search;
      case 'account_tree':
        return Icons.account_tree;
      case 'integration_instructions':
        return Icons.integration_instructions;
      case 'security':
        return Icons.security;
      case 'rocket_launch':
        return Icons.rocket_launch;
      case 'support_agent':
        return Icons.support_agent;
      case 'trending_up':
        return Icons.trending_up;
      default:
        return Icons.device_hub;
    }
  }
}
