import 'package:flutter/material.dart';

class AmTcSection extends StatefulWidget { const AmTcSection({Key? key}) : super(key: key);

@override State<AmTcSection> createState() => _AmTcSectionState(); }

class _AmTcSectionState extends State<AmTcSection> {
  bool _showTechnologies = false;

  void _toggleTechnologies() {
    setState(() {
      _showTechnologies = !_showTechnologies;
    });
  }

  final List<Map<String, dynamic>> techCategories = [
    {
      'icon': Icons.web, // Front-End
      'title': 'Front-End',
      'techs': ['HTML5', 'CSS3', 'JavaScript', 'React', 'Vue', 'Angular'],
    },
    {
      'icon': Icons.storage, // Back-End
      'title': 'Back-End',
      'techs': [
        'Node.js',
        'PHP',
        'Python',
        '.NET',
        'Laravel',
        'Express',
        'Django'
      ],
    },
    {
      'icon': Icons.table_chart, // Databases
      'title': 'Databases',
      'techs': ['MongoDB', 'MySQL', 'PostgreSQL', 'Firebase'],
    },
    {
      'icon': Icons.view_module, // CMS
      'title': 'CMS',
      'techs': ['WordPress', 'Shopify', 'WooCommerce', 'Magento'],
    },
    {
      'icon': Icons.cloud, // DevOps
      'title': 'DevOps',
      'techs': [
        'Docker',
        'Kubernetes',
        'AWS',
        'Google Cloud',
        'Azure',
        'CI/CD',
        'Git'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Skills We Use',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black, // <-- fixed
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'We leverage the latest technologies and frameworks to build modern, secure, and high-performance web solutions.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black, // <-- fixed
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleTechnologies,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              'Check Our Techstack',
              style: TextStyle(color: Colors.white), // <-- fixed
            ),
          ),
          const SizedBox(height: 20),
          if (_showTechnologies)
            ...techCategories.map((item) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(item['icon'], size: 28, color: Colors.blueGrey),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            item['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black, // <-- fixed
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ...item['techs'].map<Widget>((tech) =>
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              const Text('✅️', style: TextStyle(fontSize: 18)),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  tech,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black, // <-- fixed
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              );
            }).toList()
        ],
      ),
    );
  }
}
