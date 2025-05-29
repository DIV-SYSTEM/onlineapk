import 'package:flutter/material.dart';

class Home8 extends StatelessWidget {
  const Home8({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final List<Map<String, dynamic>> articles = [
      {
        'title': 'Edge Computing in Green IoT: Reducing Energy Use in Data Processing',
        'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/Edge%20Computing%20in%20Green%20Iot%20%20Reducing%20Energy%20Use%20in%20Data%20Processing.jpg',
        'description': 'Edge computing in Green IoT processes data closer to IoT devices, minimizing energy-intensive cloud transfers. By reducing latency and optimizing data handling, it lowers energy consumption, making IoT systems more sustainable for smart cities and industries.',
        'date': 'Mar 25, 2025',
      },
      {
        'title': 'Operationalizing Data for Immediate Business Decisions with Reverse ETL',
        'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20Reverse%20ETL%20Operationalizing%20Data%20for%20Real-Time%20Business%20Decisions.jpg',
        'description': 'Reverse ETL syncs data from warehouses to operational tools, enabling real-time business decisions. It empowers teams with fresh, actionable insights, streamlining workflows and boosting efficiency in marketing, sales, and customer support.',
        'date': 'Mar 25, 2025',
      },
      {
        'title': 'Next-Level Fraud Detection with Generative AI Intelligence',
        'image': 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/1%20Next-Level%20Fraud%20Detection%20with%20Generative%20AI%20Intelligence.jpg',
        'description': 'Generative AI enhances fraud detection by modeling complex patterns and predicting anomalies in real time. It adapts to evolving threats, improving accuracy and reducing false positives in financial transactions and e-commerce.',
        'date': 'Mar 25, 2025',
      },
    ];

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Featured Insights",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Stay updated with the latest trends and deep dives in tech, innovation, and industry insights.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () {
                // Handle navigation or action
              },
              child: const Text(
                "Over 20+ articles on tech and talent",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: List.generate(
                articles.length,
                (index) => _buildInnovationCard(
                  context,
                  screenWidth,
                  articles[index]['title'],
                  articles[index]['image'],
                  articles[index]['description'],
                  articles[index]['date'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildInnovationCard(
    BuildContext context,
    double screenWidth,
    String title,
    String imageUrl,
    String description,
    String date,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: screenWidth * 0.95,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 240, // Increased from 180 to 240
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
              color: Colors.grey[300],
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey[300],
                child: const Center(child: Text('Image not found')),
              ),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 18, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text(
                      date,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                                description,
                                style: const TextStyle(fontSize: 14, color: Colors.black87),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: const Text(
                    'Read More',
                    style: TextStyle(fontSize: 14, color: Colors.white),
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
