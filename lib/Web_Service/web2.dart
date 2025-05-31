import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_5.jpg',
      'url': 'https://example.com/web-app-development',
      'learnMoreDescription': 'Our Web App Development service delivers tailored, high-performance applications that elevate user engagement and drive business growth. From ideation to deployment, we leverage modern frameworks like React and Node.js to build scalable solutions. A recent project for a logistics firm resulted in a 40% increase in user retention through a real-time tracking app. We prioritize seamless UX, cloud integration, and robust security, ensuring your app performs across devices. Our iterative process includes prototyping, testing, and optimization, reducing time-to-market by 30%. Whether it’s a PWA or an enterprise portal, we create digital experiences that align with your strategic goals and deliver measurable results.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_2.jpg',
      'url': 'https://example.com/custom-website-development',
      'learnMoreDescription': 'Custom Website Development at our core is about creating unique, brand-aligned websites that deliver results. Using platforms like WordPress and custom frameworks, we built a site for a retail client that boosted organic traffic by 50% through SEO optimization. Our responsive designs ensure flawless performance on mobile and desktop, while fast load times improve user satisfaction by 25%. We integrate CMS for easy content updates and ensure WCAG compliance for accessibility. From custom animations to performance tuning, our process guarantees a website that enhances your brand, engages visitors, and converts leads effectively.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_4.jpg',
      'url': 'https://example.com/ui-ux-designing',
      'learnMoreDescription': 'Our UI & UX Designing service focuses on creating intuitive interfaces that captivate users and boost conversions. For a fintech app, we increased user sign-ups by 35% through streamlined user flows and engaging visuals. We conduct in-depth user research, develop personas, and craft interactive prototypes using tools like Figma. Our iterative testing ensures usability, reducing bounce rates by 20%. By building cohesive design systems, we maintain brand consistency across platforms. From wireframes to final UI, our process delivers seamless, delightful experiences that align with your business objectives and keep users coming back.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_1.jpg',
      'url': 'https://example.com/e-commerce-development',
      'learnMoreDescription': 'Our E-Commerce Development service creates high-converting online stores tailored to your brand. For a fashion retailer, we built a Shopify-based platform that increased sales by 45% with optimized checkout flows. We integrate secure payment gateways, robust inventory systems, and mobile-friendly designs to ensure seamless shopping. Advanced search and product filtering enhance user experience, while security measures protect transactions. Our solutions scale to handle traffic spikes, with a client reporting 99.9% uptime during Black Friday. From custom storefronts to analytics dashboards, we empower your e-commerce business to thrive in competitive markets.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_8.jpg',
      'url': 'https://example.com/api-development',
      'learnMoreDescription': 'API Development & Integration services ensure seamless connectivity across your platforms. We built a RESTful API for a travel app, reducing data retrieval time by 40% with GraphQL optimization. Our team designs secure, scalable APIs and integrates third-party services like payment gateways and CRMs. Microservices architectures enhance flexibility, while comprehensive documentation simplifies developer onboarding. For a SaaS client, we cut integration costs by 30% through efficient API gateways. Our focus on security, including OAuth and JWT, protects data flows, enabling robust, interconnected systems that support your business growth.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_9.jpg',
      'url': 'https://example.com/front-end-development',
      'learnMoreDescription': 'Our Front-End Development service delivers visually stunning, responsive interfaces that engage users. Using React, we built a dashboard for a logistics firm, improving user interaction speed by 50%. Our responsive layouts ensure cross-device compatibility, with lazy loading cutting page load times by 30%. We implement state management with Redux for seamless data flow and ensure WCAG-compliant accessibility. Cross-browser testing guarantees consistent performance, while a client saw a 25% increase in user retention due to our intuitive designs. Our focus on modern frameworks and optimization creates front-ends that elevate your digital presence.'
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
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/web_image_10.jpg',
      'url': 'https://example.com/back-end-development',
      'learnMoreDescription': 'Back-End Development services create robust, scalable infrastructures for your applications. For a healthcare platform, we developed a Node.js backend with MongoDB, reducing query times by 45%. Our solutions include secure authentication, optimized databases, and cloud setups on AWS, ensuring 99.9% uptime. We integrate APIs for seamless data flow and implement monitoring tools to scale dynamically. A client achieved 30% cost savings through our efficient server management. With a focus on security and performance, we build back-ends that power reliable, data-driven applications, supporting your business’s growth and operational needs.'
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
                    Icon(
                      solutions[index]['icon'],
                      size: 18,
                      color: Colors.blue,
                    ),
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
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Image.network(
                        solutions[selectedIndex!]['image'],
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[200],
                          child: const Center(child: Text('Image not found')),
                        ),
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.9,
                                maxHeight: MediaQuery.of(context).size.height * 0.7,
                              ),
                              padding: const EdgeInsets.all(16),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            solutions[selectedIndex!]['title'],
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      solutions[selectedIndex!]['learnMoreDescription'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
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
