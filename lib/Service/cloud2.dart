import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Web2 extends StatefulWidget {
  const Web2({super.key});

  @override
  State<Web2> createState() => _Web2State();
}

class _Web2State extends State<Web2> {
  String? selectedService;

  final Map<String, Map<String, dynamic>> serviceDetails = {
    'Cloud Planning and Consulting': {
      'description':
          'Understanding your objectives is the first step. Our team builds personalized strategies that align with your business goals, helping you implement and scale across AWS, Azure, and GCP with confidence.',
      'features': [
        'Personalized strategies aligned with your business goals',
        'Expert consulting for AWS, Azure, and Google Cloud'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-planning', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_10.jpg',
    },
    'Cloud Migration Services': {
      'description': 'Our cloud solutions are designed to bring real value—enhancing security, reducing costs, and improving performance. We ensure a seamless, risk-free migration process tailored to your business needs.',
      'features': ['All-in-one transition to the cloud with minimal impact.', 'Certified professionals for AWS, Azure, and Google Cloud'],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-strategy-migration', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_9.jpg',
    },
    'Multi-Cloud and Hybrid Solutions': {
      'description': 'We help you harness the best of private, public, and multi-cloud environments. Our hybrid strategies reduce vendor lock-in, optimize performance, and ensure centralized control.',
      'features': ['Integration of private/public clouds for performance and flexibility', 'Seamless hybrid environments using on-premise and cloud tech'],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-management-optimization', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_8.jpg',
    },
    'Cloud Security and Compliance': {
      'description': 'We secure your cloud infrastructure using a defense-first approach. Our solutions comply with standards like GDPR, HIPAA, and ISO, and use proactive monitoring to detect threats early.',
      'features': ['Security-first approach to protect data and asset.', 'Compliance with GDPR, HIPAA, ISO, and more'],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-security-resilience', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_6.jpg',
    },
    'Backup and Disaster Recovery': {
      'description': 'Be prepared for anything with our disaster-proof cloud backup solutions. From real-time data security to fast, tested recovery, we keep your business resilient and ready.',
      'features': ['Automated cloud backups for business continuity', 'Real-time data protection and restoration'],
      'button': 'Learn more about it',
      'url': 'https://example.com/backup-recovery', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_1.jpg',
    },
    'Cloud Automation': {
      'description': 'Gain full control and visibility of your cloud ecosystem with intelligent tools and 24/7 monitoring. Optimize resources, ensure compliance, and manage everything through custom dashboards.',
      'features': ['Complete control and real-time visibility of cloud operations', 'Intelligent resource management with analytics-based decisions'],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-automation', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_11.jpg',
    },
    'DevOps': {
      'description': 'Accelerate your digital initiatives with DevOps automation and cloud-native tools. From CI/CD to Infrastructure as Code, we streamline delivery and enhance agility.',
      'features': ['Accelerated development cycles with automation tools', 'CI/CD pipelines for safer and faster deployments'],
      'button': 'Learn more about it',
      'url': 'https://example.com/devops', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_7.png',
    },
  };

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
    }
  }

  void showServiceDrawer(String service) {
    setState(() => selectedService = service);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) {
        final data = serviceDetails[service]!;
        return FractionallySizedBox(
          heightFactor: 0.95,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(service,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(data['description'],
                      style: const TextStyle(
                          fontSize: 14, color: Colors.black87)),
                  const SizedBox(height: 20),
                  const Text("Key Features:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  ...data['features'].map<Widget>((feature) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.check,
                              color: Colors.green, size: 18),
                          const SizedBox(width: 8),
                          Expanded(child: Text(feature)),
                        ],
                      )),
                  const SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: 3 / 2, // Based on 791x527
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        data['imageUrl'],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Container(
                          color: Colors.grey[200],
                          child: const Center(
                              child: Text("Image not found")),
                        ),
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () => _launchUrl(data['url']), // Open webpage
                      child: Text(data['button']),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final services = serviceDetails.keys.toList();

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Complete Web Development Solutions That Meet Your Needs",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            "We provide full-cycle web development services from strategy to launch that are designed to produce memorable digital experiences that boost user happiness and business expansion.",
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: services.map((service) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                  ),
                  onPressed: () => showServiceDrawer(service),
                  child: Text(service, style: const TextStyle(fontSize: 12)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
