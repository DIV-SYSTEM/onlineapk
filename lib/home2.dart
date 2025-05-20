import 'package:flutter/material.dart';

class ServiceCardsSection extends StatefulWidget {
  const ServiceCardsSection({super.key});

  @override
  _ServiceCardsSectionState createState() => _ServiceCardsSectionState();
}

class _ServiceCardsSectionState extends State<ServiceCardsSection> {
  String? expandedTitle;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth > 700;
    final horizontalPadding = screenWidth * 0.05;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
      child: Column(
        children: [
          Text(
            "Expert-Led Services, Tailored for Your Enterprise",
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Discover how our specialized services unlock growth, efficiency, and innovation across digital, AI, cloud, and development landscapes.",
            style: TextStyle(
              fontSize: screenWidth * 0.035,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          isWideScreen
              ? Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: serviceData.map((service) {
                    return SizedBox(
                      width: (screenWidth - horizontalPadding * 2 - 20) / 2,
                      child: buildServiceCard(service, screenWidth),
                    );
                  }).toList(),
                )
              : Column(
                  children: serviceData
                      .map((service) => buildServiceCard(service, screenWidth))
                      .toList(),
                ),
        ],
      ),
    );
  }

  Widget buildServiceCard(Map<String, dynamic> service, double screenWidth) {
    final isExpanded = expandedTitle == service['title'];

    return GestureDetector(
      onTap: () {
        setState(() {
          expandedTitle = isExpanded ? null : service['title'];
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(20),
        transform:
            isExpanded ? (Matrix4.identity()..scale(1.02)) : Matrix4.identity(),
        decoration: BoxDecoration(
          color: isExpanded ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  service['icon'],
                  color: isExpanded ? Colors.white : Colors.black87,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    service['title'],
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                      color: isExpanded ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              service['description'],
              style: TextStyle(
                fontSize: screenWidth * 0.035,
                color: isExpanded ? Colors.white70 : Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  isExpanded ? "Show Less" : "Read More",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.greenAccent,
                ),
              ],
            ),
            AnimatedCrossFade(
              firstChild: SizedBox.shrink(),
              secondChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  ...List.generate(
                    (service['features'] as List).length,
                    (i) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check_circle,
                              size: 18, color: Colors.greenAccent),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              service['features'][i],
                              style: TextStyle(
                                  fontSize: screenWidth * 0.035,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Explore Service',
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                        Icon(Icons.arrow_right_alt, color: Colors.greenAccent),
                      ],
                    ),
                  ),
                ],
              ),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> serviceData = [
  {
    "title": "Empowering Enterprises Through Modern Cloud Services",
    "description":
        "Revolutionize your IT infrastructure with cutting-edge cloud technologies, strategic planning, and seamless migration.",
    "features": [
      "Cloud Planning & Consulting",
      "Cloud Migration Services",
      "Cloud Monitoring & Control",
      "Multi-Cloud & Hybrid Solutions",
      "Cloud Security & Compliance",
      "Backup & Disaster Recovery",
      "DevOps & Cloud Automation"
    ],
    "href": "/cloud-services",
    "icon": Icons.cloud,
  },
  {
    "title": "Robust, Scalable, and Elegant Web Solutions",
    "description":
        "Build responsive websites and enterprise web applications with stunning UI/UX and solid backend engineering.",
    "features": [
      "Web Application Development",
      "Custom Website Solutions",
      "UI/UX Research & Design",
      "E-Commerce Platforms",
      "API Development & Integration",
      "Frontend Engineering",
      "Backend Architecture"
    ],
    "href": "/development-services",
    "icon": Icons.web,
  },
  {
    "title": "AI-Powered Transformation for Forward-Thinking Businesses",
    "description":
        "Accelerate innovation with machine learning, NLP, computer vision, and MLOps solutions tailored to your goals.",
    "features": [
      "AI Strategy & Consulting",
      "Machine Learning Model Development",
      "Natural Language Processing (NLP)",
      "Computer Vision Applications",
      "Predictive Analytics",
      "AI-Powered Business Intelligence",
      "Model Deployment & MLOps"
    ],
    "href": "/ai-ml-services",
    "icon": Icons.computer,
  },
  {
    "title": "Next-Level Digital Marketing That Drives Measurable Growth",
    "description":
        "Grow your digital presence with performance marketing, SEO, ad campaigns, and data-driven strategies.",
    "features": [
      "Meta Ads Mastery",
      "Google Ads Optimization",
      "SEO & SERP Management",
      "Social Media Strategy",
      "Content Linking & Strategy",
      "Email Campaign Automation"
    ],
    "href": "/digital-marketing",
    "icon": Icons.ad_units,
  },
  {
    "title": "Custom Technology Solutions Tailored for Every Industry",
    "description":
        "We bring deep domain expertise to healthcare, finance, retail, education, defense, and more.",
    "features": [
      "Automobile",
      "Telecommunications",
      "E-Commerce",
      "Education",
      "Finance & Banking",
      "Healthcare",
      "Government & Defense"
    ],
    "href": "/industries",
    "icon": Icons.business,
  },
];
