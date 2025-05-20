import 'package:flutter/material.dart';

class Home10 extends StatelessWidget {
  const Home10({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxWidth = screenWidth * 0.85;

    final List<Map<String, dynamic>> cells = [
      {
        "text": "This is a very employee-friendly company.",
        "icon": Icons.emoji_people,
        "role": "Senior Software Engineer II",
        "alignLeft": true,
      },
      {
        "text": "Team bonding here is as refreshing as morning coffee!",
        "icon": Icons.coffee,
        "role": "UI/UX Designer",
        "alignLeft": false,
      },
      {
        "text": "Great support and amazing growth opportunities!",
        "icon": Icons.trending_up,
        "role": "Backend Developer",
        "alignLeft": true,
      },
      {
        "text": "The leadership truly listens and cares about us.",
        "icon": Icons.leaderboard,
        "role": "DevOps Engineer",
        "alignLeft": false,
      },
    ];

    return Container(
      color: Colors.lightBlue[100],
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Column(
        children: [
          ...cells.map((cell) => _buildChatBubble(
                text: cell['text'] as String,
                icon: cell['icon'] as IconData,
                role: cell['role'] as String,
                isLeft: cell['alignLeft'] as bool,
                maxWidth: maxWidth,
              )),
          const SizedBox(height: 40),
          const Text(
            "A people-first culture thrives on valuing individuals above all else.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "At OneAim Technologies, our people-first culture thrives by valuing every individual and embracing diversity.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black87,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child: const Text(
              "Explore vibrant life @OneAim",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble({
    required String text,
    required IconData icon,
    required String role,
    required bool isLeft,
    required double maxWidth,
  }) {
    return Align(
      alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(isLeft ? 0 : 20),
            bottomRight: Radius.circular(isLeft ? 20 : 0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
crossAxisAlignment:
              isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 10),
            Icon(icon, color: Colors.blueAccent),
            const SizedBox(height: 6),
            Text(
              role,
              style: const TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}