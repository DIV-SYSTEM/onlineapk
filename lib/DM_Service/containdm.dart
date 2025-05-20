import 'package:flutter/material.dart';
import 'dm1.dart';
import 'dm2.dart';
import 'dm3.dart';
import 'dm4.dart';
import 'dm5.dart';
import 'dm6.dart';
import 'dm7.dart';
import 'dm8.dart';
import 'package:flutter_app/Service/cloud6.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainDM extends StatefulWidget {
  const ContainDM({super.key});

  @override
  State<ContainDM> createState() => _ContainDMState();
}

class _ContainDMState extends State<ContainDM> {
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
      title: 'Digital Marketing Services', // Set the title for the AppBar
      maxWidth: 1000.0, // Match ContainDM's maxWidth
      scrollController: _scrollController, // Pass the ScrollController
      contentSections: [
        Web1(scrollToForm: scrollToForm), // Reused widget
        const Am4(), // Reused widget
        const Am7(), // Reused widget
        const MarketingSection(), // Reused widget
        const Am6(), // Reused widget
        const Web6(), // Reused widget
        const Web7(), // Reused widget
        const Cloud6(),
        ContactForm(key: _formKey), // Attach the form key
      ],
    );
  }
}
