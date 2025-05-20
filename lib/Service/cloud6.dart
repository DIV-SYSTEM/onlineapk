
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Cloud6 extends StatelessWidget {
  const Cloud6({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 48, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Connect with OneAim IT Solutions',
            style: TextStyle(fontSize: isMobile ? 20 : 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Follow our Social Handles to stay updated with the latest news.',
            style: TextStyle(fontSize: isMobile ? 14 : 16, color: Colors.grey[700]),
          ),
          const SizedBox(height: 32),

          buildContactCard(Icons.phone, 'Phone', [
            '+91 89552 49714',
            '+91 74269 95879',
            '+1 (925) 389-4120',
          ]),
          const SizedBox(height: 16),
          buildContactCard(Icons.email, 'Email', ['info@theoneaim.co.in']),
          const SizedBox(height: 16),
          buildContactCard(Icons.location_on, 'Office Address', [
            'No-123, Omega',
            'Anukampa, Near Sanskrit College',
            'Bhankrota, Jaipur'
          ]),
          const SizedBox(height: 32),

          Text(
            'Follow Us on Social Media',
            style: TextStyle(fontSize: isMobile ? 16 : 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSocialLogo(
                'assets/images/youtube.jpeg',
                'YouTube',
                'https://youtu.be/T2MvlqwA4o4?feature=shared',
                isAsset: true,
              ),
              const SizedBox(width: 16),
              buildSocialLogo(
                'https://cdn-icons-png.flaticon.com/512/1384/1384063.png',
                'Instagram',
                'https://www.instagram.com/oneaimitsolutions?igsh=MWhqemphM2dwdTByNA==',
              ),
              const SizedBox(width: 16),
              buildSocialLogo(
                'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                'LinkedIn',
                'https://www.linkedin.com/company/one-aim-it-solutions/',
              ),
              const SizedBox(width: 16),
              buildSocialLogo(
                'https://cdn-icons-png.flaticon.com/512/733/733547.png',
                'Facebook',
                'https://www.facebook.com/yourpage',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildContactCard(IconData icon, String title, List<String> lines) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 24, color: Colors.blueGrey),
        const SizedBox(width: 12),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            ...lines.map((line) => Text(line)).toList(),
          ]),
        ),
      ],
    );
  }

  Widget buildSocialLogo(String imagePath, String label, String url, {bool isAsset = false}) {
    return InkWell(
      onTap: () async {
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          print('Could not launch $url');
        }
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: isAsset
                ? AssetImage(imagePath)
                : NetworkImage(imagePath) as ImageProvider,
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}