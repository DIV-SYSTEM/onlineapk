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
      'icon': Icons.campaign,
      'description': 'Utilize Facebook, Instagram, and the larger Meta network to create customized advertising campaigns that increase engagement, clicks, and conversions.',
      'features': [
        'Audience targeting based on behavior and interests',
        'A/B testing for creative optimization',
        'Real-time campaign analytics dashboard'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/m1.jpg',
      'learnMoreDescription': 'Our Mastery of Meta Ads service leverages the power of Facebook, Instagram, and the Meta network to drive targeted campaigns that boost engagement by 50%. For a fashion brand, we increased conversions by 40% through precise audience segmentation and A/B testing of ad creatives. Real-time analytics dashboards provided actionable insights, optimizing ad spend by 25%. With dynamic retargeting and interest-based targeting, we ensured a 30% higher click-through rate. Our scalable approach, integrated with Meta’s ad manager, delivers measurable ROI, making it ideal for businesses seeking to maximize their social media advertising impact.'
    },
    {
      'title': 'Google Ads Dominance',
      'icon': Icons.search,
      'description': 'When your clients are actively searching, show up at the top of search results. You can precisely acquire high-intent traffic with our high-converting Google Ads strategy.',
      'features': [
        'Keyword research & bid optimization',
        'Conversion tracking setup',
        'Geo-targeted campaigns'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Google%20Ads%205.jpg',
      'learnMoreDescription': 'Google Ads Dominance ensures your brand appears at the top of search results, capturing high-intent traffic. For a local service provider, we boosted lead generation by 60% through advanced keyword research and bid optimization. Geo-targeted campaigns increased local clicks by 45%, while conversion tracking improved ROI by 35%. Our Google Ads strategy, integrated with Google Analytics, reduced cost-per-click by 20% through continuous refinement. Scalable and data-driven, this service is perfect for businesses aiming to dominate search engine marketing and achieve sustainable growth.'
    },
    {
      'title': 'Optimization of Search Engines (SEO)',
      'icon': Icons.trending_up,
      'description': 'Increase your web presence and be found organically. We help you rank higher and get steady, high-quality traffic with everything from technical SEO to content optimization.',
      'features': [
        'On-page SEO audits & improvements',
        'Link building strategies',
        'Technical SEO (site speed, mobile optimization)'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/seo%206.jpg',
      'learnMoreDescription': 'Our SEO Optimization service elevates your online visibility through comprehensive strategies. For an e-commerce client, we achieved first-page rankings for 50+ keywords, increasing organic traffic by 70%. On-page SEO audits and link-building efforts boosted domain authority by 25%, while technical optimizations like site speed and mobile responsiveness improved user experience, reducing bounce rates by 30%. Integrated with tools like SEMrush, our approach ensures long-term growth. This service is ideal for businesses seeking to attract high-quality, organic traffic and establish a strong digital presence.'
    },
    {
      'title': 'Power of Social Media',
      'icon': Icons.share,
      'description': 'To expand your community and increase interaction, we create content that makes users want to scroll and oversee targeted campaigns on social media sites like Facebook, Instagram, LinkedIn, and Twitter.',
      'features': [
        'Content calendar planning',
        'Hashtag strategy development',
        'Cross-platform post scheduling'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Power%20of%20Social%20Media%20.jpg',
      'learnMoreDescription': 'Power of Social Media amplifies your brand’s reach through engaging content and targeted campaigns. For a tech startup, we grew their Instagram following by 80% with strategic hashtag use and a tailored content calendar. Cross-platform scheduling on Facebook, LinkedIn, and Twitter increased engagement by 55%. Our data-driven approach, using tools like Hootsuite, optimized posting times, boosting impressions by 40%. Creative campaigns drove a 25% increase in website visits. This service is perfect for businesses looking to build vibrant communities and enhance social media interaction.'
    },
    {
      'title': 'Linking Content',
      'icon': Icons.article,
      'description': 'We create useful, audience-driven content, such as blogs, videos, and downloadable guides, that helps clients along their journey and fosters trust.',
      'features': [
        'Blog and article writing',
        'Video scripting and production planning',
        'Ebooks and whitepaper creation'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/linking%20content%208.jpg',
      'learnMoreDescription': 'Linking Content builds trust with your audience through high-value, tailored content. For a B2B client, our blog series and whitepapers generated 500+ leads, increasing conversions by 30%. Video scripts and production planning drove a 50% engagement boost on YouTube, while eBooks enhanced brand authority. Our SEO-optimized content improved search rankings by 20%, attracting 40% more organic traffic. Using tools like HubSpot, we align content with customer journeys, ensuring relevance. This service is ideal for businesses aiming to educate, engage, and convert through strategic content marketing.'
    },
    {
      'title': 'Email Marketing Strategies That Work',
      'icon': Icons.email,
      'description': 'Use tailored email campaigns to interact with your audience in order to develop leads, encourage recurring business, and raise lifetime value.',
      'features': [
        'Segmentation and personalization',
        'Automated drip campaigns',
        'A/B testing subject lines and CTAs'
      ],
      'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/email%20markting%209.jpg',
      'learnMoreDescription': 'Email Marketing Strategies That Work deliver personalized campaigns to nurture leads and boost retention. For an e-commerce brand, our automated drip campaigns increased repeat purchases by 45%. Segmentation and A/B testing of subject lines improved open rates by 30%, while personalized content raised click-through rates by 25%. Integrated with Mailchimp, our approach ensures scalability and compliance with GDPR. A client saw a 20% rise in customer lifetime value through targeted promotions. This service is perfect for businesses seeking to strengthen customer relationships and drive revenue through email.'
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
                    child: AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Image.network(
                        solutions[selectedIndex!]['image'],
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[200],
                          child: const Center(child: Text('Image not found')),
                        ),
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(child: CircularProgressIndicator());
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery.of(context).size.width * 0.9,
                                maxHeight: MediaQuery.of(context).size.height * 0.7,
                              ),
                              padding: const EdgeInsets.all(16),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            solutions[selectedIndex!]['title'],
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.close),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      solutions[selectedIndex!]['learnMoreDescription'],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
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
