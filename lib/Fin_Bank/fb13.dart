import 'package:flutter/material.dart';

class FinTechSection extends StatelessWidget {
  const FinTechSection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> techCategories = const [
    {
      'icon': Icons.storage,
      'title': 'Backend Technologies',
      'techs': [
        'Java, Spring Boot, Hibernate',
        '.NET Core, C#, Entity Framework',
        'Node.js, Express, NestJS',
        'Python, Django, Flask',
        'GraphQL, REST APIs',
      ],
    },
    {
      'icon': Icons.bar_chart,
      'title': 'Data & Analytics',
      'techs': [
        'Oracle, SQL Server, PostgreSQL',
        'MongoDB, Redis, Elasticsearch',
        'Hadoop, Spark, Kafka',
        'TensorFlow, PyTorch, scikit-learn',
        'Tableau, Power BI, Looker',
      ],
    },
    {
      'icon': Icons.security,
      'title': 'Security & Infrastructure',
      'techs': [
        'AWS, Azure, Google Cloud',
        'Docker, Kubernetes, Terraform',
        'OAuth, OpenID Connect, SAML',
        'PKI, HSM, Encryption Technologies',
        'CI/CD, GitLab, GitHub Actions',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Financial Technologies We Work With',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'We leverage the latest technologies and frameworks to build secure, compliant, and high-performance financial solutions.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          ),
          const SizedBox(height: 30),
          ...techCategories.map((item) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(item['icon'], size: 28, color: Colors.indigo),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          item['title'],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ...item['techs'].map<Widget>((tech) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_rounded,
                            size: 20, color: Colors.green),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            tech,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
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
