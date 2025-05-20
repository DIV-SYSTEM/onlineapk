import 'package:flutter/material.dart';

class Web1 extends StatefulWidget {
  final VoidCallback scrollToForm;

  const Web1({Key? key, required this.scrollToForm}) : super(key: key);

  @override
  State<Web1> createState() => _Web1State();
}

class _Web1State extends State<Web1> {
  bool showDeliverance = false;

  @override
  Widget build(BuildContext context) {
    final isSmall = MediaQuery.of(context).size.width < 600;

    return Container(
      color: const Color(0xFF1C1C2D),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: isSmall ? 24 : 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              children: const [
                TextSpan(text: 'Build More Smarter\n'),
                TextSpan(
                  text: 'Web Experiences',
                  style: TextStyle(
                    color: Colors.redAccent,
                    shadows: [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.redAccent,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                TextSpan(text: ' That Bring Results'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "We bring your ideas to life with state-of-the-art development and design that engage, convert, and inspire whether you're creating a beautiful landing page or a powerful web platform.",
            style: TextStyle(
              fontSize: isSmall ? 14 : 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 10,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  elevation: 10,
                  shadowColor: Colors.redAccent.shade200,
                ),
                onPressed: () {
                  setState(() => showDeliverance = !showDeliverance);
                },
                child: const Text("Our Deliverance"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  elevation: 6,
                ),
                onPressed: widget.scrollToForm,
                child: const Text("Contact Us"),
              ),
            ],
          ),
          const SizedBox(height: 30),
          if (showDeliverance)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                deliverCell(Icons.design_services, "Design Adaptability",
                    "We ensure your design fits all screens beautifully and intuitively."),
                deliverCell(Icons.speed, "Performance",
                    "Lightning fast, optimized experiences to minimize bounce and boost engagement."),
                deliverCell(Icons.style, "Stylish User Interface",
                    "Crafted with aesthetics in mind to delight users at every touchpoint."),
                deliverCell(Icons.code, "Quality Code",
                    "Clean, scalable, and maintainable code that stands the test of time."),
              ],
            )
        ],
      ),
    );
  }

  Widget deliverCell(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.redAccent, size: 28),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}