import 'package:flutter/material.dart';
import 'cform.dart';
import 'whatsnext.dart';
import 'sm.dart';
import 'faq.dart';
import '../Screen/screen.dart';

class ContainMain extends StatelessWidget {
  const ContainMain({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Contact Us',
      contentSections: const[
        ContactForm(),
        SizedBox(height:24),
        WhatsNextSection(),
        SizedBox(height:24),
        ContactInfoSection(),
        SizedBox(height:24),
        FAQSection(),

      ],
    );
  }
}
