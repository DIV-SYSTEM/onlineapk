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
      'url': 'https://example.com/cloud-planning',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_10.jpg',
      'learnMoreDescription':
          'Our Cloud Planning and Consulting service starts by deeply understanding your business goals to craft a tailored cloud strategy. We evaluate your current infrastructure, pinpoint opportunities for growth, and design a roadmap for seamless adoption of AWS, Azure, or GCP. Our experts assist with vendor selection, cost optimization, and scalability planning to ensure maximum ROI. For a mid-sized retailer, we reduced IT costs by 28% through strategic cloud alignment. Our approach minimizes risks, enhances system reliability, and provides ongoing support, empowering your organization with a robust, future-ready cloud environment that drives innovation and efficiency.',
    },
    'Cloud Migration Services': {
      'description':
          'Our cloud solutions are designed to bring real value—enhancing security, reducing costs, and improving performance. We ensure a seamless, risk-free migration process tailored to your business needs.',
      'features': [
        'All-in-one transition to the cloud with minimal impact.',
        'Certified professionals for AWS, Azure, and Google Cloud'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-strategy-migration',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_9.jpg',
      'learnMoreDescription':
          'Cloud Migration Services ensure a smooth, secure transition to the cloud with minimal disruption. We analyze your systems, map dependencies, and execute migrations using automated tools to maintain uptime. A logistics firm migrated 400 servers to AWS in three weeks, cutting costs by 22% and achieving 99.99% availability. Our certified professionals, proficient in AWS, Azure, and GCP, handle data, applications, and workloads with precision. Post-migration, we optimize performance and security, ensuring compliance with industry standards. Our tailored approach guarantees your cloud environment is efficient, cost-effective, and ready to support your business objectives long-term.',
    },
    'Multi-Cloud and Hybrid Solutions': {
      'description':
          'We help you harness the best of private, public, and multi-cloud environments. Our hybrid strategies reduce vendor lock-in, optimize performance, and ensure centralized control.',
      'features': [
        'Integration of private/public clouds for performance and flexibility',
        'Seamless hybrid environments using on-premise and cloud tech'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-management-optimization',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_8.jpg',
      'learnMoreDescription':
          'Our Multi-Cloud and Hybrid Solutions combine private, public, and on-premise systems to deliver flexibility and performance. We integrate AWS, Azure, and GCP, reducing vendor dependency and enhancing resilience. A financial client improved data processing by 35% using our hybrid setup, maintaining sensitive operations on-premise while leveraging public cloud scalability. Centralized dashboards provide real-time insights, streamlining management across environments. We optimize workloads for cost and efficiency, with automated failover ensuring uptime. Our solutions support compliance and dynamic scaling, enabling businesses to adapt quickly while maintaining control over their cloud ecosystem.',
    },
    'Cloud Security and Compliance': {
      'description':
          'We secure your cloud infrastructure using a defense-first approach. Our solutions comply with standards like GDPR, HIPAA, and ISO, and use proactive monitoring to detect threats early.',
      'features': [
        'Security-first approach to protect data and asset.',
        'Compliance with GDPR, HIPAA, ISO, and more'
      ],
      'button': 'Learn more about it',
      'url': 'https://www.theoneaim.in/cloud-services/cloud-security-resilience',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_6.jpg',
      'learnMoreDescription':
          'Cloud Security and Compliance services protect your cloud infrastructure with advanced security measures. We implement encryption, access controls, and real-time threat detection across AWS, Azure, and GCP, ensuring compliance with GDPR, HIPAA, and ISO. A healthcare provider avoided a data breach using our monitoring tools, maintaining patient trust. Regular audits and penetration tests strengthen defenses, reducing compliance preparation time by 45%. Our defense-first approach safeguards sensitive data, with tailored frameworks to meet regulatory requirements. By embedding security at every layer, we enable your business to operate confidently in the cloud, free from evolving cyber threats.',
    },
    'Backup and Disaster Recovery': {
      'description':
          'Be prepared for anything with our disaster-proof cloud backup solutions. From real-time data security to fast, tested recovery, we keep your business resilient and ready.',
      'features': [
        'Automated cloud backups for business continuity',
        'Real-time data protection and restoration'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/backup-recovery',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_1.jpg',
      'learnMoreDescription':
          'Our Backup and Disaster Recovery solutions keep your business resilient with secure, automated cloud backups. Using AWS, Azure, or GCP, we ensure real-time data protection and rapid recovery, with a retail client restoring operations in 45 minutes post-outage. Multi-region backups and encryption safeguard against data loss, while customized recovery objectives minimize downtime by 65%. We conduct regular recovery drills and provide 24/7 monitoring to maintain readiness. Our approach ensures business continuity, protects critical assets, and supports compliance, giving you confidence that your operations can withstand any disruption with minimal impact.',
    },
    'Cloud Automation': {
      'description':
          'Gain full control and visibility of your cloud ecosystem with intelligent tools and 24/7 monitoring. Optimize resources, ensure compliance, and manage everything through custom dashboards.',
      'features': [
        'Complete control and real-time visibility of cloud operations',
        'Intelligent resource management with analytics-based decisions'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/cloud-automation',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_11.jpg',
      'learnMoreDescription':
          'Cloud Automation services enhance your cloud operations with intelligent tools and continuous monitoring. We provide custom dashboards for AWS, Azure, and GCP, offering real-time insights into resource usage. A tech startup cut costs by 18% using our automated scaling solutions. We implement Infrastructure as Code (IaC) and compliance automation, reducing provisioning time by 55%. Machine learning-driven analytics optimize performance, eliminating inefficiencies. Our 24/7 monitoring ensures compliance with regulations like GDPR, while orchestration tools streamline deployments. This empowers your team to focus on innovation, maintaining a scalable, secure, and cost-effective cloud environment tailored to your needs.',
    },
    'DevOps': {
      'description':
          'Accelerate your digital initiatives with DevOps automation and cloud-native tools. From CI/CD to Infrastructure as Code, we streamline delivery and enhance agility.',
      'features': [
        'Accelerated development cycles with automation tools',
        'CI/CD pipelines for safer and faster deployments'
      ],
      'button': 'Learn more about it',
      'url': 'https://example.com/devops',
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/cloud_image_7.png',
      'learnMoreDescription':
          'Our DevOps services drive agility with automation and cloud-native practices. We deploy CI/CD pipelines, Infrastructure as Code, and Kubernetes on AWS, Azure, or GCP, cutting release cycles by 50%. A fintech client tripled deployment frequency with our automated testing. Real-time monitoring and serverless architectures reduce costs by 25%, enhancing scalability. We integrate security into DevOps workflows, ensuring compliance and minimizing risks. Collaboration tools improve team efficiency, while our cloud-native approach ensures reliable, high-quality software delivery. This enables your business to innovate rapidly, stay competitive, and deliver exceptional digital experiences in fast-paced markets.',
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
                  const SizedBox(height: 20),
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
            'Complete Cloud Solutions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            'We provide comprehensive cloud services from strategy to deployment, designed to enhance security, optimize performance, and drive business growth through innovative cloud solutions.',
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
