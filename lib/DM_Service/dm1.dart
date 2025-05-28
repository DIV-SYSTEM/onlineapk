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
                TextSpan(text: 'DIGITAL MARKETING\n'),
                TextSpan(
                  text: 'Boost Your Online Visibility',
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 8,
                        color: Colors.redAccent,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                ),
                TextSpan(text: ' With Digital Marketing'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Smart, data-driven tactics that draw in, interact with, and convert your target market can help your brand succeed. We provide the road plan for your expansion, whether it is through social media, SEO, or paid advertising. Set up a free consultation to find out what aspects of your digital marketing are effective and which are not.",
            style: TextStyle(
              fontSize: isSmall ? 14 : 18,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
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
                const SizedBox(height: 10),
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
          ),
          const SizedBox(height: 30),
          if (showDeliverance)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                deliverCell(Icons.ads_click, "Mastery of Meta Ads",
                    "Get in Touch with the Correct People at the Correct Time."),
                deliverCell(Icons.ad_units, "Google Ads Dominance",
                    "Get Noticed Where It Counts Most"),
                deliverCell(Icons.search, "Optimization of Search Engines (SEO)",
                    "Grow gradually, Remain at the top"),
                deliverCell(Icons.share, "Power of Social Media",
                    "Convert Scrolls into Revenue"),
                deliverCell(Icons.link, "Linking Content",
                    "Encourage Growth with Smart Storytelling"),
                deliverCell(Icons.email, "Email Marketing Strategies That Work",
                    "Send the Appropriate Message at the Appropriate Time"),
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
