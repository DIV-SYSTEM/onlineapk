import 'package:flutter/material.dart';
import 'ai1.dart';
import 'ai2.dart';
import 'ai3.dart';
//import 'ai4.dart';
import 'ai5.dart';
import 'ai6.dart';
import 'ai7.dart';
import 'ai8.dart';

import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainAI extends StatefulWidget {
  const ContainAI({super.key});

  @override
  State<ContainAI> createState() => _ContainAIState();
}

class _ContainAIState extends State<ContainAI> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _formKey = GlobalKey();

  void scrollToForm() {
    Scrollable.ensureVisible(
      _formKey.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'AI Services', // Set the title for the AppBar
      maxWidth: 1000.0, // Match ContainAI's maxWidth
      scrollController: _scrollController, // Pass the ScrollController
      contentSections: [
        Web1(scrollToForm: scrollToForm), // Replaced Web1 with AI1
        const Am4(), // Replaced Am4 with AI4
        const Am7(), // Replaced Am7 with AI7
        //AutoMovingCardSection(), // Replaced AutoMovingCardSection with AI3 (assuming it's a card section)
        const Am6(), // Replaced Am6 with AI6
        const Web6(), // Replaced Web6 with AI5
        const Web7(), // Replaced Web7 with AI8
        const Cloud6(),
        ContactForm(key: _formKey), // Attach the form key
      ],
    );
  }
}
