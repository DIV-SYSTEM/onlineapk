import 'package:flutter/material.dart';

class Am4 extends StatefulWidget { const Am4({super.key});

@override State<Am4> createState() => _Am4State(); }

class _Am4State extends State<Am4> { int? selectedIndex;

final List<Map<String, dynamic>> solutions = [ { 'title': 'Electronic Health Records', 'icon': Icons.electrical_services, 'description': 'Our cutting-edge EHR solutions simplify clinical documentation, centralize patient data, and promote better, more effective care decisions. Built to be secure and interoperable, they scale with your organization and connect easily with existing infrastructure.','features': [ 'Complete patient data administration', 'Intelligent clinical documentation instruments', 'Combined order and medicine administration' ], 'image': 'assets/connected_vehicle.png', }, { 'title': 'Telehealth Platforms', 'icon': Icons.factory, 'description': 'Provide safe, excellent virtual care with integrated patient data, e-prescriptions, and HIPAA-compliant video. Our telehealth platforms support remote consultations, continuous care, and digital workflows that improve accessibility and efficiency.', 'features': [ 'Secure video consultations', 'Integrated e-prescriptions', 'Digital intake and assessments' ], 'image': 'assets/manufacturing.png', }, { 'title': 'Analytics Healthcare', 'icon': Icons.build_circle, 'description': 'Utilize real-time data to boost operational efficiency, mitigate risks, and improve clinical outcomes. Our analytics solutions empower data-driven decisions by delivering actionable insights across the care continuum.', 'features': [ 'Operational performance metrics', 'Predictive analytics', 'Risk stratification' ], 'image': 'assets/diagnostic.png', }, { 'title': 'Medical Imaging Solutions', 'icon': Icons.store, 'description': 'Streamline radiology workflows and improve diagnostic precision with our advanced medical imaging systems. We support PACS integration, cross-department sharing, and AI-powered imaging analysis to enhance care outcomes.', 'features': [ 'PACS integration', 'DICOM-compliant imaging', 'AI-powered image analytics' ], 'image': 'assets/dealership.png', }, { 'title': 'Patient Engagement Platforms', 'icon': Icons.memory, 'description': 'Empower patients with digital tools that improve communication, education, and healthcare engagement. Our platforms offer appointment scheduling, medication reminders, health insights, and secure messaging — all in one place.', 'features': [ 'Centralized patient portal', 'Appointment scheduling', 'Medication and wellness reminders' ], 'image': 'assets/autonomous.png', }, { 'title': 'Healthcare Interoperability', 'icon': Icons.local_shipping, 'description': 'Break down data silos and enable seamless health information exchange across systems. Our interoperability solutions ensure real-time, secure data sharing to support coordinated, patient-centric care delivery.', 'features': [ 'Health Information Exchange (HIE)', 'API-driven system integration', 'Standards-based data normalization' ], 'image': 'assets/fleet.png', }, ];

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width;

return Container(
  color: Colors.grey.shade100,
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Our Healthcare IT Solutions',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      const Text(
        'Healthcare industry is fast-moving, heavily regulated, and driven by data. To stay competitive, providers seek advanced, integrated technologies that enhance clinical decision-making, safeguard patient data, and ensure smooth care delivery. Our tailored healthcare IT solutions are built to meet those exact needs..',
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
