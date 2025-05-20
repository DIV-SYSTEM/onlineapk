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
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxWidth = screenWidth < 700 ? double.infinity : 1000.0;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Center(
          child: Container(
            width: maxWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Web1(scrollToForm: scrollToForm),
                const Am4(),
                const Am7(),
                const MarketingSection(),
                const Am6(),
                
                const Web6(),
                const Web7(),
                const Cloud6(),
                ContactForm(key: _formKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}