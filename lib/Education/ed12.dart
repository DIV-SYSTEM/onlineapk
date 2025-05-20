import 'package:flutter/material.dart';

class Cloud6 extends StatelessWidget {
  const Cloud6({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    final List<String> whatToExpect = [
      '30-minute consultation with a cloud expert',
      'Understanding of your business goals',
      'Discussion of potential cloud strategies',
      'Answers to your cloud-related questions',
    ];

    return Container(
      color: const Color(0xFFF0F4F8),
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: isMobile ? 20 : 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Let's Discuss Your Project",
            style: TextStyle(
              fontSize: isMobile ? 22 : 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Fill out the form below to schedule a free consultation with one of our cloud experts.',
            style: TextStyle(
              fontSize: isMobile ? 14 : 16,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 30),
          Text(
            'Contact Information',
            style: TextStyle(
              fontSize: isMobile ? 20 : 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),

          // Phone
          contactItem(Icons.phone, 'Phone', '+91 9170866775', isMobile),
          // Email
          contactItem(Icons.email, 'Email', 'info@oneaim.com', isMobile),
          // LinkedIn
          contactItem(Icons.business, 'LinkedIn', 'linkedin.com/company/oneaim', isMobile),
          // Instagram
          contactItem(Icons.camera_alt, 'Instagram', 'instagram.com/oneaim', isMobile),
          // YouTube
          contactItem(Icons.ondemand_video, 'YouTube', 'youtube.com/@oneaim', isMobile),
          // Office Address
          contactItem(Icons.location_on, 'Office', '123 Tech Park Ave, San Francisco, CA 94107', isMobile),

          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What to Expect',
                  style: TextStyle(
                    fontSize: isMobile ? 18 : 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                ...whatToExpect.map(
                  (point) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.check, size: 16, color: Colors.white),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            point,
                            style: TextStyle(
                              fontSize: isMobile ? 14 : 16,
                            ),
                          ),
                        ),
                      ],
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


Widget contactItem(IconData icon, String title, String subtitle, bool isMobile) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Icon(icon, color: Colors.white, size: 20),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: isMobile ? 14 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: isMobile ? 12 : 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}