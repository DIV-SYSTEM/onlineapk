import 'package:flutter/material.dart';

class AmTcSection extends StatelessWidget {
  const AmTcSection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> techCategories = const [
    {
      'icon': Icons.web,
      'title': 'Frontend Technologies',
      'techs': [
        'React, Vue.js, Angular',
        'Next.js, Nuxt.js, Gatsby',
        'Progressive Web Apps (PWA)',
        'Tailwind CSS, Material UI, Bootstrap',
        'TypeScript, JavaScript',
      ],
    },
    {
      'icon': Icons.code,
      'title': 'Backend Technologies',
      'techs': [
        'Node.js, Express, NestJS',
        'PHP, Laravel, Symfony',
        'Python, Django, Flask',
        'Java, Spring Boot',
        'GraphQL, REST APIs',
      ],
    },
    {
      'icon': Icons.storage,
      'title': 'Database & Infrastructure',
      'techs': [
        'MySQL, PostgreSQL, MongoDB',
        'Redis, Elasticsearch',
        'AWS, Google Cloud, Azure',
        'Docker, Kubernetes',
        'CI/CD, GitLab, GitHub Actions',
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
            'E-commerce Technologies We Work With',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'We leverage the latest technologies and frameworks to build modern, scalable, and high-performance e-commerce solutions.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ...item['techs'].map<Widget>((tech) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      children: [
                        const Text('✅️', style: TextStyle(fontSize: 18)),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            tech,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
