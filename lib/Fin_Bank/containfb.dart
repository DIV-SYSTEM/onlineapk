import 'package:flutter/material.dart';
import 'fb1.dart';
import 'fb2.dart';
import 'fb3.dart';
import 'fb4.dart';
import 'fb5.dart';
import 'fb6.dart';
import 'fb7.dart';
import 'fb8.dart';
import 'fb9.dart';
import 'fb10.dart';
import 'fb11.dart';
//import 'fb12.dart';
import 'fb13.dart';
import 'fb14.dart';
import '../Service/cloud6.dart';
import '../Screen/screen.dart'; // Import GenericScreen from Screen folder

class ContainFB extends StatelessWidget {
  const ContainFB({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericScreen(
      title: 'Finance & Banking Services', // Set the title for the AppBar
      maxWidth: 600.0, // Match ContainFB's maxWidth
      contentSections: const [
        AM1(),
        AM2Section(),
        AM3(),
        Am4(),
        AM5(),
        Am6(),
        Am7(),
        AM8(),
        AM9(),
        FinTechSection(),
        Cloud4(),
        Cloud5(),
        Cloud6(),
        ContactForm(),
      ],
    );
  }
}
