import 'dart:async';
import 'package:flutter/material.dart';

class AM2Section extends StatefulWidget {
  const AM2Section({super.key});

  @override
  State<AM2Section> createState() => _AM2SectionState();
}

class _AM2SectionState extends State<AM2Section> {
  late final PageController _pageController;
  late Timer _timer;

  final List<_InfoCardData> cardData = const [
    _InfoCardData(
      icon: Icons.settings_suggest,
      title: "End-to-End Solutions",
      description:
          "Integrated IT solutions that cover the entire automotive value chain.",
    ),
    _InfoCardData(
      icon: Icons.directions_car_filled,
      title: "Automotive Expertise",
      description:
          "Years of experience building reliable systems for the auto industry.",
    ),
    _InfoCardData(
      icon: Icons.auto_graph,
      title: "Future-Ready",
      description:
          "Innovative technologies to future-proof your automotive business.",
    ),
  ];

  static const int _initialPage = 1000;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _initialPage,
      viewportFraction: 0.85,
    );

    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmall = screenWidth < 500;

    return Container(
      color: const Color(0xFFF5F5F5),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Comprehensive Automotive IT Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 22 : 28,
              fontFamily:'Poppins',
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "In today's rapidly evolving automotive landscape, technology is the driving force behind innovation, efficiency, and competitive advantage. Our specialized automotive IT solutions help manufacturers, suppliers, dealerships, and fleet operators navigate the digital transformation journey.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 14 : 16,
              color: Colors.black54,
              fontFamily:'Inter',
              fontWeight:FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 230,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                final cardIndex = index % cardData.length;
                return _InfoCard(data: cardData[cardIndex]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCardData {
  final IconData icon;
  final String title;
  final String description;

  const _InfoCardData({
    required this.icon,
    required this.title,
    required this.description,
  });
}

class _InfoCard extends StatelessWidget {
  final _InfoCardData data;

  const _InfoCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isSmall = width < 500;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(data.icon, size: 48, color: Colors.redAccent),
          const SizedBox(height: 14),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 16 : 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isSmall ? 13 : 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}