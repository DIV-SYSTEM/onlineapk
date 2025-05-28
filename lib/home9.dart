import 'package:flutter/material.dart';

class Home9 extends StatelessWidget {
  const Home9({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Complete IT Tools perfected to Succeed",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Image.network(
  'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/assets/images/workflow.jpg',
  width: screenWidth * 0.8,
  fit: BoxFit.cover,
  errorBuilder: (context, error, stackTrace) => const Icon(
    Icons.error,
    size: 50,
    color: Colors.red,
  ),
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return const Center(child: CircularProgressIndicator());
  },
),
          const SizedBox(height: 30),
          const Divider(color: Colors.white),
          const SizedBox(height: 20),
          const Text(
            "Workflow for Smooth delivery of products",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),

          // SDLC Phase Cells
          _buildPhase(Icons.assignment, "Project Scopping", "Gather Project requirements to determine a precise scope"),
          _buildPhase(Icons.engineering, "Resource Planning", "Bring in expert talent and manage expenses efficiently"),
          _buildPhase(Icons.attach_money, "Cost Estimation", "Determining approx cost to avoid scope creep"),
          _buildPhase(Icons.report_problem, "Risk Management", "Identifying and solving bottlenecks to ensure success"),
          _buildPhase(Icons.thumb_up_alt, "Success Review", "Review KPIs to gauge project health and success"),
          _buildPhase(Icons.bar_chart, "Performnace Reporting", "Monitor KPIs with detailed analysis"),
          
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "What's your engineering problem",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhase(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
