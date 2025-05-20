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
      'title': 'Discovery & Requirements Analysis',
      'description':
      'We begin by understanding your agency\'s mission, constraints, and current system landscape to define goals and gather actionable insights.',
    },
    {
      'no': '02',
      'icon': 'verified_user',
      'title': 'Security & Compliance Planning',
      'description':
      'Develop a tailored compliance strategy with standards like NIST, FISMA, and FedRAMP, ensuring regulatory adherence.',
    },
    {
      'no': '03',
      'icon': 'architecture',
      'title': 'Solution Architecture & Design',
      'description':
      'Design scalable architectures with technical documentation and security frameworks suited to government-grade requirements.',
    },
    {
      'no': '04',
      'icon': 'developer_mode',
      'title': 'Secure Development & Integration',
      'description':
      'Utilize secure coding standards and integrate with legacy systems while maintaining strict data control and classification boundaries.',
    },
    {
      'no': '05',
      'icon': 'check_circle_outline',
      'title': 'Comprehensive Testing & Validation',
      'description':
      'Conduct penetration testing, system audits, and mission-oriented validations to meet performance and compliance benchmarks.',
    },
    {
      'no': '06',
      'icon': 'cloud_done',
      'title': 'Secure Deployment & Accreditation',
      'description':
      'Coordinate deployment with ATO (Authority to Operate) documentation, validations, and stakeholder approvals.',
    },
    {
      'no': '07',
      'icon': 'sync',
      'title': 'Ongoing Support & Evolution',
      'description':
      'Provide 24/7 monitoring, updates, and proactive system evolution to adapt to new mission requirements and cyber threats.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => setState(() => showMethods = !showMethods),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              ),
              child: const Text(
                'Our Methods of Development',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 30),
          if (showMethods)
            ...methods.map(
                  (item) => Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['no']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.indigo.shade800,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Icon(
                      _getIcon(item['icon']!),
                      size: 28,
                      color: Colors.indigoAccent,
                    ),
                    const SizedBox(width: 16),
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
                          const SizedBox(height: 6),
                          Text(
                            item['description']!,
                            style: const TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
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
      case 'verified_user':
        return Icons.verified_user;
      case 'architecture':
        return Icons.architecture;
      case 'developer_mode':
        return Icons.developer_mode;
      case 'check_circle_outline':
        return Icons.check_circle_outline;
      case 'cloud_done':
        return Icons.cloud_done;
      case 'sync':
        return Icons.sync;
      default:
        return Icons.device_hub;
    }
  }
}
