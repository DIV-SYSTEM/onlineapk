import 'package:flutter/material.dart';

class Web2 extends StatefulWidget { const Web2({super.key});

@override State<Web2> createState() => _Web2State(); }

class _Web2State extends State<Web2> { String? selectedService;

final Map<String, Map<String, dynamic>> serviceDetails = { 'Cloud Planning and Consulting': { 'description': 'We craft intuitive and engaging interfaces for delightful user experiences.', 'features': [ 'User research and persona development', 'Information architecture and user flow mapping' ], 'button': 'Learn more about UI/UX Design' }, 'Frontend Development': { 'description': 'Building responsive and elegant interfaces.', 'features': ['Modern UI frameworks', 'Cross-browser compatibility'], 'button': 'Learn more about Frontend Development' }, 'Backend Development': { 'description': 'Scalable and secure server-side solutions.', 'features': ['API design & DB integration', 'Authentication systems'], 'button': 'Learn more about Backend Development' }, 'CMS Integration': { 'description': 'Flexible content management solutions.', 'features': ['WordPress/Drupal support', 'Easy content workflows'], 'button': 'Learn more about CMS Integration' }, 'QA & Testing': { 'description': 'Ensuring bug-free, high-quality applications.', 'features': ['Manual & automated testing', 'Cross-device testing'], 'button': 'Learn more about QA & Testing' }, 'Maintenance': { 'description': 'Ongoing support and updates.', 'features': ['Timely issue resolution', 'Performance monitoring'], 'button': 'Learn more about Maintenance' }, 'DevOps': { 'description': 'CI/CD, automation, and deployment pipelines.', 'features': ['Infrastructure as code', 'Cloud-native deployments'], 'button': 'Learn more about DevOps' }, };

void showServiceDrawer(String service) { setState(() => selectedService = service); showModalBottomSheet( context: context, isScrollControlled: true, backgroundColor: Colors.white, builder: (context) { final data = serviceDetails[service]!; return FractionallySizedBox( heightFactor: 0.95, child: Padding( padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [ Container(child:Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ Text(service, style: const TextStyle( fontSize: 18, fontWeight: FontWeight.bold)), IconButton( icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context), ), ], ),), const SizedBox(height: 10), Text(data['description'], style: const TextStyle(fontSize: 14, color: Colors.black87)), const SizedBox(height: 20), const Text("Key Features:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), const SizedBox(height: 10), ...data['features'].map<Widget>((feature) => Row( children: [ const Icon(Icons.check, color: Colors.green, size: 18), const SizedBox(width: 8), Expanded(child: Text(feature)) ], )), const SizedBox(height: 20), Container( height: 200, width: double.infinity, color: Colors.grey[300], child: const Center(child: Text("Image Placeholder")), ), const SizedBox(height: 20), Center(child:ElevatedButton( style: ElevatedButton.styleFrom( shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))), onPressed: () {}, child: Text(data['button'])),) ], ), ), ); }, ); }

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width; final isMobile = screenWidth < 600;

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

      // Buttons container
      Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              ),
              onPressed: () => showServiceDrawer(service),
              child: Text(service, style: const TextStyle(fontSize: 12)),
            );
          }).toList(),
        ),
      )
    ],
  ),
);

} }