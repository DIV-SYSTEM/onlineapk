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
    'Optical Character Recognition (OCR)': {
      'description':
          'With OCR, our systems read and convert text from images into machine-readable format, enabling automated data entry.',
      'features': [
        'Digitization of documents',
        'Automated data extraction',
        'Form and Reciept Processing'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-planning', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Optical%20Character%20Recognition%20(OCR).jpg',
    },
    'Form Autofill Prediction': {
      'description': 'Optimize manufacturing workflows with automated systems and integrated digital tools.',
      'features': [
        'Robotic automation',
        'Digital twin',
        'Smart factory integration'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-strategy-migration', // Replace with actual URL
      'imageUrl': '',
    },
    'Face detection and Verification': {
      'description': 'Ensure vehicle health and reduce downtime through advanced diagnostics and analytics.',
      'features': [
        'Predictive maintenance',
        'Error code tracking',
        'Mobile diagnostics'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-management-optimization', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20face%20recognition.jpg',
    },
    'AI Chatbot Integration': {
      'description': 'Streamline operations and improve customer experiences with integrated DMS.',
      'features': [
        'Inventory tracking',
        'Sales management',
        'Customer relationship tools'
      ],

      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-security-resilience', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/AI%20Chatbot%20Integration%20.jpg',
    },
    'Language Translation': {
      'description': 'We integrate real-time translation APIs like Google Translate to convert content and user inputs into multiple languages.',
      'features': [
        'Multi-lingual User Interface',
        'Multiple Language Translation',
        'Global Audience Reach'
      ],

      'button': 'Learn more about it',
      'url': 'https://example.com/backup-recovery', // Replace with actual URL
      'imageUrl': '',
    },
    'Product Recommendation Engine': {
            'description': 'We develop AI systems that suggest products or content based on user preferences, behavior, or history using collaborative filtering.',
      'features': [
        'Personalized shopping experiences',
'Increased user engagement',
'Boosted conversions'
      ],

      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-automation', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Product%20Recommendation%20Engine.jpg',
    },
    'Sentiment Analysis': {
      'description': 'We analyze customer reviews and messages using TextBlob, VADER, or AWS Comprehend to detect sentiments and improve feedback handling',
      'features': ['Real-time sentiment tracking', 'Proactive issue resolution','Real-time sentiment tracking'],
      'button': 'Learn more about it',
      'url': 'https://example.com/devops', // Replace with actual URL
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Sentiment%20Analysis.jpg',
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
            "Complete AI and ML Solutions That Meet Your Needs",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            "We offer a wide range of advanced AI services, delivering innovative solutions powered by the latest trends and technologies, all backed by robust, high-quality security to ensure trust, efficiency, and performance.",
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
