import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> solutions = [
    {
      'title': 'Web App Development',
      'icon': Icons.language,
      'description': 'We provide full-cycle web development services from strategy to launch that are designed to produce memorable digital experiences that boost user happiness and business expansion.',
      'features': [
        'Custom web application development tailored to your needs',
        'Progressive Web Apps (PWAs) for cross-platform functionality',
        'Real-time applications with WebSocket integration',
        'Single Page Applications (SPAs) for seamless user experiences',
        'Enterprise-grade web portals and dashboards',
        'Cloud-based web applications with scalable architecture',
      ],
      'image': 'assets/images/web_image_5.jpg',
    },
    {
      'title': 'Custom Website Development',
      'icon': Icons.code,
      'description': 'We craft responsive, high-performance websites tailored to your brand’s identity and business goals. Our focus on usability, speed, and SEO ensures your website not only looks great but also drives results.',
      'features': [
        'Responsive design that works flawlessly across all devices',
        'SEO-friendly architecture and semantic markup',
        'Fast loading speeds and optimized performance',
        'Content Management Systems for easy updates',
        'Custom animations and interactive elements',
        'Accessibility compliance (WCAG standards)',
      ],
      'image': 'assets/images/web_image_2.jpg',
    },
    {
      'title': 'UI & UX Designing',
      'icon': Icons.brush,
      'description': 'Our design team crafts intuitive, user-centric interfaces that enhance engagement and improve conversions. From wireframes to polished prototypes, we ensure every interaction feels seamless and delightful.',
      'features': [
        'User research and persona development',
        'Information architecture and user flow mapping',
        'Wireframing and interactive prototyping',
        'Visual design and UI component systems',
        'Usability testing and iterative improvements',
        'Design systems for consistent brand experience',
      ],
      'image': 'assets/images/web_image_4.jpg',
    },
    {
      'title': 'E-Commerce Development',
      'icon': Icons.shopping_cart,
      'description': 'We build powerful e-commerce platforms that are fast, secure, and optimized for conversions. From sleek storefronts to seamless checkout processes, we help you deliver exceptional shopping experiences.',
      'features': [
        'Custom e-commerce website development',
        'Shopping cart and checkout optimization',
        'Payment gateway integration and security',
        'Inventory and order management systems',
        'Product catalog and search functionality',
        'Mobile-optimized shopping experiences',
      ],
      'image': 'assets/images/web_image_1.jpg',
    },
    {
      'title': 'API Development & Integration',
      'icon': Icons.share,
      'description': 'We design robust APIs and integrate third-party services to enable seamless data flow and functionality across platforms. Whether it’s internal systems or external apps, we ensure everything connects smoothly.',
      'features': [
        'RESTful and GraphQL API development',
        'Third-party API integration services',
        'API gateway implementation and management',
        'Microservices architecture design',
        'API documentation and developer resources',
        'API security and authentication protocols',
      ],
      'image': 'assets/images/web_image_8.jpg',
    },
    {
      'title': 'Front-End Development',
      'icon': Icons.dashboard,
      'description': 'We create pixel-perfect, high-performance front-end interfaces using modern frameworks. Our focus is on delivering visually stunning, responsive, and intuitive user experiences that drive engagement.',
      'features': [
        'Modern JavaScript framework development (React, Vue, Angular)',
        'Responsive and adaptive layouts',
        'Cross-browser compatibility and testing',
        'Performance optimization and lazy loading',
        'State management and data flow architecture',
        'Accessibility implementation and testing',
      ],
      'image': 'assets/images/web_image_9.jpg',
    },
    {
      'title': 'Back-End Development',
      'icon': Icons.storage,
      'description': 'Our back-end solutions are engineered for scalability, security, and speed. From database management to server-side logic, we build reliable infrastructures that power dynamic, data-driven applications.',
      'features': [
        'Server-side application development',
        'Database design and optimization',
        'Authentication and authorization systems',
        'API development and integration',
        'Cloud infrastructure setup and management',
        'Performance monitoring and scaling solutions',
      ],
      'image': 'assets/images/web_image_10.jpg',
    },
  ];


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Complete Web Development Solutions That Meet Your Needs',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'We provide full-cycle web development services from strategy to launch that are designed to produce memorable digital experiences that boost user happiness and business expansion.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(solutions.length, (index) {
              return ChoiceChip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(solutions[index]['icon'], size: 18),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        solutions[index]['title'],
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                selected: selectedIndex == index,
                onSelected: (_) {
                  setState(() {
                    selectedIndex = selectedIndex == index ? null : index;
                  });
                },
                selectedColor: Colors.redAccent.shade100,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.grey),
                ),
              );
            }),
          ),

          const SizedBox(height: 20),

          if (selectedIndex != null)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 8)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    solutions[selectedIndex!]['title'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features']
                      .map<Widget>((feature) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.check_circle,
                                  color: Colors.green, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Text(
                                feature,
                                style: const TextStyle(fontSize: 16),
                              )),
                            ],
                          ))
                      .toList(),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      solutions[selectedIndex!]['image'],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // You can add navigation or a link here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}