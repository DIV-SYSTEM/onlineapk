import 'package:flutter/material.dart';
import 'ai1.dart';
import 'ai2.dart';
import 'ai3.dart';
//import 'ai4.dart';
import 'ai5.dart';
import 'ai6.dart';
import 'ai7.dart';
import 'ai8.dart';
import 'package:flutter_app/Service/cloud6.dart';

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
                //AutoMovingCardSection(),
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