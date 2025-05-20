import 'package:flutter/material.dart';

class Am4 extends StatefulWidget {
  const Am4({super.key});

  @override
  State<Am4> createState() => _Am4State();
}

class _Am4State extends State<Am4> {
  int? selectedIndex;

  final List<Map<String, dynamic>> solutions = [
    {
      'title': 'Mastery of Meta Ads',
      'icon': Icons.directions_car_filled,
      'description': 'Utilize Facebook, Instagram, and the larger Meta network to create customized advertising campaigns that increase engagement, clicks, and conversions.',
      'features': [
        'Audience targeting based on behavior and interests',
        'A/B testing for creative optimization',
        'Real-time campaign analytics dashboard'
      ],
      'image': 'assets/connected_vehicle.png',
    },
    {
      'title': 'Google Ads Dominance',
      'icon': Icons.factory,
      'description': 'When your clients are actively searching, show up at the top of search results. You can precisely acquire high-intent traffic with our high-converting Google Ads strategy.',
      'features': [
        'Keyword research & bid optimization',
        'Conversion tracking setup',
        'Geo-targeted campaigns'
      ],
      'image': 'assets/manufacturing.png',
    },
    {
      'title': 'Optimization of Search Engines (SEO)',
      'icon': Icons.build_circle,
      'description': 'Increase your web presence and be found organically. We help you rank higher and get steady, high-quality traffic with everything from technical SEO to content optimization.',
      'features': [
        'On-page SEO audits & improvements',
        'Link building strategies',
        'Technical SEO (site speed, mobile optimization)'
      ],
      'image': 'assets/diagnostic.png',
    },
    {
      'title': 'Power of Social Media',
      'icon': Icons.store,
      'description': 'To expand your community and increase interaction, we create content that makes users want to scroll and oversee targeted campaigns on social media sites like Facebook, Instagram, LinkedIn, and Twitter.',
      'features': [
        'Content calendar planning',
        'Hashtag strategy development',
        'Cross-platform post scheduling'
      ],
      'image': 'assets/dealership.png',
    },
    {
      'title': 'Linking Content',
      'icon': Icons.memory,
      'description': 'We create useful, audience-driven content, such as blogs, videos, and downloadable guides, that helps clients along their journey and fosters trust.',
      'features': [
        'Blog and article writing',
        'Video scripting and production planning',
        'Ebooks and whitepaper creation'
      ],
      'image': 'assets/autonomous.png',
    },
    {
      'title': 'Email Marketing Strategies That Work',
      'icon': Icons.local_shipping,
      'description': 'Use tailored email campaigns to interact with your audience in order to develop leads, encourage recurring business, and raise lifetime value.',
      'features': [
        'Segmentation and personalization',
        'Automated drip campaigns',
        'A/B testing subject lines and CTAs'
      ],
      'image': 'assets/fleet.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Comprehensive Digital Marketing Services',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            'From paid advertising to organic growth strategies, we offer a full suite of digital marketing services designed to help you achieve your business goals.',
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
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    solutions[selectedIndex!]['description'],
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Key Features:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  ...solutions[selectedIndex!]['features']
                      .map<Widget>((feature) => Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.check_circle,
                                  color: Colors.green, size: 20),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Text(
                                feature,
                                style: const TextStyle(fontSize: 16),
                              )),
                            ],
                          ))
                      .toList(),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      solutions[selectedIndex!]['image'],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // You can add navigation or a link here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Learn More',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}