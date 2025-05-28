import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

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

          // Social Media Icons - Responsive
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
                  url: 'https://www.linkedin.com/company/one-aim-it-solutions/',
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
                    FooterSection(title: "Services", items: [
                      "Cloud Services",
                      "Development Services",
                      "AI-ML Services",
                      "Digital Marketing"
                    ]),
                    SizedBox(height: 20),
                    FooterSection(title: "Industries", items: [
                      "Automobile",
                      "E-Commerce",
                      "Telecommunication",
                      "Education",
                      "Healthcare",
                      "Government & Defense",
                      "Finance & Banking"
                    ]),
                    SizedBox(height: 20),
                    FooterSection(title: "Company", items: [
                      "About",
                      "FAQ",
                      "Blog",
                      "Contact"
                    ]),
                    SizedBox(height: 20),
                    FooterSection(title: "Legal", items: [
                      "Privacy",
                      "Terms and Conditions"
                    ]),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: FooterSection(title: "Services", items: [
                        "Cloud Services",
                        "Development Services",
                        "AI-ML Services",
                        "Digital Marketing"
                      ]),
                    ),
                    Expanded(
                      child: FooterSection(title: "Industries", items: [
                        "Automobile",
                        "E-Commerce",
                        "Telecommunication",
                        "Education",
                        "Healthcare",
                        "Government & Defense",
                        "Finance & Banking"
                      ]),
                    ),
                    Expanded(
                      child: FooterSection(title: "Company", items: [
                        "About",
                        "FAQ",
                        "Blog",
                        "Contact"
                      ]),
                    ),
                    Expanded(
                      child: FooterSection(title: "Legal", items: [
                        "Privacy",
                        "Terms and Conditions"
                      ]),
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

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
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
