import 'package:flutter/material.dart';
import 'tl1.dart';
import 'tl2.dart';
import 'tl3.dart';
import 'tl4.dart';
import 'tl5.dart';
import 'tl6.dart';
import 'tl7.dart';
import 'tl8.dart';
import 'tl9.dart';
import 'tl10.dart';
import 'tl11.dart';
import 'tl12.dart';
import 'tl13.dart';
import 'tl14.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainTL extends StatelessWidget {
  const ContainTL({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Telecommunication Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainTL's maxWidth
      contentSections: const [
        AM1(),
        AM2Section(),
        AM3(),
        Am4(),
        AM5(),
        Am6(),
        Am7(),
        AM8(),
        //AM9(),
        AmTcSection(),
        Telecom4(),
        Cloud5(),
        ContactInfoSection(),
        ContactForm(),
      ],
    );
  }
}
