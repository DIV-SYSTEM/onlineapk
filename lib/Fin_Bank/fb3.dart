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
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              ),
              child: const Text(
                'The Need for Specialized IT Solutions in Financial Institutions',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          if (isExpanded) ...[
            const SizedBox(height: 24),
            const Text(
              "In today's digital environment, banks and other financial institutions face particular difficulties. They have to adhere to stringent regulations, defend against sophisticated security risks, and stay abreast of ever evolving client demands. For these particular problems, standard IT solutions are ineffective.",
              style: TextStyle(fontSize: 16.5, height: 1.5, color: Colors.black87),
            ),
            const SizedBox(height: 28),
            _buildCheckItem(
              'Security Challenges:',
              'Protecting systems from fraud, hackers, and data leaks is a security risk.',
            ),
            _buildCheckItem(
              'Observing the Rules:',
              'Keeping abreast on intricate financial regulations.',
            ),
            _buildCheckItem(
              'Support for Old Systems:',
              'Ensuring that new tools are compatible with current technology.',
            ),
            _buildCheckItem(
              'Digital Transformation:',
              'Providing seamless and user-friendly digital services to clients.',
            ),
            const SizedBox(height: 28),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/Financial Institutions Need Specialized IT Solutions 11.jpg',
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
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.verified_rounded, color: Colors.green, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black87, fontSize: 16, height: 1.4),
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
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
