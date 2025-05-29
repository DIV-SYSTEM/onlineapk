import 'package:flutter/material.dart';
import 'cloud1.dart';
import 'cloud2.dart';
import 'cloud3.dart';
import 'cloud4.dart';
import 'cloud5.dart';
import 'cloud6.dart';
import 'cloud7.dart';
import '../Screen/screen.dart';

class ContainCloud extends StatelessWidget {
  const ContainCloud({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final GlobalKey cloud7Key = GlobalKey(); // Key for Cloud7

    // Function to scroll to Cloud7
    void scrollToCloud7() {
      final RenderObject? renderObject = cloud7Key.currentContext?.findRenderObject();
      if (renderObject != null) {
        final position = (renderObject as RenderBox).localToGlobal(Offset.zero).dy;
        final scrollPosition = scrollController.offset + position - 100; // Adjust for offset
        scrollController.animateTo(
          scrollPosition,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeInOut,
        );
      }
    }

    return GenericScreen(
      title: 'Cloud Services',
      scrollController: scrollController, // Pass ScrollController
      contentSections: [
        Cloud1(onConsultationTapped: scrollToCloud7), // Pass callback
        const SizedBox(height: 24),
        const Web2(), // Corrected from Web2
        const SizedBox(height: 24),
        const Cloud3(),
        const SizedBox(height: 24),
        const Cloud4(),
        const SizedBox(height: 24),
        const Cloud5(),
        const SizedBox(height: 24),
        const Cloud6(),
        const SizedBox(height: 24),
        Container(
          key: cloud7Key, // Assign key to Cloud7
          child: const ContactForm(),
        ),
      ],
    );
  }
}
