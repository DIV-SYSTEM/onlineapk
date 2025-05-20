import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutoMovingCardSection extends StatelessWidget {
  final List<Map<String, dynamic>> cardData = [
    {
      "image": "assets/images/frauddetection.png",
      "title": "Fraud Detection",
      "points": [
        "Detect anomalies fast",
        "Secure transaction layer",
        "AI-driven alerts"
      ]
    },
    {
      "image": "assets/images/card2.png",
      "title": "Cloud Backup",
      "points": [
        "Scheduled backups",
        "Secure encryption",
        "Global access"
      ]
    },
    {
      "image": "assets/images/card3.png",
      "title": "Smart Analytics",
      "points": [
        "Custom dashboards",
        "Real-time insights",
        "Predictive metrics"
      ]
    },
    {
      "image": "assets/images/card4.png",
      "title": "AI Chatbot",
      "points": [
        "24/7 support",
        "Contextual answers",
        "Multi-language"
      ]
    },
    {
      "image": "assets/images/card5.png",
      "title": "IoT Integration",
      "points": [
        "Seamless sync",
        "Device monitoring",
        "Instant alerts"
      ]
    },
    {
      "image": "assets/images/card6.png",
      "title": "eCommerce Suite",
      "points": [
        "Cart management",
        "Secure checkout",
        "User analytics"
      ]
    },
    {
      "image": "assets/images/card7.png",
      "title": "Payment Gateway",
      "points": [
        "Multiple currencies",
        "PCI compliant",
        "Instant refunds"
      ]
    },
    {
      "image": "assets/images/card8.png",
      "title": "Video Surveillance",
      "points": [
        "Live stream access",
        "Cloud storage",
        "Motion detection"
      ]
    },
    {
      "image": "assets/images/card9.png",
      "title": "Data Encryption",
      "points": [
        "AES-256 standard",
        "End-to-end security",
        "Zero data loss"
      ]
    },
    {
      "image": "assets/images/card10.png",
      "title": "Workflow Automation",
      "points": [
        "Auto task routing",
        "Approval chains",
        "Performance reports"
      ]
    },
  ];

  AutoMovingCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          const Text(
            "Explore Our Solutions",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              int itemsToShow = constraints.maxWidth > 800 ? 3 : 1;

              return CarouselSlider.builder(
                itemCount: cardData.length,
                itemBuilder: (context, index, realIdx) {
                  final card = cardData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.blue[700],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(2, 4))
                        ],
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              card["image"],
                              height: 80,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            card["title"],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          ...card["points"].map<Widget>((point) {
                            return Row(
                              children: [
                                const Icon(Icons.check,
                                    color: Colors.white, size: 16),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(point,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                )
                              ],
                            );
                          }).toList()
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                  viewportFraction:
                      itemsToShow == 1 ? 0.8 : (1 / itemsToShow) - 0.05,
                  height: 300,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}