import 'package:flutter/material.dart';
import 'Web1.dart';
import 'web2.dart';
import 'web3.dart';
import 'web4.dart';
import 'web5.dart';
import 'web6.dart';
import 'web7.dart';
import 'web8.dart';
import 'package:flutter_app/Service/cloud6.dart';
import '../Screen/screen.dart';
 // Import the GenericScreen template

class ContainWeb extends StatefulWidget {
  const ContainWeb({super.key});

  @override
  State<ContainWeb> createState() => _ContainWebState();
}

class _ContainWebState extends State<ContainWeb> {
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
      title: 'Web Services', // Set the title for the AppBar
      maxWidth: 1000.0, // Match ContainWeb's maxWidth
      scrollController: _scrollController, // Pass the ScrollController
      contentSections: [
        Web1(scrollToForm: scrollToForm), // Pass the scrollToForm callback
        const Am4(),
        const Am7(),
        const AmTcSection(),
        const Am6(),
        const Web6(),
        const Web7(),
        const Cloud6(),
        Cloud7(key: _formKey), // Attach the form key
      ],
    );
  }
}
