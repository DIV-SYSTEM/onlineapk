import 'package:flutter/material.dart';

class AM3 extends StatefulWidget {
  const AM3({super.key});

  @override
  State<AM3> createState() => _AM3State();
}

class _AM3State extends State<AM3> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

    return Container(
        // Darker background for a more professional look
      padding: const EdgeInsets.all(32),  // Increased padding for a spacious feel
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() => isExpanded = !isExpanded);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                // White text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),  // Slightly more rounded corners
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                elevation: 4,  // Added subtle elevation for the button
              ),
              child: const Text(
                'Why Your Institution Needs Specialized Education IT Solutions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,  // Slightly larger font size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (isExpanded) ...[
            const Text(
              "Educational institutions face different challenges that generic tech solutions can't address. From managing complex academic data to delivering engaging virtual learning environments, schools, colleges, and universities need tailored, secure, and scalable systems.",
              style: TextStyle(
                fontSize: 16,  // Adjusted font size for better readability
                color: Colors.black,  // White text for contrast
                height: 1.6,  // Line height for readability
              ),
            ),
            const SizedBox(height: 20),
            _buildCheckItem(
              'Integrated Learning Environments:',
              'Build LMS and virtual classrooms that align with your curriculum and pedagogy',
            ),
            _buildCheckItem(
              'Seamless System Integration',
              'Connect learning tools, SIS, attendance, exam management, and content repositories',
            ),
            _buildCheckItem(
              'Interoperability:',
              'Connect disparate systems for unified educational experiences',
            ),
            _buildCheckItem(
              'Secure & Compliant',
              'Ensure data privacy and compliance with standards like FERPA, COPPA, and GDPR',
            ),
            _buildCheckItem(
              'Scalable for Growth:',
              'Support thousands of students across multiple campuses and programs with flexible architecture',
            ),
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),  // More rounded corners for images
                child: Image.network(
                  'https://images.unsplash.com/photo-1519589327869-9f7aa1dcd0e6',
                  width: isSmallScreen ? screenWidth * 0.9 : screenWidth * 0.6,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildCheckItem(String title, String desc) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),  // Adjusted padding for better spacing
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.greenAccent,  // Green check for a professional look
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black87, fontSize: 16),
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' $desc'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
