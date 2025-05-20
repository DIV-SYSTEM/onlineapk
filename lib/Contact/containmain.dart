import 'package:flutter/material.dart';
import 'cform.dart';
import 'whatsnext.dart';
import 'sm.dart';
import 'faq.dart';

class ContainMain extends StatelessWidget {
  const ContainMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width < 700 ? double.infinity : 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ContactForm(),
                SizedBox(height: 24),
                WhatsNextSection(),
                SizedBox(height: 24),
                ContactInfoSection(),
                SizedBox(height: 24),
                FAQSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}