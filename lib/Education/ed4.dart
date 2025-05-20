import 'package:flutter/material.dart';

class Am4 extends StatefulWidget { const Am4({super.key});

@override State<Am4> createState() => _Am4State(); }

class _Am4State extends State<Am4> { int? selectedIndex;
  final List<Map<String, dynamic>> solutions = [
  {
    'title': 'Development of a Custom LMS',
    'icon': Icons.menu_book,
    'description':
    'Design and build custom Learning Management Systems tailored to your institution\'s unique requirements. Our LMS solutions enhance content delivery, improve learner engagement, and provide tools for administration, assessment, and analytics.',
    'features': [
      'Custom course creation and management',
      'User-friendly student and teacher interfaces',
      'Integrated assessment tools',
      'Progress and performance tracking',
      'Gamified learning modules',
      'Admin dashboard with reporting',
    ],
    'image': 'assets/custom_lms.png',
  },
  {
    'title': 'Integration of Student Information Systems (SIS)',
    'icon': Icons.school,
    'description':
    'Seamlessly integrate Student Information Systems with existing educational infrastructure to centralize student data, streamline administrative workflows, and enable real-time information access.',
    'features': [
      'Centralized student record management',
      'Real-time data synchronization',
      'Secure access control',
      'API-based system interoperability',
      'Custom SIS dashboards',
      'Mobile-friendly access for students/parents',
    ],
    'image': 'assets/images/1 Integration of Student Information Systems (SIS).jpg',
  },
  {
    'title': 'Solutions for Virtual Classrooms',
    'icon': Icons.laptop_mac,
    'description':
    'Deliver immersive and interactive virtual classroom experiences through advanced video conferencing, whiteboards, and collaborative tools—ideal for hybrid and remote learning setups.',
    'features': [
      'Real-time video and audio conferencing',
      'Interactive whiteboards and screen sharing',
      'Breakout rooms for group work',
      'Live polling and quizzes',
      'Class recording and playback',
      'Multi-device support',
    ],
    'image': 'assets/images/2 solutions or virtual classroom.jpg',
  },
  {
    'title': 'Data Security & Compliance in Education',
    'icon': Icons.security,
    'description':
    'Ensure the security of educational data with robust compliance and cybersecurity measures. Our solutions help institutions stay compliant with FERPA, GDPR, and other regulations while protecting sensitive information.',
    'features': [
      'Data encryption at rest and in transit',
      'User role and permission management',
      'Multi-factor authentication',
      'Automated backups and recovery',
      'Audit logging and reporting',
      'Compliance with FERPA, GDPR, etc.',
    ],
    'image': 'assets/images/3 Data Security & Compliance in Education.jpg',
  },
  {
    'title': 'Solutions for Mobile Learning',
    'icon': Icons.smartphone,
    'description':
    'Empower students to learn on-the-go with mobile-optimized learning platforms. Our mobile learning solutions deliver responsive content, offline access, and seamless course interaction across devices.',
    'features': [
      'Responsive course interfaces',
      'Push notifications for reminders',
      'Offline content availability',
      'Interactive multimedia lessons',
      'Mobile quizzes and assessments',
      'Progress sync across devices',
    ],
    'image': 'assets/images/4 Solutions for Mobile Learning.jpg',
  },
  {
    'title': 'Analytics & Insights in Education',
    'icon': Icons.bar_chart,
    'description':
    'Transform educational data into meaningful insights to enhance student performance, guide faculty decisions, and optimize institutional outcomes through advanced analytics and reporting tools.',
    'features': [
      'Real-time academic performance tracking',
      'Predictive analytics for dropout risks',
      'Curriculum effectiveness evaluation',
      'Student engagement analysis',
      'Resource allocation optimization',
      'Custom dashboard generation',
    ],
    'image': 'assets/education_analytics.png',
  },
];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Our IT Solutions for Education',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      const Text(
        'We provide a full range of education-focused IT solutions that are intended to handle all facets of contemporary learning, from system integration and digital classroom creation to data security and performance analytics.',
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
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                solutions[selectedIndex!]['description'],
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              const Text('Key Features:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              ...solutions[selectedIndex!]['features'].map<Widget>((feature) => Row(
                    children: [
                      const Icon(Icons.check_circle, color: Colors.green),
                      const SizedBox(width: 8),
                      Expanded(child: Text(feature)),
                    ],
                  )),
              const SizedBox(height: 16),
              Image.asset(
                solutions[selectedIndex!]['image'],
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ],
          ),
        ),
    ],
  ),
);

} }