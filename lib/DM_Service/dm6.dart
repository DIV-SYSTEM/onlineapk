import 'package:flutter/material.dart';

class Web6 extends StatefulWidget {
  const Web6({super.key});

  @override
  State<Web6> createState() => _Web6State();
}

class _Web6State extends State<Web6> with TickerProviderStateMixin {
  bool showStories = false;

  final List<Map<String, dynamic>> successStories = [
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/6%20E-commerce%20Performance%20Optimization.jpg',
      'domain': 'Retail',
      'title': 'E-commerce Revenue Growth',
      'description': 'Implemented a comprehensive digital marketing strategy for an e-commerce retailer, including Google Shopping ads, Meta retargeting, and SEO. Resulted in a 215% increase in online revenue and 180% growth in ROAS (Return on Ad Spend) within 6 months.',
      'readMoreDescription': 'Our digital marketing strategy for a retail e-commerce platform achieved a 215% revenue increase by leveraging Google Shopping ads, Meta retargeting, and advanced SEO. Using data-driven audience segmentation, we boosted ROAS by 180% in six months. The campaign, integrated with Shopify and Google Analytics, optimized ad spend, reducing cost-per-click by 25%. Personalized retargeting ads drove a 40% uplift in conversions, while SEO efforts secured first-page rankings for 60+ keywords, increasing organic traffic by 50%. This scalable approach empowered the retailer to expand market reach and maximize profitability.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/4.jpg',
      'domain': 'SaaS',
      'title': 'B2B Lead Generation Campaigns',
      'description': 'Developed and executed a multi-channel lead generation campaign for a B2B SaaS company, focusing on LinkedIn Ads, Google Search, and content marketing. Generated 430+ qualified leads in the first quarter, resulting in 28 new enterprise clients.',
      'readMoreDescription': 'Our multi-channel lead generation campaign for a B2B SaaS company delivered 430+ qualified leads in one quarter, securing 28 enterprise clients. By combining LinkedIn Ads, Google Search, and content marketing, we achieved a 35% conversion rate. The campaign, managed through HubSpot, used targeted content like whitepapers to drive engagement, increasing click-through rates by 30%. A/B testing optimized ad creatives, reducing cost-per-lead by 20%. Scalable and integrated with CRM systems, this strategy enhanced lead quality and accelerated sales cycles, positioning the client for sustained growth.'
    },
    {
      'imageUrl': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/5%20Cloud%20Migration1.jpg',
      'domain': 'Healthcare',
      'title': 'Local Business Visibility Boost',
      'description': 'Implemented local SEO and Google Business Profile optimization for a healthcare provider with multiple locations. Achieved first-page rankings for 45 high-value keywords and increased organic traffic by 320%, resulting in a 75% increase in appointment bookings.',
      'readMoreDescription': 'Our local SEO and Google Business Profile optimization for a healthcare provider boosted organic traffic by 320%, driving a 75% increase in appointment bookings. We secured first-page rankings for 45 high-value keywords through on-page SEO and localized content strategies. Integrated with Google My Business, the solution improved visibility across multiple locations, increasing click-through rates by 40%. Regular profile updates and review management enhanced patient trust, lifting engagement by 25%. This scalable approach, supported by SEMrush, ensured sustained visibility and growth for the healthcare provider’s digital presence.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F2),
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 30 : 50,
        horizontal: isMobile ? 16 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Success Stories',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'See how our digital marketing strategies have helped businesses like yours achieve remarkable results.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                showStories = !showStories;
              });
            },
            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
            label: const Text(
              'Check Our Success Stories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 5,
              shadowColor: Colors.deepPurpleAccent.withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 30),
          ClipRect(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOutCubic,
              reverseDuration: const Duration(milliseconds: 600),
              child: Align(
                alignment: Alignment.center,
                heightFactor: showStories ? 1.0 : 0.0,
                child: AnimatedOpacity(
                  opacity: showStories ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                  child: Column(
                    children: List.generate(
                      successStories.length,
                      (index) => successCard(
                        context: context,
                        imageUrl: successStories[index]['imageUrl'],
                        domain: successStories[index]['domain'],
                        title: successStories[index]['title'],
                        description: successStories[index]['description'],
                        readMoreDescription: successStories[index]['readMoreDescription'],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget successCard({
    required BuildContext context,
    required String imageUrl,
    required String domain,
    required String title,
    required String description,
    required String readMoreDescription,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: isMobile ? 160 : 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.broken_image,
                size: 100,
                color: Colors.grey,
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              domain,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
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
                                    title,
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
                              readMoreDescription,
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
              child: const Text(
                'Read More',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
