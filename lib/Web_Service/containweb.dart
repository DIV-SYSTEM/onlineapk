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
                const AmTcSection(),
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