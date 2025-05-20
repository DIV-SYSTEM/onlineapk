import 'package:flutter/material.dart';

class Home5 extends StatelessWidget { const Home5({super.key});

@override Widget build(BuildContext context) { final screenWidth = MediaQuery.of(context).size.width; final isMobile = screenWidth < 600;

final industries = [
  {
    'name': 'Healthcare',
    'image': 'assets/images/healthcare.jpg',
    'description':
        'Healthcare is transforming patient care through innovative digital solutions. Our AI-powered platforms streamline diagnostics, enhance treatment plans, and improve patient outcomes while reducing costs and administrative burden.',
  },
  // Add 6 more industry cards here as needed.
];

return Container(
  width: double.infinity,
  color: const Color(0xFFEEEEEE),
  padding: EdgeInsets.symmetric(
    horizontal: isMobile ? 16 : 40,
    vertical: isMobile ? 30 : 60,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'Industries We Elevate With Enterprise AI Development Services',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: isMobile ? 20 : 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        'Because these industries still have numerous unresolved problems, affecting millions of people!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white70,
          fontSize: isMobile ? 14 : 16,
          fontStyle: FontStyle.italic,
        ),
      ),
      const SizedBox(height: 30),

      // Card slider
      SizedBox(
        height: isMobile ? 400 : 420,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: industries.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final industry = industries[index];
            return Container(
              width: isMobile ? screenWidth * 0.9 : 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      industry['image']!,
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          industry['name']!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Transform.rotate(
                          angle: 45 * 3.1416 / 180,
                          child: const Icon(
                            Icons.arrow_upward,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        )
],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    industry['description']!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )
    ],
  ),
);

} }