import 'package:flutter/material.dart';

class AM5 extends StatefulWidget { const AM5({super.key});

@override State<AM5> createState() => _AM5State(); }

class _AM5State extends State<AM5> { bool showPlatforms = false;

final List<Map<String, dynamic>> platforms = [ { 'icon': Icons.business, 'title': 'CERNER', 'description': 'To facilitate more intelligent decision-making and smooth patient care, we establish dependable, real-time data linkages within Cerner platforms like PowerChart and Millennium.' }, { 'icon': Icons.document_scanner, 'title': 'Allscripts', 'description': 'We customize Allscripts integrations to improve clinical efficiency and usability, whether you are a hospital network or a solo clinic—supporting both Sunrise and Professional systems.' }, { 'icon': Icons.desktop_windows, 'title': 'MEDITECH', 'description': 'Our solutions improve reporting, workflows, and data access throughout your organization by integrating seamlessly with MEDITECH modular environments including Magic and Expanse.' }, { 'icon': Icons.cloud_done, 'title': 'AthenaHealth', 'description': 'We assist in maximizing the capabilities of the athenahealth platform so that patients and providers may take advantage of flexible, cloud-based healthcare delivery via AthenaClinicals and AthenaOne.' }, { 'icon': Icons.cloud_circle, 'title': 'Azure Healthbot', 'description': 'Microsoft’s cloud platform for Healthbot services.' }, { 'icon': Icons.extension, 'title': 'Custom Systems', 'description': 'Have a system that was made to order? No issue. We create secure connectors, middleware, and APIs that link your personalized healthcare solutions with major platforms and databases.' }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text(
        'Important Platforms for Healthcare We Utilize Epic Systems',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 12),
      const Text(
        'We guarantee safe and seamless integration across all Epic environments, from MyChart to inpatient workflows, improving functionality without interfering with clinical procedures.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {
          setState(() {
            showPlatforms = !showPlatforms;
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        ),
        child: const Text(
          'Check Our Platforms',
          style: TextStyle(fontSize: 16,color: Colors.white,),
        ),
      ),
      const SizedBox(height: 20),
      if (showPlatforms)
        Wrap(
          runSpacing: 16,
          spacing: 16,
          children: platforms.map((platform) {
            return Container(
              width: screenWidth < 600 ? screenWidth * 0.9 : 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 6,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(platform['icon'], size: 32, color: Colors.redAccent),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          platform['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          platform['description'],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
    ],
  ),
);

} }
