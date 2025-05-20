import 'package:flutter/material.dart';

class Home11 extends StatelessWidget {
  const Home11({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final List<Map<String, dynamic>> items = [
      {
        "number": "01",
        "icon": Icons.center_focus_strong,
        "title": "Dedicated CoE",
        "color": Colors.pink.shade50,
      },
      {
        "number": "02",
        "icon": Icons.check_circle_outline,
        "title": "Product Success",
        "color": Colors.blue.shade50,
      },
      {
        "number": "03",
        "icon": Icons.handshake, // Updated to represent Cross Functional Teams
        "title": "Cross Functional Teams",
        "color": Colors.green.shade50,
      },
      {
        "number": "04",
        "icon": Icons.verified_rounded,
        "title": "Deliver Nothing Less Than Excellence",
        "color": Colors.amber.shade50,
      },
      {
        "number": "05",
        "icon": Icons.memory_outlined,
        "title": "Product Engineering in DNA",
        "color": Colors.purple.shade50,
      },
      {
        "number": "06",
        "icon": Icons.engineering,
        "title": "Right Team With Cutting-Edge Tech Skills",
        "color": Colors.orange.shade50,
      },
    ];

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "What Makes oneaim, ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "OneAim?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ...items.map((item) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: item['color'],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    item['number'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    item['icon'],
                    size: 30,
                    color: Colors.black87,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      item['title'],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}