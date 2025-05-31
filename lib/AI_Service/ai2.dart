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
        'Form and Receipt Processing'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-planning',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Optical%20Character%20Recognition%20(OCR).jpg',
      'learnMoreDescription':
          'Our Optical Character Recognition (OCR) service streamlines data processing by converting text from images into machine-readable formats. Using advanced algorithms, we enable automated data entry for invoices, receipts, and forms, reducing manual effort by 80%. A retail client digitized 10,000 documents in a week, improving data accuracy by 95%. Our OCR solutions support multiple languages and integrate with platforms like AWS Textract, ensuring scalability. Features like form processing and receipt scanning enhance operational efficiency, while robust error correction ensures high reliability. This service is ideal for businesses seeking to automate workflows and eliminate paper-based processes.'
    },
    'Form Autofill Prediction': {
      'description': 'Optimize manufacturing workflows with automated systems and integrated digital tools.',
      'features': [
        'Robotic automation',
        'Digital twin',
        'Smart factory integration'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-strategy-migration',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/K-12%20District%20Digital%20Transformation%201.jpg',
      'learnMoreDescription':
          'Form Autofill Prediction leverages AI to streamline data entry in manufacturing workflows. By integrating predictive models, our system auto-populates forms with 90% accuracy, reducing input time by 70%. A factory client increased throughput by 25% using our robotic automation and digital twin technology. Smart factory integration connects IoT devices for real-time data, enhancing decision-making. Our solution adapts to user behavior, improving predictions over time. With secure cloud deployment, it ensures data integrity and scalability, making it perfect for manufacturers aiming to boost efficiency and reduce errors in complex operational environments.'
    },
    'Face Detection and Verification': {
      'description': 'Ensure vehicle health and reduce downtime through advanced diagnostics and analytics.',
      'features': [
        'Predictive maintenance',
        'Error code tracking',
        'Mobile diagnostics'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-management-optimization',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20face%20recognition.jpg',
      'learnMoreDescription':
          'Our Face Detection and Verification service enhances automotive diagnostics with AI-driven analytics. Integrated with mobile platforms, it reduced vehicle downtime by 40% for a fleet operator through predictive maintenance. Error code tracking identifies issues in real-time, while facial verification ensures secure access to diagnostic tools. Using AWS Rekognition, we achieved 99% accuracy in identity checks, improving safety. A client reported 30% lower maintenance costs due to proactive alerts. Scalable and cloud-based, this solution supports remote diagnostics, making it ideal for automotive businesses seeking to optimize vehicle health and operational reliability.'
    },
    'AI Chatbot Integration': {
      'description': 'Streamline operations and improve customer experiences with integrated DMS.',
      'features': [
        'Inventory tracking',
        'Sales management',
        'Customer relationship tools'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-security-resilience',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/AI%20Chatbot%20Integration%20.jpg',
      'learnMoreDescription':
          'AI Chatbot Integration transforms customer service by embedding intelligent bots into your DMS. Our solution, powered by Dialogflow, improved response times by 60% for a dealership, handling inventory queries and sales inquiries 24/7. Features like CRM integration and sentiment analysis enhance customer relationships, boosting satisfaction by 35%. Real-time inventory tracking streamlines operations, reducing manual errors by 50%. Scalable across platforms, our chatbots support multilingual interactions, ensuring global reach. This service empowers businesses to automate support, personalize experiences, and drive sales with minimal operational overhead.'
    },
    'Language Translation': {
      'description': 'We integrate real-time translation APIs like Google Translate to convert content and user inputs into multiple languages.',
      'features': [
        'Multi-lingual User Interface',
        'Multiple Language Translation',
        'Global Audience Reach'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/backup-recovery',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/ai.jpg',
      'learnMoreDescription':
          'Our Language Translation service enables seamless global communication by integrating real-time APIs like Google Translate. Supporting over 100 languages, we helped a retail app expand to 5 new markets, increasing user engagement by 40%. Multi-lingual UI and dynamic content translation ensure accessibility, while automated workflows reduce translation costs by 50%. A client achieved 30% higher conversion rates with localized interfaces. Cloud-based and scalable, our solution ensures low latency and high accuracy, making it ideal for businesses targeting diverse audiences and seeking to enhance user experience across borders.'
    },
    'Product Recommendation Engine': {
      'description': 'We develop AI systems that suggest products or content based on user preferences, behavior, or history using collaborative filtering.',
      'features': [
        'Personalized shopping experiences',
        'Increased user engagement',
        'Boosted conversions'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-automation',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Product%20Recommendation%20Engine.jpg',
      'learnMoreDescription':
          'Our Product Recommendation Engine uses collaborative filtering to deliver personalized shopping experiences. Built with TensorFlow, it increased sales by 35% for an e-commerce client by suggesting relevant products. Analyzing user behavior and history, the engine achieves 85% recommendation accuracy, boosting engagement by 50%. Real-time updates ensure dynamic suggestions, while integration with platforms like Shopify enhances scalability. A retailer reported 20% higher conversions with our system. Secure and cloud-based, this solution drives revenue by tailoring content to individual preferences, making it essential for businesses aiming to maximize customer satisfaction.'
    },
    'Sentiment Analysis': {
      'description': 'We analyze customer reviews and messages using TextBlob, VADER, or AWS Comprehend to detect sentiments and improve feedback handling.',
      'features': [
        'Real-time sentiment tracking',
        'Proactive issue resolution',
        'Customer feedback analysis'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/devops',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Sentiment%20Analysis.jpg',
      'learnMoreDescription':
          'Sentiment Analysis service enhances customer insights by analyzing reviews and messages with tools like AWS Comprehend and VADER. A hospitality client improved guest satisfaction by 30% through real-time sentiment tracking. Our system detects emotions with 90% accuracy, enabling proactive issue resolution. Automated feedback analysis reduced response times by 50%, while integration with CRM platforms streamlined workflows. Scalable and secure, it processes thousands of reviews daily, helping businesses identify trends and address concerns swiftly. This solution is key for companies seeking to optimize feedback handling and strengthen customer relationships.'
    },
  };

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
                      Text(
                        service,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data['description'],
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  ...data['features'].map<Widget>((feature) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.check, color: Colors.green, size: 18),
                          const SizedBox(width: 8),
                          Expanded(child: Text(feature)),
                        ],
                      )),
                  const SizedBox(height: 20),
                  if (data['imageUrl'].isNotEmpty)
                    AspectRatio(
                      aspectRatio: 3 / 2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          data['imageUrl'],
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
                  if (data['imageUrl'].isNotEmpty) const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
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
                                            service,
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
                                      data['learnMoreDescription'],
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
            'Complete AI and ML Solutions That Meet Your Needs',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'We offer a wide range of advanced AI services, delivering innovative solutions powered by the latest trends and technologies, all backed by robust, high-quality security to ensure trust, efficiency, and performance.',
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
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
