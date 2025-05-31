import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Imports for Services UI classes
import 'Service/containcloud.dart';
import 'Web_Service/containweb.dart';
import 'AI_Service/containai.dart';
import 'DM_Service/containdm.dart';
import 'Contact/containmain.dart';

// Imports for Industries UI classes
import 'Healthcare/containhc.dart';
import 'Automobile/containam.dart';
import 'Telecomm/containtl.dart';
import 'Ecom/containec.dart';
import 'Education/contained.dart';
import 'Fin_Bank/containfb.dart';
import 'Govt_Defense/containgd.dart';
import 'Real/containrs.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'OneAim',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Wrap(
              spacing: 16,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: const [
                HoverIcon(
                  imageUrl: 'https://cdn-icons-png.flaticon.com/512/145/145802.png',
                  url: 'https://www.facebook.com/oneaimitsolutions',
                ),
                HoverIcon(
                  imageUrl: 'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                  url: 'https://www.linkedin.com/company/oneaim-it-solutions/',
                ),
                HoverIcon(
                  imageUrl: 'https://cdn-icons-png.flaticon.com/512/1384/1384063.png',
                  url: 'https://www.instagram.com/oneaimitsolutions?igsh=MWhqemphM2dwdTByNA==',
                ),
                HoverIcon(
                  imageUrl: 'https://cdn-icons-png.flaticon.com/512/1384/1384060.png',
                  url: 'https://www.youtube.com/channel/UCvvyhRvbNtMoRO0zj5Yzycg',
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(color: Colors.white),
          const SizedBox(height: 30),
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    FooterSection(
                      title: "Services",
                      items: [
                        "Cloud Services",
                        "Development Services",
                        "AI-ML Services",
                        "Digital Marketing"
                      ],
                    ),
                    SizedBox(height: 20),
                    FooterSection(
                      title: "Industries",
                      items: [
                        "Healthcare",
                        "Automobile",
                        "ECommerce",
                        "Telecommunication",
                        "Education",
                        "Government and Defense",
                        "Finance and Banking",
                        "Real Estate and Construction"
                      ],
                    ),
                    SizedBox(height: 20),
                    FooterSection(
                      title: "Company",
                      items: [
                        "About Us",
                        "FAQ",
                        "Contact Us"
                      ],
                    ),
                    SizedBox(height: 20),
                    FooterSection(
                      title: "Legal",
                      items: [
                        "Privacy Policy",
                        "Terms and Conditions"
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: FooterSection(
                        title: "Services",
                        items: [
                          "Cloud Services",
                          "Development Services",
                          "AI-ML Services",
                          "Digital Marketing"
                        ],
                      ),
                    ),
                    Expanded(
                      child: FooterSection(
                        title: "Industries",
                        items: [
                          "Healthcare",
                          "Automobile",
                          "ECommerce",
                          "Telecommunication",
                          "Education",
                           "Government and Defense",
                          "Finance and Banking",
                          "Real Estate and Construction"
                        ],
                      ),
                    ),
                    Expanded(
                      child: FooterSection(
                        title: "Company",
                        items: [
                          "About Us",
                          "FAQ",
                          "Contact Us"
                        ],
                      ),
                    ),
                    Expanded(
                      child: FooterSection(
                        title: "Legal",
                        items: [
                          "Privacy Policy",
                          "Terms and Conditions"
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map((item) => HoverLink(text: item)).toList(),
        ],
      ),
    );
  }
}

class HoverLink extends StatefulWidget {
  final String text;

  const HoverLink({super.key, required this.text});

  @override
  State<HoverLink> createState() => _HoverLinkState();
}

class _HoverLinkState extends State<HoverLink> {
  bool _isHovering = false;

  final Map<String, Widget> _pageMap = {
    "Cloud Services": const ContainCloud(),
    "Development Services": const ContainWeb(),
    "AI-ML Services": const ContainAI(),
    "Digital Marketing": const ContainDM(),
    "Contact Us": const ContainMain(),
    "Healthcare": const ContainHC(),
    "Automobile": const ContainAM(),
    "ECommerce": const ContainEC(),
    "Telecommunication": const ContainTL(),
    "Education": const ContainED(),
    "Government and Defense": const ContainGD(),
    "Finance and Banking": const ContainFB(),
    "Real Estate and Construction" : const ContainRS()
  };

  final Map<String, String> _popupContent = {
    "About Us":
        "OneAim IT Solutions is a leading provider of innovative IT services, dedicated to empowering businesses with cutting-edge technology. Founded with a vision to simplify complex digital challenges, we specialize in cloud computing, web development, AI-ML solutions, and digital marketing. Our team of experts delivers tailored solutions across industries like healthcare, e-commerce, education, and manufacturing. With a client-centric approach, we ensure measurable results, driving efficiency, growth, and success. At OneAim, we are committed to excellence, fostering trust, and building long-term partnerships to help our clients thrive in a dynamic digital landscape.",
    "FAQ":
        "Welcome to the OneAim IT Solutions FAQ section. Here are answers to common questions: \n1. **What services do you offer?** We provide cloud services, web and app development, AI-ML solutions, and digital marketing tailored to your business needs. \n2. **Which industries do you serve?** We work with healthcare, e-commerce, education, manufacturing, and more. \n3. **How do you ensure project success?** Our agile methodology, regular updates, and dedicated support guarantee timely delivery and quality. \n4. **Can you customize solutions?** Yes, all our solutions are tailored to meet specific client requirements. \n5. **What is your pricing model?** We offer flexible pricing based on project scope; contact us for a quote. \n6. **How do you handle data security?** We implement industry-standard encryption and comply with GDPR and other regulations. \n7. **What is the typical project timeline?** Timelines vary by project complexity; we provide detailed schedules during consultation. \n8. **Do you offer post-launch support?** Yes, we provide ongoing maintenance and support to ensure long-term success. \nContact us for any further queries!",
    "Privacy Policy":
        "At OneAim IT Solutions, we prioritize your privacy. Our Privacy Policy outlines how we collect, use, and protect your personal information. We gather data such as names, emails, and usage patterns solely to enhance our IT services, including cloud computing, web development, and digital marketing. Data is stored securely with encryption and access controls, complying with GDPR and other regulations. We do not share your information with third parties without consent, except as required by law. You can request data access or deletion at any time. For full details or inquiries, contact our support team.",
    "Terms and Conditions":
        "By engaging with OneAim IT Solutions, you agree to our Terms and Conditions. Our IT services, including cloud solutions, web development, AI-ML, and digital marketing, are provided under agreed contracts outlining scope, timelines, and costs. Clients are responsible for providing accurate project requirements. OneAim retains intellectual property rights for custom solutions until full payment is received. We are not liable for indirect damages or losses. Disputes are resolved through arbitration. For cancellations or modifications, notify us within the agreed period. Contact us for the complete terms or clarification.",
  };

  void _showPopup(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: title == "FAQ"
                ? MediaQuery.of(context).size.width * 0.95
                : MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.85,
          ),
          padding: const EdgeInsets.all(20),
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
                          fontSize: 20,
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
                const SizedBox(height: 12),
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: GestureDetector(
        onTap: () {
          if (_popupContent.containsKey(widget.text)) {
            _showPopup(context, widget.text, _popupContent[widget.text]!);
          } else {
            final page = _pageMap[widget.text];
            if (page != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              );
            }
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            widget.text,
            style: TextStyle(
              color: _isHovering ? Colors.blueAccent : Colors.white70,
              fontSize: 14,
              decoration: _isHovering ? TextDecoration.underline : null,
            ),
          ),
        ),
      ),
    );
  }
}

class HoverIcon extends StatefulWidget {
  final String imageUrl;
  final String url;

  const HoverIcon({super.key, required this.imageUrl, required this.url});

  @override
  State<HoverIcon> createState() => _HoverIconState();
}

class _HoverIconState extends State<HoverIcon> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          final uri = Uri.parse(widget.url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        },
        child: Transform(
          transform: _hovering
              ? (Matrix4.identity()..scale(1.1))
              : Matrix4.identity(),
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(
                color: _hovering ? Colors.white54 : Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                widget.imageUrl,
                width: 28,
                height: 28,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.link, color: Colors.white);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
