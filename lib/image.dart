import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {
  final String imageUrl;
  final double aspectRatio;

  const ImageDisplay({
    super.key,
    required this.imageUrl,
    this.aspectRatio = 4 / 3, // Default aspect ratio, adjustable
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: AspectRatio(
          aspectRatio: aspectRatio, // Controls height relative to width
          child: Image.network(
            imageUrl,
            width: screenWidth * 1, // Always 80% of screen width
            fit: BoxFit.contain, // Ensures entire image is visible
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
        ),
      ),
    );
  }
}

// Example usage in a parent widget
class WebExample extends StatelessWidget {
  const WebExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ImageDisplay(
                imageUrl: 'https://raw.githubusercontent.com/Vanshahuja1/One-Aim-App/main/images/workflow.jpg',
                aspectRatio: 4 / 3, // Adjust this if image is clipped or has gaps
              ),
              const SizedBox(height: 20),
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
